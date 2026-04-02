# Initialize New Project

**Goal:** Formally initialize a fresh Anti-Gravity project instance cloned from the "New Projects Template". 

**Instructions for the AI Environment:**
When a user asks you to execute, run, or "initialize" this file (e.g., `@[initialize.md] initialize Project Name`), you must carefully finalize the project setup by following these steps deterministicly:

1. **Verify Base Structure:**
   Ensure the following folders and files exist in the current directory:
   - `AGENTS.md`, `CLAUDE.md`, `GEMINI.md`
   - `.tmp/`, `execution/`, `directives/`, `.agents/`, `.dev_notes/`, `skills/`
   - `.dev_notes/.secure/` (used for secure notes)
   - `.env`, `.gitignore`

2. **Set Project Identity:**
   If the user invoked this file with a specific Project Name, optionally update references of the project name if instructed (e.g., in a README). If no README exists, you can create a simple `README.md` containing the project name.

3. **Validate Config Files:**
   - Double check `.gitignore` contains the anti-gravity specific ignores: `.tmp/`, `.env`, `credentials.json`, `token.json`, `.agents/`, `.dev_notes/.secure/`.
   - Ensure the `.env` file exists and is ready for use.

4. **Dev Notes Rules:**
   - You must never write any secure information in `.dev_notes/` directly (e.g. passwords, API keys, sensitive rules).
   - If you need to store secure developer notes, you must always place them inside the `.dev_notes/.secure/` folder and reference those secure files from the regular dev notes.

5. **Validate Brand Identity:**
   - Verify that `skills/brand-guidelines/SKILL_brand-guidelines.md` exists and contains the default visual identity.
   - You inherently inherit these baseline aesthetics (hex codes, font logic, morphing) when generating code. Mention it concisely.

6. **Lock It In:**
   Once verified, report back to the user that the project is initialized, locked in, and ready to go. You do not need to alter or create application-specific code at this stage unless requested directly.
