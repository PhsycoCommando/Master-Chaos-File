---
trigger: always_on
description: Ensures the agent does not corrupt git history or push unstable commits to the repository.
---

# GitHub Discipline

- Never commit without running `git status` and `git diff` to verify exactly what is in the working tree.
- Never run `git push --force` or `--force-with-lease` unless explicitly authorized by the user.
- Commits must adhere to a conventional commit standard (e.g., `feat:`, `fix:`, `refactor:`, `docs:`).
- Avoid vague or lazy commit messages like "updated files" or "made changes".
- Do not add or commit files in the `.tmp` or `.dev_notes` directories unless instructed.
