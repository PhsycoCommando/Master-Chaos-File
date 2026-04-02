---
trigger: always_on
description: Ensures the agent strictly sticks to the established overarching aesthetic and theme.
---

# UI Consistency

- Strict Brand Adherence: Always check context and the `skills/brand-guidelines` configuration before adding new color, typography, or spacing classes to the UI.
- No Ad-Hoc Hex Codes: Never introduce random, hardcoded `#hex` codes into individual components. If a color is needed, pull it from the established central CSS variables or Tailwind config.
- Utilize established components instead of reinventing the wheel whenever possible (e.g. use an existing Button component instead of styling a `<button>` from scratch).
