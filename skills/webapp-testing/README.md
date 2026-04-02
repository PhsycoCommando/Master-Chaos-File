# Web App Testing Skill

**Core Skill File:** [`SKILL_webapp-testing.md`](SKILL_webapp-testing.md)

## What is this skill?
This skill teaches the AI how to behave like a QA engineer. It provides the AI with knowledge and utility scripts to spin up local web servers (frontend and backend), execute headless Chromium `Playwright` workflows against them, capture console logs, take screenshots of the DOM, and verify that the interface is functioning correctly.

Rather than the AI attempting to write blind validation code, this skill instructs the AI to use a "Reconnaissance-then-Action" pattern where it boots the server, visits the URL, waits for all Javascript to render, parses the true DOM elements, and *then* builds an action script (e.g. `page.click()`) to test the flow. The complex server lifecycle management is abstracted away in the `scripts/with_server.py` utility so the AI only has to focus on writing standard python Playwright tests.

## When to use it
Trigger this skill whenever you want to test web outputs, verify web interactions, or take screenshots of local servers:
- "Test that this React checkout form successfully navigates to the next page."
- "Boot up the backend and frontend, and run a Playwright script to verify the login flow."
- "Take a screenshot of `localhost:3000` so I can see what you built."
- "Please use webapp-testing to click around the UI and verify there are no console errors."

## How to use it
Refer to `SKILL_webapp-testing.md` for the playbook. The AI will generally:
1. Identify if the application is static HTML or a dynamic framework.
2. Formulate a quick python script using `from playwright.sync_api import sync_playwright`.
3. Wrap execution of the test script using `python scripts/with_server.py --server "npm run dev" --port 5173 -- python test.py` to ensure the server is alive and ports are open before navigation hits.
4. Report back the visual or text-based results of the automation.

## Keep or Delete?
- **Keep it if:** You are asking the AI to write frontends, debug user-flows, or want it to visually verify its own Javascript/React implementations without needing to open the browser yourself.
- **Delete it if:** You do not work with web UI code, have no need for end-to-end browser testing, or rely entirely on unit testing frameworks instead of Playwright.
