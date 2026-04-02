# DOCX Skill

**Core Skill File:** [`SKILL_docx.md`](SKILL_docx.md)

## What is this skill?
This skill gives the AI advanced knowledge and procedures for generating, reading, editing, and analyzing Microsoft Word (`.docx`) files. It outlines exactly how to manipulate the native XML structures inside a `.docx` archive, how to build new documents from scratch using the `docx` Node.js package, and how to properly work with advanced features like tracked changes, comments, image placements, headers/footers, and precise DXA unit table formatting.

## When to use it
Trigger this skill whenever the user explicitly talks about Microsoft Word or `.docx` files, such as:
- Asking to read, extract, or summarize a `.docx` file.
- Requesting to generate a polished professional document (report, memo, letter) that should be downloadable as a Word document.
- Asking to apply or resolve tracked changes, or insert comments into an existing Word doc.
- Asking to tweak page layouts, fix Unicode rendering issues, generate standard styles/bullets, or correct table rendering in Word.

## How to use it
When triggered, consult `SKILL_docx.md` to identify the correct approach:
- **For establishing net-new documents:** Write JavaScript utilizing the `docx` npm package, adhering strictly to the documentation logic for margins, fonts, and structures to ensure broad compatibility (even with Google Docs).
- **For editing documents:** Use the indicated Python scripts to unpack the `.docx` archive so that raw XML features can be read or modified. Apply edits at the structural level (taking precise care of things like `<w:ins>` and `<w:del>` elements for tracked modifications) before packing it back together.

## Keep or Delete?
- **Keep it if:** You regularly interact with Microsoft Word documents, review tracked changes, need to generate downloadable DOCX reports via scripts, or work in a heavy Microsoft Office ecosystem.
- **Delete it if:** Your workflow is entirely in Markdown, Google Docs, Notion, or plaintext, and you never touch or generate `.docx` files.
