---
description: Generates formatted development progress reports for social media, Discord, and Twitch.
---
# Progress Report Generator Workflow

Whenever the user asks to generate a progress report, update, or you trigger `/progress-report`, strictly follow these steps:

## 1. Review Past Progress
- Start by reading the most recent file inside `.dev_notes/progress_reports/`. Pay close attention to its identifying markers (e.g., the last recorded Git commit or tag).
- Determine what has changed *since* that last progress report was written. E.g. analyze `git branch` / `git log` / `git diff` against the last known status.
- Alternatively, ask the user if there are specific new features or updates they want to highlight.

## 2. Draft the Three Formats
You must generate three distinct message formats based on the updates:
1. **Discord Long (Markdown):** A comprehensive, well-formatted Markdown post. Include a full description of the changes, emojis, and bullet points to share the big picture.
2. **Discord Short (Markdown):** A quick, punchy Markdown message for a fast chat drop.
3. **Twitch / Socials Plaintext:** The exact same message as formatting #2, but with ALL Markdown characters (asterisks, bolding, hashes, backticks, bullet points) completely stripped out. It must be 100% raw plaintext so it looks clean when pasted into Twitch, YouTube, or other restrictive chat boxes.

## 3. Save to Dev Notes
- Create a new file in `.dev_notes/progress_reports/` named `YYYY-MM-DD-update.md` (using the current date).
- **CRITICAL:** At the very top of the new file, include hard-identifying markers for exactly where the project sits right now (e.g., `Current Git Commit: <hash>` or `Current Tag: <tag>`). This allows the user to easily roll back or diff against this exact progress report in the future.
- Save all three formatted versions inside this file below the markers for archival purposes.

## 4. Deliver to User
- Output the three formatted versions directly to the user in your response so they can instantly copy and paste them to their respective platforms.
