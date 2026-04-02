# MCP Builder Skill

**Core Skill File:** [`SKILL_mcp-builder.md`](SKILL_mcp-builder.md)

## What is this skill?
This skill serves as the ultimate playbook for designing, building, testing, and evaluating high-quality Model Context Protocol (MCP) servers. It provides the architectural principles, project structures, language-specific implementation guidelines (for both Python and TypeScript), and rigorous evaluation frameworks necessary to build effective tools that successfully bridge LLMs with external APIs.

## When to use it
Trigger this skill whenever the user mentions connecting external services to an LLM context, or specifically asks to:
- "Build an MCP server for [Service/API]."
- "Write an MCP tool to connect to my database/system."
- "Evaluate or test this MCP server."
- Expand, refactor, or upgrade an existing MCP tool set.

## How to use it
When tasked with MCP development, start by consulting `SKILL_mcp-builder.md`. It outlines a rigorous 4-phase process:
1. **Research & Planning:** Review the API documentation, decide on the right abstraction level (API wrappers vs complex workflows), and refresh your knowledge of the protocol by using WebFetch on the official MCP specs.
2. **Implementation:** Route into the sub-guides like `reference/python_mcp_server.md` or `reference/node_mcp_server.md` to properly structure the codebase, configure robust Zod/Pydantic schemas, and implement strict error handling.
3. **Review & Test:** Validate the server functionality using the standard MCP Inspector tools.
4. **Evaluation:** Follow `reference/evaluation.md` to generate test harnesses and QA sets, ensuring other LLMs can reliably use your newly built MCP server without hallucinations or systemic failures.

## Keep or Delete?
- **Keep it if:** You are actively designing, rolling out, and maintaining MCP integrations (either Python/FastMCP or TypeScript) to give agents access to external systems.
- **Delete it if:** You are just an end-user of MCP servers rather than a developer of them, or if you don't use the Model Context Protocol ecosystem at all.
