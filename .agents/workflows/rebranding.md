---
description: Initiates a complete manual rebranding of the Antigravity design system from the ground up and generates a comprehensive test UI.
---

# Rebranding Workflow

Use this workflow when the user wants to completely overhaul their aesthetic identity from scratch. This is a two-step, interactive workflow.

## Step 1: The Questionnaire
When this workflow is initiated, immediately output the following checklist formatted in markdown. Instruct the user to copy it, fill it out, and paste it back into the chat.

```markdown
### 🎨 1. Color Palette (Hex Codes)
*   **Primary Brand Color:** `[Hex]` 
*   **Secondary Color:** `[Hex]` 
*   **Accent/Action Color:** `[Hex]` 
*   **Background Base (Dark):** `[Hex]` 
*   **Background Base (Light):** `[Hex]` 
*   **Text Primary:** `[Hex]` 
*   **Text Secondary/Muted:** `[Hex]` 

### ✍️ 2. Typography
*   **Heading Font Family:** `[Font Name]`
*   **Body Font Family:** `[Font Name]` 
*   **Base Font Size:** `[e.g., 14px, 16px]`

### 🟦 3. UI Morphology & Shapes
*   **Border Radius:** `[Sharp (0px), Soft (4-8px), or Pill (Fully rounded)]`
*   **Shadows/Depth:** `[Flat (None), Subtle, Deep Drop Shadows, or Neumorphic]`
*   **Borders:** `[No borders, Thin subtle borders, Thick high-contrast borders]`

### 📐 4. Layout & Spacing
*   **Container Width:** `[e.g., 1200px max, or Full Width]`
*   **Spacing Vibe:** `[Compact (dense info), Comfortable (standard), or Airy (lots of whitespace)]`

### ✨ 5. Aesthetics & Interaction
*   **Overall Vibe/Theme:** `[e.g., Clean minimalist, Cyberpunk, Glassmorphism, Corporate, Playful]`
*   **Gradients:** `[Yes/No - Minimal or Heavy?]`
*   **Animations:** `[None, Smooth/Subtle fades, Bouncy/Dynamic]`
```

*Wait for the user to return the completed checklist before proceeding.*

## Step 2: System Calibration & Test Page Generation
Once the user has returned the populated checklist, do the following:

1.  **Overhaul the Brand Skill**: Use `write_to_file` (with `Overwrite: true`) to completely rewrite the `skills/brand-guidelines/SKILL_brand-guidelines.md` file. Ensure every single token, font, and shape preference the user provided is encoded into the rules.
2.  **Generate Comprehensive Test Page**: Create a new file called `.tmp/rebrand-test.html`. You *must* write fully functional HTML/CSS that demonstrates the exact brand guidelines. 
    *   **Required UI Elements:** The page must contain:
        *   A Top Navigation Bar (with logo placeholder and links)
        *   A Side Pop-out Banner or Sidebar
        *   A Bottom Header/Footer
        *   Main Container Elements (like a grid of feature cards)
        *   Typography hierarchy (H1, H2, body text, mutated text)
        *   Buttons with hover/active states that reflect the animation and color choices
    *   *Note: No state management or JS framework is required, just structural HTML and robust CSS.*
3.  **Confirm**: Present the file path of `.tmp/rebrand-test.html` to the user so they can open it in their browser and confirm the aesthetic works for them.
