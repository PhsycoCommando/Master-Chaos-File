---
description: Automatically syncs Antigravity's design skills with an existing project's UI and branding.
---

# Visual Brand Sync Workflow

When Antigravity is dropped into an existing codebase, use this workflow to automatically align all UI generation skills to the project's existing aesthetic. This ensures any new components generated moving forward will seamlessly integrate with the existing design system.

## 1. Design Document Discovery
- Scan the project root and `docs/` or `design/` directories for files like `design.md`, `brand.md`, `theme.json`, or `tailwind.config.js`.
- Read and extract the core design tokens (colors, typography, spacing, border radiuses). 

## 2. Source Code Visual Analysis
If no master design document exists, you must reverse-engineer the brand from the codebase:
- Use `grep_search` to find the main CSS variables file (e.g., `globals.css`, `index.css`, `_variables.scss`).
- Identify the most common UI components (buttons, cards, headers) inside the component directories (e.g., `src/components/`).
- Analyze the CSS/Tailwind classes applied to them to extract the primary/secondary colors, component interaction states (hover/active), and typography hierarchy.

## 3. Brand Guidelines Generation
- Call upon the `brand-guidelines` skill to consolidate the extracted variables.
- If a master `brand.md` or equivalent doesn't exist, generate one for the project to act as the source of truth moving forward.

## 4. Skill Calibration
Now that the existing brand is understood, overwrite/update the internal states of the following Antigravity skills so they are explicitly instructed to use these tokens for this specific project:
- **`theme-factory`**: Sync the color hexes and spacing tokens.
- **`frontend-design`**: Instruct the generator to use the specific framework (Tailwind/CSS modules) and exact class combinations found in the existing repo.
- **`canvas-design` & `web-artifacts-builder`**: Update their configurations so any wireframing or macro-components strictly adhere to the synchronized brand.

## 5. Verification 
- Generate a simple sample component (like a secondary button or card) using the newly calibrated skills.
- Show the code to the user and confirm it perfectly matches their existing design pattern before formally concluding the sync.
