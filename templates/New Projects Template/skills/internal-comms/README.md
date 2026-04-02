# Internal Comms Skill

**Core Skill File:** [`SKILL_internal-comms.md`](SKILL_internal-comms.md)

## What is this skill?
This skill ensures that whenever the AI is asked to draft internal company communications, it adheres strictly to the preferred formatting and professional tone of the organization. Rather than generating a generic, fluffy AI corporate email, it relies on strict structural templates located in the `examples/` directory to produce tight, effective updates.

## When to use it
Trigger this skill whenever the user asks to write or draft any internal company material:
- Weekly status reports or project updates
- 3P Updates (Progress, Plans, Problems)
- Company newsletters or leadership announcements
- Project FAQs or incident reports

## How to use it
When prompted to write internal comms, the AI should check `SKILL_internal-comms.md`, which routes it to a specific template file located in the `examples/` directory. For example:
- **3P Updates:** Pulls rules from `examples/3p-updates.md`.
- **Newsletters:** Pulls rules from `examples/company-newsletter.md`.
- **FAQs:** Pulls rules from `examples/faq-answers.md`.
- **Everything else:** Falls back to `examples/general-comms.md`.

The AI must read and adopt the style, constraints, and tone given in those template files before writing its draft.

## Keep or Delete?
- **Keep it if:** You frequently generate or compile status reports, team updates, or corporate comms, and you want to ensure the AI explicitly matches your company's standardized formats.
- **Delete it if:** You use your workspace entirely for writing code, personal hobby tracking, or you prefer to write all your internal communications completely manually.
