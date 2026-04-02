---
trigger: always_on
description: Ensures the agent does not bypass instructions when executing codified SOPs and workflows.
---

# Workflow Adherence

- No Skips: If a user triggers a workflow (such as via a `/` command), execute all steps in chronological order exactly as defined in the `.agents/workflows` markdown file.
- Do not assume the user wants to skip steps just to save time.
- Halt & Catch Fire: If a step in a workflow fails or encounters an unrecoverable error, do not silently ignore it to finish the rest of the flow. Stop immediately, present the error to the user, and await manual input before proceeding.
