# Antigravity Templates

This folder contains the master baseline templates for initializing new projects or onboarding the Antigravity agentic architecture onto existing codebases. 

Instead of reading raw markdown setup guides every time, these standalone directories act as template bundles containing the fully scaffolded directories (`.agents`, `skills`, `directives`, `execution`) along with the base prompt layers (`AGENTS.md`, `CLAUDE.md`, etc.).

## 📁 Available Templates

### 1. New Projects Template
Use this template when you are bootstrapping a completely new repository or coding project from scratch. It contains the raw, unmodified base capabilities. 
*   **Usage**: Copy the entire contents of `New Projects Template/` into your empty repository root. Read the `instructions.md` inside to initialize.

### 2. Merge to Existing Projects
Use this template when you want to drop Antigravity into a codebase that is already under development. It is engineered to respect existing architecture and not trample on your current configuration.
*   **Usage**: Copy the entire contents of `Merge to Existing Projects/` into your current project's root. Use the `initialize.md` file to kickstart the onboarding process, which will prompt the agent to analyze your existing stack (and run workflows like `visual-brand-sync`).
