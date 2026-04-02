# PDF Skill

**Core Skill File:** [`SKILL_pdf.md`](SKILL_pdf.md)

## What is this skill?
This skill serves as a comprehensive playbook for doing practically anything with PDF files programmatically. From simple tasks like extracting text and splitting/merging pages using python scripts (`pypdf`, `pdfplumber`), to more complex interactions like filling out PDF forms (`pdf-lib`), extracting raw structured tables, and OCR-ing scanned PDF pages into readable output (`pytesseract`). It provides battle-tested code snippets and terminal commands for Linux tools (like `qpdf` and `pdftotext`).

## When to use it
Trigger this skill whenever the user's request involves a `.pdf` file, such as:
- Merging, splitting, or rotating PDFs.
- Programmatically filling out an editable PDF form.
- Extracting raw text from a document or pulling dense data out of a grid-like PDF table.
- Securing files with passwords (encryption), watermarketing pages, or extracting raw embedded images.
- Generating automated reports directly to a PDF output using `.reportlab`.

## How to use it
Whenever tasked with a PDF manipulation, start with `SKILL_pdf.md`. It outlines exactly which library and script to use based on the task type (e.g., `pdftotext` for fast CLI processing, `pdfplumber` for table extraction, and `qpdf` for robust joining/splitting). For intricate forms, read the included `forms.md` to see exactly how to map out interactive elements or inject signatures. 

## Keep or Delete?
- **Keep it if:** Your workflows frequently deal with document processing, automating invoice ingestions, scraping data dumped into static PDFs, or needing to programmatically split and merge digital documents.
- **Delete it if:** Your projects and operations are completely independent of document management and you never need to programmatically deal with PDF files.
