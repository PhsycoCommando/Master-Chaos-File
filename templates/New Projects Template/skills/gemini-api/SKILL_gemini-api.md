---
name: gemini-api
description: Master reference for writing code that integrates with the Google Gemini API using the official `google-genai` SDKs. Use this skill whenever a user asks to write scripts, backends, or tools powered by Gemini models (like gemini-2.5-flash or gemini-2.5-pro). DO NOT try to guess Gemini API syntax without checking this skill!
compatibility: Python, Node.js/TypeScript
---

# Gemini API Integration Skill

**CRITICAL RULE:** The official SDK for Gemini is now `google-genai` (Python) and `@google/genai` (Node.js/TypeScript). Older SDKs like `google-generativeai` are deprecated or not recommended for new projects. Always use the modern SDK.

## Understanding Gemini Models

- **`gemini-2.5-flash`**: The default model for almost all text, multimodal, and tool-calling tasks. It is extremely fast and cost-effective.
- **`gemini-2.5-pro`**: Used for highly complex reasoning, advanced coding, and massive context windows.
- *Older models* (`gemini-1.5-flash`, `gemini-1.5-pro`) should only be used if explicitly requested.

## Structure of this Skill

Because SDK syntax differs significantly between languages, the specific code implementations are stored in the `reference/` directory.

- If the user asks for **Python** code, read `reference/python.md`.
- If the user asks for **JavaScript/Node.js/TypeScript** code, read `reference/typescript.md`.

## General Best Practices

1. **Authentication**: Always use the `GEMINI_API_KEY` environment variable. Both the Python and JS SDKs will automatically detect this variable. You rarely need to hardcode the API key.
2. **System Instructions (System Prompt)**: Used to guide model behavior. Passed into the `config` object when generating content.
3. **Structured Outputs (JSON)**: Always enforce a specific JSON schema using `response_mime_type="application/json"` and `response_schema` (in python) or `responseSchema` (in Node) inside the `config` object.
4. **Tool Calling**: Pass functions to the `tools` array inside the `config` object.

Please consult the reference file for the chosen language BEFORE writing any code.
