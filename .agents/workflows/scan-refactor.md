---
description: Analyzes the codebase and recommends areas for refactoring without executing the changes.
---

# /scan-refactor

## Goal
To scan the existing codebase and recommend specific areas that could benefit from refactoring to improve maintainability, performance, or readability. **You must not execute or implement any actual refactoring during this scan.**

## Instructions
1. **Codebase Analysis**: Perform a deep review of the source code, focusing on core logic, complex components, or potentially outdated patterns.
2. **Identify Bottlenecks & Debt**: Look for:
   - Large or tightly coupled functions/classes.
   - Duplicate code or logic.
   - Opportunities for abstraction.
   - Inefficient algorithms or database queries.
3. **Generate Recommendations Report**: Present a clear and structured list of refactor recommendations to the user. For each recommendation, provide:
   - **Target Area**: The file(s) or component(s).
   - **The Problem**: Why it currently poses an issue (technical debt, readability, scalability).
   - **Proposed Solution**: What specific refactoring technique should be applied.
4. **Halt Action**: Remind the user that this was a non-destructive scan and ask them explicitly if they would like to open a subsequent workflow to execute any of the recommended refactors.
