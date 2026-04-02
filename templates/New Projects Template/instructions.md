# Anti-Gravity New Projects Template

This directory is an out-of-the-box template used to bootstrap a brand new project with the **Anti-Gravity 3-Layer AI Architecture**. 

## What is this for?
When starting a new application or project, copy this directory and rename it. This template ensures that you immediately start with a robust, deterministic environment designed to keep AI agents grounded. It comes pre-packaged with our instructions (`AGENTS.md`), ignore files (`.gitignore`), and the requisite directory structure.

## Directory Structure

Here is what is included and how the AI will use it:

- **`directives/` (Layer 1):** Markdown Standard Operating Procedures (SOPs). This is where you store instruction manuals on *how* to perform actions.
- **`execution/` (Layer 3):** Deterministic scripts (e.g., Python code). Instead of random terminal guessing, the AI establishes reliable scripts here.
- **`.tmp/`:** A scratchpad for intermediate work, large JSON dumps, or temporary scraped data. This keeps the root directory clean and is ignored by Git.
- **`.agents/`:** Project-specific workflow definitions and AI slash commands.
- **`.dev_notes/`:** General developer tracking notes and project context. Safe to push to source control.
- **`.dev_notes/.secure/`:** Strictly isolated sub-folder for credentials, API keys, or sensitive rules. Ignored by Git.

## How to Initialize

1. **Duplicate** this template folder and rename it to your new project's name.
2. **Open** the folder in your IDE/editor.
3. In your AI chat window, **reference the initialization file** and ask it to initialize:
   ```text
   @[initialize.md] Initialize the project: [Your Project Name]
   ```
4. **Done.** The AI will review the files, lock in project-specific naming, verify that `.env` and `.gitignore` are properly set, and give you the green light to start building.
