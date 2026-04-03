---
name: brand-guidelines
description: Applies the official PHYSCO Brand ("Neon Grit Tech") style guidelines, colors, and typography to any sort of artifact, website, UI component, or document that may benefit from having the specific look-and-feel of the brand. Use it when brand colors, visual formatting, or design standards apply.
---

# PHYSCO Brand Styling ("Neon Grit Tech")

## Overview

Any time Antigravity generates UI, creates mockups, sets up a frontend application, or generates documentation, it MUST adhere strictly to the following parameters. 

**Vibe Summary**: 3AM warlord of discipline, stoned philosopher of gains, dad-mode chaos commander. A fusion of underground gym culture, cyberpunk-lite glow, Oregon forest mysticism, and late-night hacker energy.

**UI Rules:**
1. Dark mode first 🔥
2. Neon highlights = interaction cues
3. Clean layout = usability
4. Flavor = personality (not clutter)

## Brand Guidelines

### Colors

**Primary Colors:**
- Neon Psycho Green: `#39FF14` (Energy, chaos, identity beacon)
- Deep Pine Green: `#0B3D2E` (Oregon roots, grounded power)
- Blaze Orange: `#FF5E00` (Buttons, CTAs, heat, attention)

**Base & Text Colors:**
- Background Base (Dark): `#0A0A0A` (True Black - gym at 3AM energy) - **DEFAULT**
- Background Base (Light): `#F5F5F5` (Clean Ash White - only if readability mode requested)
- Text Primary: `#FFFFFF` (Pure White - high contrast on dark mode)
- Text Secondary / Muted: `#9CA3AF` (Cool Gray - subtext, UI hints)

### Typography

- **Headings**: `Bebas Neue` (bold, aggressive, gym-poster energy)
- **Body Text**: `Inter` (clean, modern, app-friendly readability)
- **Base Font Size**: `16px` (scalable, mobile-first)

### UI Morphology & Shapes

- **Border Radius**: Soft (`8px`) - Feels modern but structured. Not bubbly, not sharp. Controlled chaos.
- **Borders**: Thin, subtle borders (`1px`, low opacity/translucent white). Let the colors and glow do the talking.
- **Shadows / Depth**: Subtle to Medium Depth. Soft glows on dark UI elements instead of traditional drop shadows. Slight elevation on cards.
- **Container / Spacing**: `1200px` max width (centered). Full-width sections for impact. "Comfortable" spacing with bursts of "Airy" for cinematic breathing room in hero sections.

### Interaction States

- **Hover**: Soft blue glow (or soft neon green glow, context dependent). Transitions should be fast but smooth (`0.2s` fade). Micro-pops on buttons.
- **Active / Selected**: Solid Neon Psycho Green (`#39FF14`) glow or border.
- **Responsiveness**: UI should feel aggressively optimized but not flashy or overwhelming.

## When to Apply
- When bootstrapping a Next.js/React component.
- When configuring `tailwind.config.js`.
- When generating diagrams or charts using colors.
