# Contributing

Thanks for helping keep this list accurate. Open a PR or an issue.

## What belongs

A **harness** is a runnable agent engine that supplies the model/tool feedback loop and meaningful defaults for tools, context, state, or agent behavior — as a CLI, an embeddable engine, or an editor-integrated implementation.

In scope:
- Actively maintained projects (a default-branch commit within the last few months)
- Open-source or source-available code — say so in the entry if the license is non-OSI or commercially restricted
- Substantial forks, labeled with their lineage

Out of scope:
- Generic framework primitives, model gateways, sandboxes, evaluation runners, skills collections
- Wrappers that merely invoke another harness
- UIs, dashboards, and orchestrators that drive harnesses rather than implement one (see [awesome-agent-orchestrators](https://github.com/andyrewlee/awesome-agent-orchestrators) for those)

## Entry format

```markdown
- [Name](https://github.com/owner/repo) - One-sentence differentiator. Lineage or license note if needed.
```

- Entries are alphabetical within a section, case-insensitive
- Identify the actual engine, not just the app or marketing name
- Note canonical repository moves, renames, and upstream lineage
- Mark experimental status or unusual caveats plainly
- If a project goes quiet, it moves to **Resting** rather than being deleted

Run `npx awesome-lint` before submitting; CI enforces it.
