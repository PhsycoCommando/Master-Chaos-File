# XLSX Master Skill

**Core Skill File:** [`SKILL_xlsx.md`](SKILL_xlsx.md)

## What is this skill?
This skill teaches the AI how to act as an expert financial modeler and data analyst when handling spreadsheet files (`.xlsx`, `.csv`). It provides strict directives that ensure the AI builds *actual models* instead of just dumping flat data into cells. It mandates:
1. Writing real Excel equations (`=SUM(A1:A5)`) instead of doing the math in Python and hardcoding the result.
2. Adhering to Wall-Street-standard color coding (Blue for inputs, Black for formulas, Green/Red for links) when modifying or creating financial models.
3. Automatically validating worksheets against `#REF!`, `#DIV/0!`, and other Excel errors by booting a headless LibreOffice script (`scripts/recalc.py`) to simulate native Excel computation before delivering the file to you.

## When to use it
Trigger this skill whenever you are dealing with spreadsheets, financial models, tabular data, or CSVs:
- "Can you take a look at the data in `revenues.xlsx` and generate a growth projection?"
- "Build me a fully-linked financial model for a SaaS company in Excel."
- "Parse this messy CSV, clean the rows, and output a properly formatted `.xlsx`."
- "Go into my budget spreadsheet, fix the broken formulas, and format it professionally."

## How to use it
Refer to `SKILL_xlsx.md` for the overarching playbook. The AI will primarily rely on standard python data engines (`pandas` for basic data ingestion/analysis, and `openpyxl` for writing formulas and managing complex cell formatting). 

CRITICALLY: The AI is instructed to *always* run `python scripts/recalc.py <file>` prior to handing an edited spreadsheet back to you. This runs the background engine to ensure all dynamic formulas actively resolve mathematically and do not produce errors.

## Keep or Delete?
- **Keep it if:** You regularly work with Excel files, have the AI process CSV data dumps, or need it to construct/diagnose financial models, financial reports, or linked workbooks for you.
- **Delete it if:** Your tabular data exclusively lives in SQL databases, and you never use the AI to touch Excel spreadsheets or CSVs.
