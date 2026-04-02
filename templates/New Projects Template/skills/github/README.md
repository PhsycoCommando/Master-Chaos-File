# GitHub Skill

This module adds Git and GitHub capabilities to Antigravity. It includes a smart-commit script that stages changes, dynamically handles conventional commits, appends a Claude footer, and pushes to remote.

## File Structure

*   `SKILL_github.md`: Core system instructions defining exact capabilities.
*   `scripts/smart_commit.sh`: Shell script responsible for handling git add, commit, and push in a safe, deterministic manner.

## Usage

This skill is automatically triggered when requesting remote uploads or commits (e.g. "push these changes to github"). Ensure this folder stays in the `skills` root for dynamic capability discovery!
