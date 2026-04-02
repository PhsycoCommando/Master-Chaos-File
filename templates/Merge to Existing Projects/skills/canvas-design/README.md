# Canvas Design Skill

## What does this skill do?
This skill enables the AI to generate high-end, museum-quality abstract art, posters, and visual layouts. Unlike basic image generation, this skill mimics the aesthetic intuition of a top-tier designer creating minimalist or avant-garde visual art. It emphasizes spatial communication, form, color, and typography over generic "AI art."

## How it works
The generation happens in two distinct steps:
1. **Design Philosophy:** First, the AI writes a temporary "art manifesto" (e.g., "Concrete Poetry" or "Chromatic Silence"). This sets the specific visual constraints (what colors to use, how to handle negative space, the typographic scale, etc.).
2. **Visual Expression:** Only after defining the rules does the AI actually render the `.pdf` or `.png` canvas, ensuring that the piece follows a rigorous, deeply intentional aesthetic path.

## What is the `canvas-fonts` directory?
Because this skill produces actual layout art, typography is extremely important. The `canvas-fonts` directory is filled with 81 professional `.ttf` desktop fonts mapping to different aesthetics (such as `JetBrainsMono`, `Italiana`, `BricolageGrotesque`, `PixelifySans`, `CrimsonPro`, etc.). The agent pulls directly from this folder when rendering text onto the canvas to ensure typography feels bespoke rather than using generic system fonts like Arial or Times New Roman.

## Potential Use Cases
- Generating abstract backgrounds, posters, or conceptual graphics for a pitch deck.
- Mocking up art prints, event flyers, or editorial layout imagery.
- Formulating robust visual concepts and "moods" before turning them into actual web UI code (via the `frontend-design` skill).

## Keep or Delete?
- **Keep it if:** You care heavily about generating ultra-premium, graphic design-oriented visual artifacts. You want a massive font library locally available for those art generations.
- **Delete it if:** You have no application for static, poster-like art files or concept artifacts, and you prefer to focus solely on coding (`frontend-design`), standardizing brand assets (`brand-guidelines`), or interactive generative loops (`algorithmic-art`).
