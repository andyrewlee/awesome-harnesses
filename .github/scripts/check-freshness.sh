#!/usr/bin/env bash
# Checks every GitHub repo linked in README.md for staleness, archiving, and
# renames. Main-roster repos (before "## Resting") are flagged when quiet;
# Resting repos are flagged when they come back to life. Anything under
# "## Not Included" is intentionally dead or proprietary and skipped.
# Writes findings to freshness-report.md; empty file means all clear.
set -euo pipefail

STALE_DAYS=${STALE_DAYS:-90}
README=${README:-README.md}
SELF="andyrewlee/awesome-harnesses"
OUT=freshness-report.md
: > "$OUT"

repos_in() {
	grep -oE 'github\.com/[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+' \
		| sed 's|github\.com/||' \
		| sort -u \
		| grep -vFx "$SELF" || true
}

main_repos=$(awk '/^## Resting/{stop=1} !stop' "$README" | repos_in)
resting_repos=$(awk '/^## Resting/{f=1} /^## Not Included/{f=0} f' "$README" | repos_in)

days_since() {
	local ts
	ts=$(date -d "$1" +%s 2>/dev/null || date -jf "%Y-%m-%dT%H:%M:%SZ" "$1" +%s)
	echo $(( ($(date +%s) - ts) / 86400 ))
}

moved=""
archived=""
stale=""
revived=""
failed=""

for repo in $main_repos; do
	info=$(gh api "repos/$repo" 2>/dev/null) || {
		failed+="- **$repo** — repo lookup failed (deleted or renamed?)\n"
		continue
	}
	full=$(jq -r '.full_name' <<<"$info")
	[ "$full" = "$repo" ] || moved+="- **$repo** — now lives at \`$full\`\n"
	if [ "$(jq -r '.archived' <<<"$info")" = "true" ]; then
		archived+="- **$full** — archived; candidate for Not Included\n"
		continue
	fi
	last=$(gh api "repos/$full/commits?per_page=1" --jq '.[0].commit.committer.date' 2>/dev/null) || continue
	days=$(days_since "$last")
	if [ "$days" -gt "$STALE_DAYS" ]; then
		stale+="- **$full** — last commit ${last%%T*} (${days}d ago); candidate for Resting\n"
	fi
done

for repo in $resting_repos; do
	info=$(gh api "repos/$repo" 2>/dev/null) || continue
	if [ "$(jq -r '.archived' <<<"$info")" = "true" ]; then
		archived+="- **$repo** — archived; candidate for Not Included\n"
		continue
	fi
	last=$(gh api "repos/$repo/commits?per_page=1" --jq '.[0].commit.committer.date' 2>/dev/null) || continue
	days=$(days_since "$last")
	if [ "$days" -le "$STALE_DAYS" ]; then
		revived+="- **$repo** — active again (last commit ${last%%T*}); move back up\n"
	fi
done

{
	echo "## Harness freshness — $(date +%F)"
	echo
	echo "Bar: no default-branch commit in ${STALE_DAYS} days."
} >> "$OUT"

section() {
	[ -z "$2" ] && return
	printf '\n### %s\n\n' "$1" >> "$OUT"
	printf '%b' "$2" >> "$OUT"
}

section "Moved or renamed" "$moved"
section "Archived" "$archived"
section "Stale (move to Resting)" "$stale"
section "Revived (promote from Resting)" "$revived"
section "Lookup failures" "$failed"

if [ -s "$OUT" ] && [ "$(wc -l < "$OUT")" -le 4 ]; then
	: > "$OUT"
fi

[ -s "$OUT" ] && echo "Findings written to $OUT" || echo "All linked repos look fresh."
