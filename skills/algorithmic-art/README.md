# Algorithmic Art Skill

## What does this skill do?
This skill enables the creation of highly complex, generative, and interactive code-based art using `p5.js`. Instead of producing a static image, this skill generates a full "live" algorithm—a self-contained HTML page where the art draws itself procedurally. 

## How it works
The process is split into two phases:
1. **Algorithmic Philosophy**: Before writing code, it formulates a "generative manifesto" (e.g., "Organic Turbulence" or "Quantum Harmonics") which establishes the physics, flow fields, and mathematical rules guiding the piece.
2. **Implementation**: It uses `p5.js` to render the art. It injects this algorithm into a pre-styled, Anthropic-branded interactive template (with real-time sliders, color pickers, and seed regenerating tools).

## What's in the `templates` folder?
The `templates/` folder contains structural foundations used by the agent during implementation:
- `viewer.html`: The strict HTML/CSS frame. It contains the standard Anthropic layout, sidebar, and controls. The agent *must* inject the generated `p5.js` code inside this framework, rather than attempting to build an interface from scratch.
- `generator_template.js`: A best-practice structural reference for building parameters, handling randomized seeds consistently, and rendering loops inside the HTML document. 

## Potential Use Cases
- Generating interactive hero backgrounds for webpages or applications.
- Experimenting with chaotic math, fractals, or noise fields algorithmically.
- Creating generative brand art that can render thousands of unique but cohesive visual permutations based on a seed number. 

## Keep or Delete?
- **Keep it if:** You are interested in generative art, procedurally generated visualizations, or creating interactive canvases that users can pause, seed, or mutate via sliders.
- **Delete it if:** You only want traditional UI design (`frontend-design`), standard static posters (`canvas-design`), or have no interest in dynamic computational art.
