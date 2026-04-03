# Initialize Merge for Existing Projects

**Goal:** Safely integrate the 3-layer Anti-Gravity architecture into an existing, live project folder without overriding or destroying any existing application configuration.

**Instructions for the AI Environment:**
When a user asks you to execute, run, or "initialize" this file (e.g., `@[initialize.md] initialize Project Name`), you must operate with **maximum caution regarding existing code.** Follow these steps exactly:

1. **Verify Base Architecture Components:**
   Ensure the following elements have been dropped into the project:
   - `AGENTS.md`, `CLAUDE.md`, `GEMINI.md`
   - `.tmp/`, `execution/`, `directives/`, `.agents/`, `.dev_notes/`, `skills/`
   - `.dev_notes/.secure/` (used for secure notes)
   (If any are missing, create or copy them, but NEVER overwrite an existing folder if it belongs to the application).

2. **Merge `.gitignore` (CRITICAL):**
   Look for an existing `.gitignore` in the root. 
   - If it exists, open it and **append** the following lines to the bottom. NEVER overwrite or delete contents within the existing `.gitignore`.
     ```text
     
     # AI Agent Folders
     .tmp/
     .agents/
     .dev_notes/.secure/
     credentials.json
     token.json
     ```
   - If no `.gitignore` exists, briefly create one with these lines.

3. **Handle `.env` Safely:**
   - Since this template folder intentionally omits the `.env` file to prevent accidental overwrites when copying files, check if the project has its own `.env` file. 
   - DO NOT overwrite their `.env`. If they do not have one, you may create a placeholder structure if explicitly asked. Otherwise, leave it undisturbed.

4. **Dev Notes Rules:**
   - You must never write any secure information in `.dev_notes/` directly (e.g. passwords, API keys, sensitive rules).
   - If you need to store secure developer notes, you must always place them inside the `.dev_notes/.secure/` folder and reference those secure files from the regular dev notes.

5. **Cursor Rules Assimilation:**
   - Look for a `.cursor/rules/` folder or a `.cursorrules` file in the project root.
   - If found, read every rule and convert them into Antigravity architecture workflows or explicit instructions placed inside `.agents/workflows/` or `.dev_notes/`.
   - Once successfully converted and consolidated, DELETE the old `.cursor/` rules folder and/or `.cursorrules` file to prevent conflicting instruction sets.

6. **Dev Notes Consolidation:**
   - Identify any existing fragmented developer notes strewn about the project (e.g. `todo.md`, `notes.txt`, `docs/dev/`, `marketing/`).
   - Move, merge, and beautifully organize all these notes into our structured `.dev_notes/` directory.
   - Delete the old sprawling note files so the workspace is kept perfectly clean and unified.

7. **Visual Branding Assimilation:**
   - On an existing project, the branding is very likely already set within CSS variables, Tailwind configurations, or global stylesheets.
   - Run a codebase scan to identify the existing visual branding elements (Primary colors, secondary colors, chosen font families, UI morphology, and border styles).
   - Use this extracted data to automatically overwrite and populate the `skills/brand-guidelines/SKILL_brand-guidelines.md` profile so that the AI inherently matches and adopts the existing project's visual identity for all future work. Under NO circumstances should you create a generic `SKILL.md` file; only modify the existing `SKILL_brand-guidelines.md`.

8. **Lock It In:**
   Report back to the user listing specifically what was merged, what branding styles were discovered and adopted, and what was completely untouched. Assure them the project configuration is verified and the 3-layer AI framework is ready.
