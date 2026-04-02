# Browser Use Skill

**Core Skill File:** [SKILL_browser-use.md](SKILL_browser-use.md)

## What is this skill?
This skill enables the AI to act as a web automation operator by granting it full control over a headless browser instance. Instead of just scraping static HTML, the AI can visually navigate pages, click buttons, fill out forms, bypass JavaScript rendering walls, and execute full end-to-end user flows just like a human would.

It transforms the AI from a simple code generator into a capable QA engineer, research analyst, and automation technician.

## When to use it
Trigger this skill whenever you need to interact with the live internet dynamically:
- "Check that the signup flow on our staging environment works end-to-end and screenshot any errors."
- "Log into the SaaS dashboard, navigate to the billing section, and download my latest invoice."
- "Find the three most recent funding announcements in climate tech, read the press releases on their live sites, and summarize the investors."
- "Click through this multi-step wizard and verify the confirmation page."

## How to use it
Refer to SKILL_browser-use.md for instructions on how to instantiate the browser connection and issue interaction commands. The API keys required to spin up the local headless instances are securely stored in the .env file within this directory.

Because this allows the agent to essentially "see" the page layout, you do not need to provide it with exact HTML DOM structures or CSS selectors ahead of time. Simply give the agent standard natural language commands ("Click the green 'Sign Up' button," "Read the pricing table").

## Keep or Delete?
- **Keep it if:** You regularly need to perform QA testing on your web apps, pull data from JavaScript-heavy websites that break standard scrapers, or automate clicking through live forms and dashboards.
- **Delete it if:** You only build backend APIs, don't rely on web research or live UI testing, and have zero need to interface with external websites.
