# Web Artifacts Builder Skill

**Core Skill File:** [`SKILL_web-artifacts-builder.md`](SKILL_web-artifacts-builder.md)

## What is this skill?
This skill drastically expands the complexity of web UI artifacts the AI can build for you. Normally, AI-generated HTML artifacts have to be relatively simple single-file documents. This toolkit provides bash scripts (`init-artifact.sh` and `bundle-artifact.sh`) that allow the AI to scaffold a full modern frontend repository (React 18, TypeScript, Tailwind CSS, and 40+ Shadcn/ui components), build complex interconnected routing and state management over multiple files in the background, and then compile/bundle the entire thing into a single mega-HTML file (`bundle.html`) that can be pushed to you as a functioning artifact. 

## When to use it
Trigger this skill whenever you need a complex, interactive web application or prototype built, such as:
- "Can you build a fully functioning React dashboard with routing and state for my project?"
- "Use the web artifact builder to create a multi-page e-commerce prototype."
- "I need a complex UI built with Shadcn components, generated as a single HTML artifact."
- "Scaffold a React+Tailwind application and show me the bundled frontend."

## How to use it
Refer to `SKILL_web-artifacts-builder.md` for the overarching workflow instructions. The AI will:
1. Run `bash scripts/init-artifact.sh <project-name>` to spin up the React environment.
2. Write all the necessary `.tsx` and `.css` files just like a human developer.
3. Run `bash scripts/bundle-artifact.sh` to compile it all down to a single base64/inline HTML artifact.
4. Present the `bundle.html` text as an artifact for you to view in your chat interface.

## Keep or Delete?
- **Keep it if:** You use the AI to rapidly prototype complex SaaS frontends, build React applications, or want to interact with highly advanced, multi-component UIs directly in your chat interface.
- **Delete it if:** Your frontend needs consist strictly of simple static HTML/vanilla JS, or you have zero need for generating web applications.
