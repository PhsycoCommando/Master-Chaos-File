---
trigger: always_on
description: Ensures the agent does not hallucinate dependencies or introduce bloating packages without user awareness.
---

# Dependency Management

- No unapproved installs: Do not install external libraries (e.g., `npm install <package>`) without explicitly asking the user for authorization first.
- Propose alternatives: When a new dependency is needed, propose it, explain why, and optionally list a highly maintained alternative.
- Native first: Always attempt to accomplish a task using existing project dependencies or native APIs before reaching for a third-party library to minimize bundle size.
- Do not modify `package.json` resolution or peer dependencies without alerting the user.
