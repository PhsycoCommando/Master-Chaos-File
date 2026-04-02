# PPTX Skill

**Core Skill File:** [`SKILL_pptx.md`](SKILL_pptx.md)

## What is this skill?
This skill enables the AI to interact with, read, edit, and generate professional Microsoft PowerPoint (`.pptx`) presentations. It outlines programmatic workflows for everything from simple text extraction using `markitdown` to manipulating individual slide XML code, converting slides into image thumbnails for visual QA, and generating entirely new pitch decks from scratch using `pptxgenjs`. Note that this skill places a heavy emphasis on design—forcing the AI to drop boring defaults and instead use deep contrast, purposeful spacing, unique typography, and structured color themes.

## When to use it
Trigger this skill whenever the user mentions anything related to presentations or slides:
- "Extract all the text/data from this slide deck."
- "Edit this existing PowerPoint to include these new metrics."
- "Read this template and generate 5 new slides following its layout."
- "Create a new pitch deck from scratch giving it a premium 'Midnight Executive' vibe."
- "QA these generated slides by converting them to images and reviewing them visually."

## How to use it
When handling presentations, refer to `SKILL_pptx.md` for the core workflow, and drill down into:
- **`editing.md`**: Details the process of unpacking the `.pptx` archive into native XML, mapping specific layouts, and carefully injecting new content without breaking the underlying presentation logic.
- **`pptxgenjs.md`**: Explains how to leverage JavaScript to programmatically build presentations from thin air, applying strong visual constraints and positioning logic.

The AI is also strictly required to perform Visual QA using `soffice` and `pdftoppm` scripts provided in the directory.

## Keep or Delete?
- **Keep it if:** You regularly build pitch decks, work with slide-heavy corporate environments, auto-generate reports into presentations, or need script-based manipulation of PowerPoint elements.
- **Delete it if:** You rely entirely on Keynote/Google Slides (with purely manual editing) or never work with presentation slide decks.
