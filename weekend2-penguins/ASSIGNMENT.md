# Weekend 2 Assignment: The Typst Edition of the Penguin Report

**Workshop:** R + Quarto + Typst: The Complete Data Reporting Workshop
**Topic:** Quarto and Typst (Weekend 2)
**Time needed:** 3 to 4 hours
**Builds on:** your finished Weekend 1 assignment (`penguins-report.qmd`)
**Hand in:** `penguins-report-typst.qmd`, your `partials/` folder (both `.typ` files) and the rendered `penguins-report-typst.pdf`

## The task

Last weekend you wrote a clean report about the Palmer Penguins. It was correct, but it looked like every other default document. This weekend you give the **same report** a designed look of its own by moving it to Typst.

You will not change the analysis. You will:

1. switch the document to the Typst format,
2. write a small custom Typst template (colours, headings, page, components),
3. replace the plain callouts with your own components that are filled with numbers computed in R.

The result should look like a report from a design studio, and it should still re-render from the data in one command.

## Starting files

Copy `penguins-report.qmd` from Weekend 1 to a new file called **`penguins-report-typst.qmd`**. Then download the `starter/` folder for this assignment. It contains:

- `partials/typst-template.typ`: a plain, working template full of `TODO` comments
- `partials/typst-show.typ`: the small file that connects the template to Quarto (do not edit it)

Put the `partials/` folder next to your `.qmd` file.

## Your report must contain

### 1. Switch to Typst (15 marks)
- Replace the HTML and PDF formats with `format: typst`.
- Use `template-partials` to point to both `.typ` files.
- Set `papersize`, `fontsize`, `toc: true`, a `toc-title` and `section-numbering`.
- Remove the options that only work in HTML (`code-fold`, `code-tools`, `embed-resources`, `theme`).
- Set `keep-typ: true` while you work, so you can read the generated `.typ` file if something breaks. Set it back to `false` before you hand in.
- The report must still render, with all of your tables, charts and inline numbers.

### 2. A design system (20 marks)
In `partials/typst-template.typ`:
- Define a **palette** with `#let`: at least two accent colours and one page colour (an off-white).
- Define a **font stack** (a list of fonts, so the report still works on a machine without your first choice).
- Set the **page fill** colour with `set page(fill: ...)`.
- Write a **show rule** for level-1 headings and another for level-2 headings, each with its own colour, weight and size.
- Style **tables** with `set table(...)`: a light header colour and thin lines.
- Improve the **title block**: a larger title, an italic subtitle, a short accent line, the author and the date.

### 3. Two components (20 marks)
Also in your template, write:
- `factbox(title:, accent:, fill:, body)`: a coloured box with a thick left border, a bold title and the body text.
- `statcard(number:, label:, color:)`: a bordered card with a big number above a small caption.

Both must have sensible default values for their named parameters, as in Weekend 2.

### 4. Typst generated from R (25 marks)
In your `.qmd`:
- Define a `typst_raw()` helper in your setup chunk, exactly like the one from class.
- Add a **row of four stat cards** to the introduction (number of penguins, species, islands, years). Build it with `sprintf()` and `results: asis`, using the numbers already stored in R variables. **No number is typed by hand.**
- Replace the Weekend 1 callouts with your `factbox()` component:
  - an "About this document" box,
  - a "Key takeaways" box containing a list of findings, with at least two numbers taken from R,
  - a "Limitations" box.
- Use **three different colours** across your factboxes.

### 5. Charts that fit the design (10 marks)
- Use your palette colours in the charts.
- Make the chart background the same colour as your page fill, so charts do not look like white rectangles on a coloured page.
- Every figure has a caption and fits on its page.

### 6. Polish and rendering (10 marks)
- No heading is left alone at the bottom of a page, and no chart is cut off.
- The document renders from scratch with no errors. Restart R and render again before you hand in.
- Every `TODO` in the starter template has been dealt with.

## Presentation rules
- Keep the analysis from Weekend 1: the same sections, tables and charts.
- All code is hidden in the PDF (`echo: false`).
- Do not use emoji in the report. (Weekend 3 explains why they are risky in Typst, and how to handle them.)

## Bonus (up to 10 marks)

Pick **one**:
- **Cover page:** add a full cover page to your template (title centred, a coloured band, author and date at the bottom), followed by the table of contents.
- **Footer:** add a footer with the report name and the page number, using `context` and `counter(page)`.
- **Third component:** add a `sidestat()` or `spotlight()` component and use it at least twice, with numbers from R.

## Marking guide

| Total | Rating |
|---|---|
| 90 to 100 | Excellent: a report you could send to a client |
| 70 to 89 | Good: everything works, a few design or layout gaps |
| 50 to 69 | Fair: it renders, but the template or the R-to-Typst parts are incomplete |
| Below 50 | Needs another try: it does not render, or key sections are missing |

## Hints

- Start by switching the format and getting a plain render to work **before** you touch any design.
- Add one feature at a time and render after each one. When something breaks, you will know which change did it.
- Look at the generated `.typ` file (`keep-typ: true`) to see what Quarto produced from your Markdown.
- Colour names such as `c-blue` are defined in your template. Inside your raw Typst you can use them directly, without `rgb()`.
- `sprintf()` and `results: asis`: compute every value first in plain R, then splice it into the Typst string. Inline `` `r x` `` does **not** work inside the string.
- `unexpected argument` errors usually mean that a function was called with a parameter you did not define.
- A Typst error shows the line number in the `.typ` file. Open the file and look at that line.
- Fonts: Typst does not warn you if a font is missing. If your text looks different from what you expect, check that the font is installed.

## Model solution

A complete worked solution is in `solution/`, with the Typst template, the `.qmd` and the rendered PDF. **Try the assignment yourself first**, then compare. Your design can look completely different from the model, and it should: the colours and layout are yours to choose.
