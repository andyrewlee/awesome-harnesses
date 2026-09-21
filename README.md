# Awesome Harnesses [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> A curated list of active, open-source and source-available agent harnesses.

A **harness** is a runnable agent engine that supplies the model/tool feedback loop and meaningful defaults for tools, context, state, or agent behavior — as a CLI, an embeddable engine, or an editor-integrated implementation.

Not included: generic framework primitives, model gateways, sandboxes, evaluation runners, skills collections, thin wrappers around another harness, and proprietary or unmaintained projects. Substantial forks are included and labeled with their lineage. Open-source code does not imply free inference or access to a vendor's hosted services.

## Contents

- [Coding & Terminal](#coding--terminal)
- [SDK-First & General-Purpose](#sdk-first--general-purpose)
- [IDE-Integrated](#ide-integrated)
- [Research & Reference](#research--reference)
- [Browser, Computer-Use & Ops](#browser-computer-use--ops)
- [Source-Available](#source-available)
- [Not Included](#not-included)
- [Contributing](#contributing)

## Coding & Terminal

- [Codex](https://github.com/openai/codex) - OpenAI's local coding-agent engine and CLI, with source for the model/tool execution loop. (Apache-2.0)
- [Prime Agent](https://github.com/PrimeIntellect-ai/prime-agent) - Long-horizon agent with a persistent Python REPL, recursive subagents, and persistent memory/skills. Pi-derived. (MIT)
- [Pi](https://github.com/earendil-works/pi) - Modular coding harness: agent runtime, model integration, and terminal interface. Formerly badlogic/pi-mono. (MIT)
- [Oh My Pi](https://github.com/can1357/oh-my-pi) - Substantial Pi fork (a.k.a. OMP) with additional coding tools, language-server integration, and subagents. (MIT)
- [OpenCode](https://github.com/anomalyco/opencode) - Model-flexible coding harness with terminal and other client surfaces. Formerly sst/opencode; not the older opencode-ai project that became Crush. (MIT)
- [Goose](https://github.com/aaif-goose/goose) - Extensible general-purpose developer agent that edits files, executes commands, and connects to tools. Formerly block/goose. (Apache-2.0)
- [Gemini CLI](https://github.com/google-gemini/gemini-cli) - Google's terminal agent with coding, shell, and external-tool workflows. (Apache-2.0)
- [Qwen Code](https://github.com/QwenLM/qwen-code) - Qwen-oriented coding harness with terminal and other integration surfaces. (Apache-2.0)
- [Kimi Code CLI](https://github.com/MoonshotAI/kimi-cli) - Moonshot's command-line coding agent and underlying execution engine. (Apache-2.0)
- [Mistral Vibe](https://github.com/mistralai/mistral-vibe) - Mistral's terminal coding agent, designed around a relatively small CLI workflow. (Apache-2.0)
- [Grok Build](https://github.com/xai-org/grok-build) - Rust coding-agent runtime with terminal, headless, and Agent Client Protocol interfaces. Source is periodically synced from an internal monorepo; upstream does not accept external contributions. (Apache-2.0)
- [Hermes Agent](https://github.com/NousResearch/hermes-agent) - Persistent general-purpose agent with memory, learned skills, and terminal or messaging interfaces. (MIT)
- [Letta Code](https://github.com/letta-ai/letta-code) - Stateful agent harness centered on persistent identity, memory, skills, and context management. (Apache-2.0)
- [Aider](https://github.com/Aider-AI/aider) - Git-aware terminal pair-programming agent with code editing and test-driven iteration. (Apache-2.0)
- [ForgeCode](https://github.com/tailcallhq/forgecode) - Multi-model terminal coding agent with configurable agent workflows. Formerly antinomyhq/forge. (Apache-2.0)
- [Freebuff](https://github.com/CodebuffAI/freebuff) - Coding harness using specialized agents for context gathering, implementation, and review; built on the Codebuff agent runtime and SDK. (Apache-2.0)
- [VT Code](https://github.com/vinhnx/VTCode) - Rust terminal coding harness with configurable model and tool integrations. (MIT OR Apache-2.0)
- [Octofriend](https://github.com/synthetic-lab/octofriend) - A small terminal-first coding agent, also called Octo. (MIT)
- [RA.Aid](https://github.com/ai-christianson/RA.Aid) - Software-development agent combining research, planning, and implementation workflows. (Apache-2.0)
- [gptme](https://github.com/gptme/gptme) - Terminal agent with code execution, shell tools, and extensibility for broader agent workflows. (MIT)
- [Open Interpreter (Rust)](https://github.com/openinterpreter/openinterpreter) - Codex-derived coding harness with model-specific harness emulation and ACP support; the successor project to the original Python implementation. (Apache-2.0)
- [Codewhale](https://github.com/Hmbown/Codewhale) - Rust coding-agent runtime with local or hosted model support, tools, permissions, and multiple client surfaces. Formerly DeepSeek-TUI; now provider-neutral. (MIT)
- [Deep Code CLI](https://github.com/lessweb/deepcode-cli) - DeepSeek-focused terminal coding agent with skills and MCP integration. Community project, not an official DeepSeek harness. (MIT)
- [Plandex](https://github.com/plandex-ai/plandex) - Terminal agent for large, multi-step code changes with planning and cumulative change review. (MIT)
- [Neovate Code](https://github.com/neovateai/neovate-code) - Model-flexible coding agent with interactive and headless execution. (MIT)
- [Mastra Code](https://github.com/mastra-ai/mastra) - Ready-to-run terminal harness with modes, persisted threads, subagents, and observational memory. (Apache-2.0 portions; `ee/` directories are commercially licensed)

## SDK-First & General-Purpose

- [Deep Agents](https://github.com/langchain-ai/deepagents) - Ready-to-run harness with planning, filesystem tools, subagents, context management, and human approval hooks. Python; TypeScript at [deepagentsjs](https://github.com/langchain-ai/deepagentsjs). (MIT)
- [OpenHands Software Agent SDK](https://github.com/OpenHands/software-agent-sdk) - The execution engine behind OpenHands: agent conversations, tools, local/remote workspaces, and server APIs. (MIT)
- [Docker Agent](https://github.com/docker/docker-agent) - Declarative agent runtime with YAML configuration, tools, and multi-agent workflows. Formerly cagent. (Apache-2.0)
- [Agent Zero](https://github.com/agent0ai/agent-zero) - General-purpose runnable agent with computer tools, memory, and delegation. (MIT)
- [nanobot](https://github.com/HKUDS/nanobot) - Lightweight Python personal-agent implementation with its own tool loop, memory, and integrations. (MIT)
- [OpenManus](https://github.com/FoundationAgents/OpenManus) - General-purpose agent implementation combining planning, tools, and browser-oriented tasks. (MIT)
- [Open Interpreter (classic Python)](https://github.com/endolith/open-interpreter) - Community continuation of the original local code-execution agent for Python, shell, and other languages. Distinct from the Rust rewrite. (AGPL-3.0)

## IDE-Integrated

- [Cline](https://github.com/cline/cline) - Coding-agent engine with file editing, terminal/browser tools, and human approval workflows. (Apache-2.0)
- [Kilo Code](https://github.com/Kilo-Org/kilocode) - Coding-agent distribution with terminal and editor experiences; the current CLI is an OpenCode fork. (MIT)
- [Zoo Code](https://github.com/Zoo-Code-Org/Zoo-Code) - Community-maintained continuation of Roo Code for agentic coding in the editor. (Apache-2.0)
- [Pochi](https://github.com/TabbyML/pochi) - Open-source coding agent integrated into VS Code. (Apache-2.0)
- [VS Code local agent](https://github.com/microsoft/vscode) - The open-source local editor agent implementation in VS Code (Copilot Chat development moved into the main repo); distinct from GitHub's hosted agent services. (MIT)
- [Zed Agent](https://github.com/zed-industries/zed) - Zed's built-in first-party coding agent with tools and context management; distinct from the external ACP agents Zed can host. (GPL-3.0-or-later, agent crate)

## Research & Reference

- [mini-SWE-agent](https://github.com/SWE-agent/mini-swe-agent) - Minimal shell-centric software-engineering agent; a readable baseline harness. The SWE-agent maintainers have shifted development here. (MIT)
- [Trae Agent](https://github.com/bytedance/trae-agent) - Software-engineering agent with modular components and trajectory logging for experimentation. (MIT)
- [MiniMax Mini Agent](https://github.com/MiniMax-AI/Mini-Agent) - Reference agent with a complete execution loop, filesystem/shell tools, memory, context summarization, skills, and MCP. (MIT)
- [Terminus 2](https://github.com/harbor-framework/harbor) - Terminal-oriented agent implementation used for controlled agent evaluation, inside the Harbor framework. (Apache-2.0)

## Browser, Computer-Use & Ops

- [Browser Use](https://github.com/browser-use/browser-use) - Browser-specialized agent loop for choosing and executing actions across web tasks. (MIT)
- [Agent S](https://github.com/simular-ai/Agent-S) - Computer-use agent that plans and acts through graphical interfaces. (Apache-2.0)
- [Agent TARS / UI-TARS Desktop](https://github.com/bytedance/UI-TARS-desktop) - A family of agent implementations for browser and desktop/computer interaction, in one monorepo. (Apache-2.0)
- [Stakpak](https://github.com/stakpak/agent) - Infrastructure- and DevOps-focused agent for operational tasks. (Apache-2.0)

## Source-Available

Active projects whose source is published under non-OSI or commercially restricted terms.

- [Crush](https://github.com/charmbracelet/crush) - Charm's terminal coding agent: LSP-enhanced, multi-provider, with MCP support and a built-in Bash interpreter for config. (FSL-1.1-MIT; converts to MIT)
- [Dexto](https://github.com/truffle-ai/dexto) - Configuration-driven agent harness (YAML-defined agents) that ships with a production-ready coding agent via CLI and Web UI. (Elastic-2.0)
- [Autohand Code CLI](https://github.com/autohandai/code-cli) - Terminal-native coding agent for planning, reflecting, and remembering, with an interactive REPL and editor integrations. (Apache-2.0 plus commercial rider for organizations over $5M ARR)

## Not Included

Documented curation decisions, to save a future issue or PR:

- [Claude Code](https://github.com/anthropics/claude-code) - Proprietary; the public repo is under an all-rights-reserved notice and Anthropic commercial terms.
- [Continue](https://github.com/continuedev/continue) - Repository is read-only and no longer maintained.
- [Roo Code](https://github.com/RooCodeInc/Roo-Code) - Extension shut down; users are pointed to Zoo Code and Cline.
- [SWE-agent](https://github.com/SWE-agent/SWE-agent) - Superseded; the maintainers recommend mini-SWE-agent.

## Contributing

Contributions welcome. An entry should identify the actual engine (not just the app or marketing name): canonical repository, source license, a one-sentence differentiator, upstream lineage, and a maintenance note where needed. Entries must be actively maintained and open source or source available.
