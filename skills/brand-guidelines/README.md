# Brand Guidelines Skill

## What does this skill do?
This skill acts as a strict style enforcer, applying Anthropic's official corporate brand guidelines (specific colors and typography) to any generated artifacts. It prevents the AI from using random colors or generic fonts when building documents, slide decks, or UI components.

## How to use it / How it works
If you ask the agent to "apply our brand guidelines" or "make it look like an Anthropic document," it will pull the specifications from this skill:
- **Colors:** It uses a precise palette: Dark (`#141413`), Light (`#faf9f5`), Mid Gray (`#b0aea5`), and exact accent hex codes for Orange (`#d97757`), Blue (`#6a9bcc`), and Green (`#788c5d`).
- **Typography:** It enforces **Poppins** for headings and **Lora** for body text (falling back to Arial/Georgia if needed).
- **Execution:** It applies these automatically to HTML/CSS, Python `.pptx` scripts, or markdown artifacts.

## Potential Use Cases
- **Corporate Presentations:** Generating PowerPoint decks that instantly match official company templates.
- **Internal Reports:** Creating PDFs or markdown docs that feel cohesive and professional.
- **Reference Template:** You can edit the hex codes and fonts in the `SKILL_brand-guidelines.md` file to match **your own company's brand**, effectively turning this into a personalized brand enforcer!

## Keep or Delete?
- **Keep it if:** You plan on creating business documents/presentations, or if you want to swap out the Anthropic colors for your own custom brand identity to ensure all your web/document outputs always use your personal colors.
- **Delete it if:** You only want to make raw code, completely abstract art (like `canvas-design`), or if you prefer using the more diverse `theme-factory`.
