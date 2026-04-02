---
description: How to push code to GitHub and update documentation
---

# GitHub Push & Documentation Workflow

Whenever the user asks you to package up changes, commit code, or push to GitHub, you MUST follow this exact sequence perfectly. 

## 1. Branch Safety Check
- Verify that the current branch is `development`. 
- **DO NOT** commit directly to `main` under any circumstances unless explicitly ordered. 
- If we are on `main`, stop immediately and warn the user.

## 2. Professional Documentation & Diagram Updates
Before any code is committed, verify if the architecture or major components have changed.
- If features were added: Use the `technical-doc-creator` skill to professionally update the `README.md`.
- If new architecture was introduced: Use the `architecture-diagram-creator` or `flowchart-creator` skills to generate and embed Mermaid diagrams into the documentation.

## 3. Pre-Commit Review
- Run `git status` and `git diff` to understand exactly what was changed. 
- Verify there are no secrets or temporary files staging (like `.env` or anything in `.tmp`).

## 4. Execute the Push Action
- Use the `git-pushing` skill to execute a perfectly structured commit and perform the push to the remote repository.
- Ensure conventional commit messages are used (e.g., `feat:`, `fix:`, `docs:`, `chore:`).

## 5. Report Back
Always report back to the user with the git hash and a quick summary of the documentation that was updated.
