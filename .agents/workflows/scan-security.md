---
description: Scans the codebase for potential security vulnerabilities and risky dependencies.
---

# /scan-security

## Goal
To perform a non-destructive security and vulnerability scan on the application's source code and configuration.

## Instructions
1. **Vulnerability Scan**: Review the application focusing strictly on security vectors. Look out for:
   - Hardcoded secrets or credentials outside of `.dev_notes/.secure/`.
   - Outdated, known-vulnerable dependencies (e.g. check package files).
   - Unsafe variable evaluation (e.g. injection risks, untrusted inputs).
   - Missing authentication/authorization checks.
2. **Generate Security Report**: Present the findings sequentially to the user.
   - Categorize risks into High, Medium, and Low severity.
   - Name the exact files and lines of code where the vulnerabilities live.
   - Provide concrete mitigation instructions for each item.
3. **Wait for Input**: Advise the user to review the vulnerabilities and inform you which ones they would like patched. Do not apply patches automatically.
