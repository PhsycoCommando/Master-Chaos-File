# Antigravity Developer Glossary

This document serves as a reference for the specific terminology used within the Antigravity architecture. Aligning on these terms ensures that AI agents and human developers interpret commands, workflows, and skills consistently.

## Core Operations

*   **Instantiate** 
    *   *What it is:* The act of creating a fresh instance or bringing a concept into its initial working state.
    *   *When/How to use:* Use when setting up a new architecture from a template (e.g., "Instantiate the New Project template" or "Run the `initialize.md` script to instantiate the environment"). It implies a foundational setup rather than a simple execution.

*   **Execute / Run**
    *   *What it is:* To perform a specific, deterministic action, tool, script, or workflow block. 
    *   *When/How to use:* Use when triggering Layer 3 scripts, terminal commands, or individual workflow steps. It implies a direct action resulting in an output or state change (e.g., "Execute `sync-templates.ps1`").

*   **Scan**
    *   *What it is:* To non-destructively read, analyze, and report on code, files, or repository structure.
    *   *When/How to use:* Use when you need insight without modification. If an instruction says "scan," the AI must strictly ensure it does not alter files in the process (e.g., `/scan-project`, `/scan-security`).

*   **Consolidate**
    *   *What it is:* Gathering scattered or legacy items and unifying them into the official architectural structure.
    *   *When/How to use:* Used primarily during merges or cleanup operations. For instance, "Consolidate scattered dev notes into `.dev_notes/`" means locate, merge, organize, and delete the messy originals.

*   **Overhaul / Rewrite**
    *   *What it is:* A comprehensive modification or complete replacement of an existing file/component.
    *   *When/How to use:* Use when a targeted file needs to be fully updated to reflect new realities. For example, "Overhaul the brand guidelines" means writing a completely fresh set of tokens based on new design input.

*   **Sync (Synchronize)**
    *   *What it is:* Replicating core architectural files from a source of truth (Master Chaos File) down to derivative templates.
    *   *When/How to use:* Specifically used in the context of `sync-templates.ps1` to ensure all templates share the identical `.agents`, `directives`, and `skills` configurations.

## Architecture Components

*   **Workflow (Slash-Command)**
    *   *What it is:* A step-by-step markdown file located in `.agents/workflows/`. They provide deterministic, multi-step instructions for complex operations.
    *   *When/How to use:* Triggered usually with a slash command (e.g., `/rebranding`, `/github-flow`). The AI reads the workflow file and sequentially executes the defined steps.

*   **Skill**
    *   *What it is:* A specialized directory within `skills/` containing a main instruction file (e.g., `SKILL_brand-guidelines.md`). It provides concentrated expertise, strict rules, and sometimes scripts for a specific domain.
    *   *When/How to use:* Called upon when a specific type of output is required. For instance, "Use the brand-guidelines skill" tells the AI to read the skill file to inherit design aesthetics before writing UI code.

*   **Directive**
    *   *What it is:* Standard Operating Procedures (SOPs) residing in `directives/`, forms Layer 1 of the architecture.
    *   *When/How to use:* Defines high-level goals and how the AI should route intent to execution. It behaves like a manual for the orchestration layer.

*   **Execution Script**
    *   *What it is:* Deterministic, reliable code (often Python or bash) housed in the `execution/` folder.
    *   *When/How to use:* Triggered by the AI when a reliable, repeatable action is required that shouldn't be left to probabilistic LLM generation (e.g., web scraping, API pagination).

## Folder Structure & Hierarchy

*   **Nested**
    *   *What it is:* A directory or file located inside another directory, creating a parent-child hierarchy (e.g., `.dev_notes/.secure/`).
    *   *When/How to use:* Use nested structures to encapsulate related, but potentially more specialized or sensitive information. For instance, secure credentials must always be nested deep within `.dev_notes/.secure/` to prevent accidental exposure to the rest of the workspace.

*   **Dynamic (Files/Folders)**
    *   *What it is:* Files, folders, or outputs that are transient, meant to be overwritten, or rely on runtime configurations (like the `.tmp/` folder).
    *   *When/How to use:* The `.tmp/` folder is entirely dynamic. Anything within it can be safely destroyed, ignored by version control, and regenerated at any time. When the AI creates temporary mockups or test outputs, they stay dynamic.

*   **Template / Boilerplate**
    *   *What it is:* Pristine, statically cloned structural shells (e.g., `New Projects Template`) offering the exact foundational files required to bootstrap a new environment.
    *   *When/How to use:* Used as the starting point during instantiation before any project-specific code or logic is introduced.

*   **Flat**
    *   *What it is:* When files are loosely strewn directly at the root level of a repository instead of being categorized.
    *   *When/How to use:* The Antigravity framework explicitly fights flat messes. When encountering flat, disorganized files (like a random `todo.txt` in the root), the AI consolidates and nests them appropriately into established structures like `.dev_notes/`.
