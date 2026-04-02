# Skill Creator Skill

**Core Skill File:** [`SKILL_skill-creator.md`](SKILL_skill-creator.md)

## What is this skill?
This is a "meta-skill." It serves as the master playbook for creating, iterating, testing, and packaging *other* skills. It walks the AI through a rigorous development loop whenever a user wants to build a new agentic capability. 

The skill creator forces the AI to not just write a loose markdown file, but to properly define triggers, create robust test cases, quantitatively and qualitatively benchmark the skill's outputs using bundled evaluation tools, run automated optimization loops for the description to ensure the AI accurately triggers the skill, and finally pack it into a distributable `.skill` file.

## When to use it
Trigger this skill whenever the user explicitly asks to:
- "Create a new skill for [Task]."
- "Turn this workflow into a skill I can use later."
- "Evaluate or test this skill I built."
- "Optimize the description of this skill so it triggers more reliably."
- "Iterate or update the existing [X] skill based on this feedback."

## How to use it
Consult `SKILL_skill-creator.md` out of the gate. The core workflow is:
1. **Capture Intent**: Figure out what the skill should do and when it should trigger.
2. **Draft & Layout**: Write the initial `SKILL.md` along with any necessary `scripts/` or `references/`.
3. **Eval & Benchmark**: Use the test scripts provided to launch the skill against multiple scenarios simultaneously. Generate the Eval Viewer HTML to visually confirm quality with the user.
4. **Optimize Trigger**: Execute the description optimization script to ensure the LLM will reliably understand when to use it in the future.
5. **Package**: Run the packaging python script to produce the `.skill` file.

## Keep or Delete?
- **Keep it if:** You are constantly customizing your AI setup, building new agentic capabilities, writing your own complex workflows, or packaging skills for your team to use.
- **Delete it if:** You are strictly an end-user of skills, relying on pre-built capabilities, and have absolutely zero intention of developing or managing custom AI behaviors.
