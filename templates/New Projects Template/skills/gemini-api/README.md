# Gemini API Skill

**Core Skill File:** [`SKILL_gemini-api.md`](SKILL_gemini-api.md)

## What is this skill?
This skill ensures that whenever the AI is asked to integrate Google Gemini AI capabilities into an application or script, it uses the correct, modern `google-genai` SDK and the current models (like `gemini-2.5-flash`), rather than older, deprecated libraries (like `google-generativeai`).

It contains concrete reference code in the `reference/` directory for both Python and TypeScript, giving exact syntax on how to:
- Authenticate correctly using `GEMINI_API_KEY`.
- Provide System Instructions.
- Enforce structured JSON object replies using schemas like Pydantic.
- Connect external Tool schemas.
- Stream model outputs.

## When to use it
Trigger this skill whenever the user explicitly asks to:
- "Hook up this app to the AI"
- "Write a python script using Gemini"
- Add GenAI capabilities to a backend (Node/Python)
- Refactor outdated generative AI code
- Add reasoning/intelligence to a codebase

## How to use it
When guided to implement Gemini features, do not try to guess the library syntax from memory. Instead:
- Consult the language-specific files (`reference/python.md` or `reference/typescript.md`) inside this skill folder.
- Ensure the latest `gemini-2.5-flash` (or `gemini-2.5-pro` for reasoning) models are utilized.
- Copy the exact boilerplate structures for connecting function schemas and parsing structured outputs.

## Keep or Delete?
- **Keep it if:** You are building AI applications, integrating Gemini into your codebase, or want quick access to perfect boilerplates for `google-genai` structured outputs and tool calling.
- **Delete it if:** You are not developing any AI-integrated features, or you exclusively build around different AI providers (like OpenAI or Claude) with no intention of using Gemini.
