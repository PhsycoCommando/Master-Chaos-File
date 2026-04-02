# Theme Factory Skill

**Core Skill File:** [`SKILL_theme-factory.md`](SKILL_theme-factory.md)

## What is this skill?
This skill acts as a universal styling library for the AI. Whenever it's building a slide deck, a marketing page, a PDF report, or an HTML UI, this skill provides a standardized set of 10 curated themes (e.g., "Ocean Depths," "Sunset Boulevard," "Tech Innovation"), each with carefully paired typographies and hex color codes. It also teaches the AI how to offer a visual choice to the user before generating the artifact, using a provided `theme-showcase.pdf` document.

## When to use it
Trigger this skill whenever the user mentions styling, coloring, themes, or generating front-end/visual artifacts:
- "Can you apply a professional theme to this pitch deck?"
- "Build a landing page and use the 'Tech Innovation' style from the theme factory."
- "Show me what design vibes you have available for this report."
- "Can you generate a custom theme for an eco-friendly brand and apply it here?"

## How to use it
Refer to `SKILL_theme-factory.md` for the overarching instructions. The workflow heavily involves:
- **`theme-showcase.pdf`**: The visual catalog representing all 10 standard themes. The AI presents this to the user for selection.
- **`themes/` folder**: Contains individual data files specifying exact font names, base colors, accents, and contrast colors to be applied.
- The AI will apply the chosen theme globally across the requested files, or use the pattern to programmatically generate a *new* custom theme matching the user's mood instructions.

## Keep or Delete?
- **Keep it if:** You regularly ask the AI to generate visual outputs like HTML pages, slide decks, and formatted documents, and want it to default to high-end, cohesive color and font palettes without you having to spell them out manually every time.
- **Delete it if:** You only use the AI for backend code, raw data extraction, or copy editing where visual design aesthetics apply 0% of the time.
