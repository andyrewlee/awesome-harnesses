# Awesome Harnesses [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

A curated list of open source and source available agent harnesses — runnable engines that own the model/tool feedback loop, with defaults for tools, context, memory, and approvals.

Frameworks, gateways, sandboxes, eval runners, and thin wrappers around another harness are out of scope. Substantial forks are in, with lineage noted.

## How to choose

- **Write code from a terminal.** [Coding — Terminal & CLI](#coding--terminal--cli) — the largest group.
- **Stay in your editor.** [Coding — Editor-Integrated](#coding--editor-integrated) — the agent ships inside VS Code, Zed, or an extension host.
- **Embed the loop in your own software.** [General-Purpose & SDK-First](#general-purpose--sdk-first) — engines you drive from Python, TypeScript, or YAML rather than a chat box.
- **Read or benchmark a minimal loop.** [Research & Reference](#research--reference) — small, legible implementations built for experiments.
- **Act on a browser, desktop, or infrastructure.** [Browser, Computer-Use & Ops](#browser-computer-use--ops).

## Coding — Terminal & CLI

Run from a shell to read, edit, and execute code.

- [Aider](https://github.com/Aider-AI/aider) - Git-aware terminal pair-programming agent with code editing and test-driven iteration.
- [Autohand Code CLI](https://github.com/autohandai/code-cli) - Terminal-native coding agent for planning, reflecting, and remembering, with an interactive REPL and editor integrations. Source-available under Apache-2.0 plus a commercial rider for organizations over $5M ARR.
- [Codewhale](https://github.com/Hmbown/Codewhale) - Rust coding-agent runtime with local or hosted model support, tools, permissions, and multiple client surfaces. Formerly DeepSeek-TUI; now provider-neutral.
- [Codex](https://github.com/openai/codex) - OpenAI's local coding-agent engine and CLI, with source for the model/tool execution loop.
- [Crush](https://github.com/charmbracelet/crush) - Charm's terminal coding agent: LSP-enhanced, multi-provider, with MCP support and a Bash-style config interpreter. Source-available under FSL-1.1-MIT.
- [Deep Code CLI](https://github.com/lessweb/deepcode-cli) - DeepSeek-focused terminal coding agent with skills and MCP integration. Community project, not an official DeepSeek harness.
- [DeepSeek Harness](https://github.com/deepseek-ai/deepseek-harness) - DeepSeek's official agent harness (`dsh`) on an everything-is-a-plugin architecture over vendored Cordis, with CLI, web UI, Python SDK, and Claude Code/Codex hook bridges.
- [ForgeCode](https://github.com/tailcallhq/forgecode) - Multi-model terminal coding agent with configurable agent workflows. Formerly antinomyhq/forge.
- [Freebuff](https://github.com/CodebuffAI/freebuff) - Coding harness using specialized agents for context gathering, implementation, and review, built on the Codebuff agent runtime and SDK.
- [fx](https://github.com/vercel-labs/fx) - Vercel Labs' coding-agent harness in Zig: a model-agnostic ~8 MiB binary with a Unix-shell-style CLI, an ACP surface, and WebAssembly builds for embedding in JS hosts. Upstream marks it experimental.
- [Gemini CLI](https://github.com/google-gemini/gemini-cli) - Google's terminal agent with coding, shell, and external-tool workflows.
- [gptme](https://github.com/gptme/gptme) - Terminal agent with code execution, shell tools, and extensibility for broader agent workflows.
- [Grok Build](https://github.com/xai-org/grok-build) - Rust coding-agent runtime with terminal, headless, and Agent Client Protocol interfaces. Source is periodically synced from an internal monorepo; upstream doesn't take external contributions.
- [Hermes Agent](https://github.com/NousResearch/hermes-agent) - Persistent general-purpose agent with memory, learned skills, and terminal or messaging interfaces.
- [Kimi Code CLI](https://github.com/MoonshotAI/kimi-cli) - Moonshot's command-line coding agent and underlying execution engine.
- [Letta Code](https://github.com/letta-ai/letta-code) - Stateful agent harness centered on persistent identity, memory, skills, and context management.
- [Mastra Code](https://github.com/mastra-ai/mastra) - Ready-to-run terminal harness with modes, persisted threads, subagents, and observational memory. Apache-2.0 except the `ee/` directories.
- [Mistral Vibe](https://github.com/mistralai/mistral-vibe) - Mistral's terminal coding agent, designed around a relatively small CLI workflow.
- [Neovate Code](https://github.com/neovateai/neovate-code) - Model-flexible coding agent with interactive and headless execution.
- [Octofriend](https://github.com/synthetic-lab/octofriend) - A small terminal-first coding agent, also called Octo.
- [Oh My Pi](https://github.com/can1357/oh-my-pi) - Substantial Pi fork (a.k.a. OMP) with additional coding tools, language-server integration, and subagents.
- [OpenCode](https://github.com/anomalyco/opencode) - Model-flexible coding harness with terminal and other client surfaces. Formerly sst/opencode; not the older opencode-ai project that became Crush.
- [Open Interpreter](https://github.com/openinterpreter/openinterpreter) - The Rust successor to the original Python project: a Codex-derived coding harness with model-specific harness emulation and ACP support.
- [Pi](https://github.com/earendil-works/pi) - Modular coding harness: agent runtime, model integration, and terminal interface. Formerly badlogic/pi-mono.
- [Plandex](https://github.com/plandex-ai/plandex) - Terminal agent for large, multi-step code changes with planning and cumulative change review.
- [Prime Agent](https://github.com/PrimeIntellect-ai/prime-agent) - Long-horizon agent built on Pi, with a persistent Python REPL, recursive subagents, and persistent memory/skills.
- [Qwen Code](https://github.com/QwenLM/qwen-code) - Qwen-oriented coding harness with terminal and other integration surfaces.
- [RA.Aid](https://github.com/ai-christianson/RA.Aid) - Software-development agent combining research, planning, and implementation workflows.
- [VT Code](https://github.com/vinhnx/VTCode) - Rust terminal coding harness with configurable model and tool integrations.

## Coding — Editor-Integrated

The agent lives inside the editor or extension host.

- [Cline](https://github.com/cline/cline) - Coding-agent engine with file editing, terminal/browser tools, and human approval workflows.
- [Kilo Code](https://github.com/Kilo-Org/kilocode) - Coding-agent distribution with terminal and editor experiences; the current CLI is an OpenCode fork.
- [Pochi](https://github.com/TabbyML/pochi) - Open-source coding agent integrated into VS Code.
- [VS Code local agent](https://github.com/microsoft/vscode) - The open-source local editor agent inside VS Code — Copilot Chat development moved into the main repo — distinct from GitHub's hosted agent services.
- [Zed Agent](https://github.com/zed-industries/zed) - Zed's built-in first-party coding agent with tools and context management; distinct from the external ACP agents Zed can host. Agent crate is GPL-3.0-or-later.
- [Zoo Code](https://github.com/Zoo-Code-Org/Zoo-Code) - Community-maintained continuation of Roo Code for agentic coding in the editor.

## General-Purpose & SDK-First

Engines you embed and drive from Python, TypeScript, or YAML rather than a terminal chat.

- [Agent Zero](https://github.com/agent0ai/agent-zero) - General-purpose runnable agent with computer tools, memory, and delegation.
- [Deep Agents](https://github.com/langchain-ai/deepagents) - Ready-to-run harness with planning, filesystem tools, subagents, context management, and human approval hooks. Python, with a TypeScript sibling at [deepagentsjs](https://github.com/langchain-ai/deepagentsjs).
- [Dexto](https://github.com/truffle-ai/dexto) - Configuration-driven agent harness — define agents in YAML, swap models and tools without touching code — shipping with a production-ready coding agent over CLI and web UI. Source-available under Elastic-2.0.
- [Docker Agent](https://github.com/docker/docker-agent) - Declarative agent runtime with YAML configuration, tools, and multi-agent workflows. Formerly cagent.
- [nanobot](https://github.com/HKUDS/nanobot) - Lightweight Python personal-agent implementation with its own tool loop, memory, and integrations.
- [Open Interpreter (classic Python)](https://github.com/endolith/open-interpreter) - Community continuation of the original local code-execution agent for Python, shell, and other languages. A distinct implementation from the Rust rewrite; AGPL-3.0.
- [OpenHands Software Agent SDK](https://github.com/OpenHands/software-agent-sdk) - The execution engine behind OpenHands: agent conversations, tools, local/remote workspaces, and server APIs.
- [OpenManus](https://github.com/FoundationAgents/OpenManus) - General-purpose agent implementation combining planning, tools, and browser-oriented tasks.

## Research & Reference

Small, legible implementations built for experiments and evaluation.

- [Mini Agent](https://github.com/MiniMax-AI/Mini-Agent) - MiniMax's reference agent with a complete execution loop, filesystem/shell tools, memory, context summarization, skills, and MCP.
- [mini-SWE-agent](https://github.com/SWE-agent/mini-swe-agent) - Minimal shell-centric software-engineering agent; a readable baseline harness that SWE-agent's maintainers now develop instead.
- [Terminus 2](https://github.com/harbor-framework/harbor) - Terminal-oriented agent implementation used for controlled agent evaluation, inside the Harbor framework.
- [Trae Agent](https://github.com/bytedance/trae-agent) - ByteDance's software-engineering agent with modular components and trajectory logging for experimentation.

## Browser, Computer-Use & Ops

Harnesses whose loop acts on web pages, desktops, or infrastructure rather than a repo.

- [Agent S](https://github.com/simular-ai/Agent-S) - Computer-use agent that plans and acts through graphical interfaces.
- [Agent TARS / UI-TARS Desktop](https://github.com/bytedance/UI-TARS-desktop) - A family of agent implementations for browser and desktop/computer interaction, in one monorepo.
- [Browser Use](https://github.com/browser-use/browser-use) - Browser-specialized agent loop for choosing and executing actions across web tasks.
- [Stakpak](https://github.com/stakpak/agent) - Infrastructure- and DevOps-focused agent for operational tasks.

## Not Included

Names you'll look for here, and why they're absent.

- [Claude Code](https://github.com/anthropics/claude-code) - Proprietary; the public repo carries an all-rights-reserved notice and Anthropic commercial terms.
- [Continue](https://github.com/continuedev/continue) - Repository is read-only and unmaintained.
- [Roo Code](https://github.com/RooCodeInc/Roo-Code) - Extension shut down; users are pointed to Zoo Code and Cline.
- [SWE-agent](https://github.com/SWE-agent/SWE-agent) - Superseded; the maintainers recommend mini-SWE-agent.
