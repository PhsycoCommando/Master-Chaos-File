# Discord GIF Creator Skill

**Core Skill File:** [`SKILL_discord-gif-creator.md`](SKILL_discord-gif-creator.md)

## What is this skill?
This skill equips the AI with the technical specs, Python utility wrappers, and creative animation knowledge to generate animated GIFs perfectly optimized for Discord. It ensures that output GIFs adhere to Discord's strict size, resolution (128x128 for emojis), FPS, and color count requirements. It abstracts away the math for complex easing animations (bounces, pulses, shakes) and provides a `GIFBuilder` to render the final files efficiently using `Pillow`.

## When to use it
Trigger this skill whenever the user requests a custom GIF or specifically mentions Discord emojis, for example:
- "Make me a GIF of a bouncing red heart for a Discord emoji."
- "Animate this logo I uploaded so it does a 'pulse' effect."
- "Create an exploding confetti animation for a celebration channel."
- "Take this static image and make a spinning Discord emoji out of it."

## How to use it
Refer to `SKILL_discord-gif-creator.md` for the overarching playbook. The AI will write custom `Pillow` (PIL) rendering code leveraging the provided utility scripts in the `core/` folder:
- **`core.gif_builder`**: Assembles the PIL frames and handles saving with targeted optimization.
- **`core.easing`**: Provides mathematical functions (`ease_in`, `bounce_out`, etc.) for fluid motion interpolation.
- **`core.validators`**: Verifies that the resulting GIF mathematically qualifies for Discord's upload limit.

The AI is instructed to use vibrant colors, thick lines, shading layers, and complex shapes to make the output look like a polished graphic rather than placeholder art.

## Keep or Delete?
- **Keep it if:** You frequently generate custom emojis, run a fun/active Discord workspace, or want an AI assistant capable of whipping up unique graphical animations entirely through Python code.
- **Delete it if:** You use Teams/Discord (though the code could easily be adapted), don't care about custom chat emojis, or prefer using dedicated UI tools like After Effects.
