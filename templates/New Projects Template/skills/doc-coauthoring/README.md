# Doc Co-Authoring Skill

**Core Skill File**: [`SKILL_doc-coauthoring.md`](SKILL_doc-coauthoring.md)

## What is this skill?
This is a highly structured, interactive workflow designed to help users write complex documentation (like PRDs, technical specs, RFCs, and decision docs). Rather than just blindly generating a document based on a single prompt, this skill forces the AI to step into the role of a guided co-author using a three-stage process:

1. **Context Gathering**: The AI aggressively gathers context, asking clarifying questions and encouraging info-dumps until it fully understands the background, audience, and edge cases.
2. **Refinement & Structure**: The AI sets up a document scaffold and works through it section-by-section. It brainstorms options for each section, asks the user what to keep/remove, and does targeted, surgical edits rather than rewriting the entire doc at once.
3. **Reader Testing**: The most unique part of the workflow. The AI spins up a fresh, context-free sub-agent ("Reader Claude") and feeds it the final document to see if it makes sense to someone who wasn't involved in writing it. This catches blind spots and unspoken assumptions.

## When to use it
Trigger this skill whenever the user wants to start a substantial writing task. Key phrases include "write a doc", "draft a proposal", "create a spec", or whenever they mention writing specific document types like a "PRD" or "design doc".

## How to use it
- When triggered, explain the three-stage process to the user and ask if they want to co-author using this workflow or if they prefer to just work freeform.
- If they accept, open `SKILL_doc-coauthoring.md` and follow the instructions exactly, starting with Stage 1.
