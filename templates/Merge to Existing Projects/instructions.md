# Anti-Gravity Merge to Existing Projects

This directory is a protective wrapper template. It is designed to safely inject the **Anti-Gravity 3-Layer AI Architecture** into an *already existing, live project* without overwriting or destroying any of your current code.

## What is this for?
If you have an older project and want to upgrade it so that AI agents behave deterministically, you use this template. It intentionally **omits** files like `.env` and `.gitignore` so that dragging this folder into your project won't wipe out your existing configurations.

## Directory Structure

Here is the environment the AI will use once merged:

- **`directives/` (Layer 1):** Markdown Standard Operating Procedures (SOPs) outlining instructions on how to do specific tasks.
- **`execution/` (Layer 3):** Deterministic scripts. The AI writes code here to accomplish reliable data processing instead of making random guesses.
- **`.tmp/`:** An intermediate scratchpad for big data dumps or temp exports. This keeps your application's root squeaky clean.
- **`.agents/`:** Workflows specific to the project.
- **`.dev_notes/`:** Safe developer tracking context.
- **`.dev_notes/.secure/`:** Strictly locked down sub-folder for passwords, API keys, or sensitive info.

## How to Initialize

1. **Copy the contents** of this template folder and drop them directly into the root folder of your existing project.
2. In your AI chat window, **reference the initialization file** and ask to merge it into the existing project:
   ```text
   @[initialize.md] Initialize the merge for this project
   ```
3. **Done.** The AI executes a highly cautious merge sequence. It checks for your existing `.gitignore` and safely **appends** the AI's ignore rules (like `.tmp/` and `.secure/`) to the bottom. It also leaves your `.env` completely undisturbed. 

You are immediately upgraded to the 3-layer architecture without any risk to your current application logic.
