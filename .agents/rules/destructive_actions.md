---
trigger: always_on
description: Ensures the agent does not permanently delete important project context or files.
---

# Destructive Actions

- No Permanent Deletion: Never permanently delete a file (`rm <file>`) or function unless explicitly commanded by the user.
- The Graveyard: If a file or substantial block of logic is completely obsolete, move it to `.dev_notes/archive/` (create this folder if it does not exist) instead of deleting it.
- Ask before wiping out large chunks of code or configuration, even if the user says "refactor this feature."
