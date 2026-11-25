# Weekend 1 Assignment: Meet the Palmer Penguins

**Workshop:** R + Quarto + Typst: The Complete Data Reporting Workshop
**Topic:** Quarto with R (Weekend 1)
**Time needed:** 2 to 3 hours
**Hand in:** `penguins-report.qmd` plus the rendered `penguins-report.html` (a PDF as well, if you can)

## The task

You have been asked to analyse the Palmer Penguins data and write a short, clear report about it. You will use only what we covered in Weekend 1: Markdown, code chunks, inline code, figures, tables, callouts and document options.

The data comes from the `palmerpenguins` package, which you already installed during setup:

```r
library(palmerpenguins)
penguins
```

It has 344 penguins (3 species, 3 islands) with bill length and depth, flipper length, body mass, sex and year.

## Set-up

Create a new Quarto document called `penguins-report.qmd`. Load your packages in a setup chunk that does not appear in the output (`include: false`): `palmerpenguins`, `dplyr`, `tidyr`, `ggplot2` and `knitr`.

## Your report must contain

### 1. Front matter and options (10 marks)
- A title, a subtitle, your name and `date: today`.
- HTML output with a table of contents and numbered sections.
- Global options so that warnings and messages do not appear in the report.

### 2. Introduction (10 marks)
- One short paragraph describing the data and what your report covers.
- **At least three numbers written with inline code** (for example the number of penguins, species and islands). No number in your text may be typed by hand.
- A callout (`.callout-note`) that explains what the document is.

### 3. The data (10 marks)
- A `kable()` table showing the first six rows, with a caption.
- A short note on missing values, including a table of the columns that have any.

### 4. Who lives where? (15 marks)
- A table of the number of penguins by species and island.
- A bar chart of penguins per island, coloured by species, with a title and axis labels.
- Two or three sentences explaining what you see.

### 5. How do the species differ? (20 marks)
- A table of average bill length, bill depth, flipper length and body mass for each species, rounded to one decimal place.
- A chart of the distribution of body mass for each species (histogram, boxplot or density).
- A scatter plot of bill length against bill depth, coloured by species.
- Which species is the heaviest? Answer in a sentence where the species name is computed with inline code.

### 6. Flippers and body mass (15 marks)
- A scatter plot of flipper length against body mass with a trend line (`geom_smooth(method = "lm")`).
- The correlation between the two variables, quoted in your text with inline code.
- A callout (`.callout-tip` or `.callout-warning`) with your interpretation.

### 7. Males and females (10 marks)
- A table of average body mass by species and sex.
- A chart comparing male and female body mass.
- One sentence on whether males are heavier in every species.

### 8. Findings and limitations (10 marks)
- A `.callout-tip` with three to five key findings.
- A `.callout-important` with two limitations of this data.

## Presentation rules (counted in every section)

- Every chart has a title and readable axis labels.
- Every table has a caption.
- Use chunk labels (`#| label: fig-...`, `#| label: tbl-...`) and set figure sizes.
- Hide the code in the output (`echo: false`), except in your setup chunk, which is hidden entirely.
- The document must **render from scratch with no errors**. Before you submit, restart R and render again.

## Bonus (up to 10 marks)

Pick **one**:

- **Simpson's paradox:** Show the bill length against bill depth plot with one trend line for all penguins, then one per species. Explain why the two stories disagree.
- **Three formats:** Add `pdf` and `docx` outputs and render all three.
- **Year by year:** Show whether average body mass changed between 2007 and 2009, and say whether you think the change is meaningful.

## Marking guide

| Total | Rating |
|---|---|
| 90 to 100 | Excellent: a report you could send to a client |
| 70 to 89 | Good: everything works, a few presentation gaps |
| 50 to 69 | Fair: the report renders but is missing sections |
| Below 50 | Needs another try: it does not render, or key sections are missing |

## Hints

- To get the first six rows: `penguins |> head(6)`
- To count by two variables: `count(species, island)`
- To spread a count table wide: `pivot_wider(names_from = island, values_from = n)`
- Missing values: `colSums(is.na(penguins))`
- To use only complete rows: `drop_na(bill_length_mm, bill_depth_mm, flipper_length_mm, body_mass_g)`
- Inline code looks like `` `r nrow(penguins)` ``, so compute your numbers in the setup chunk first, then use them in the text.
- Stuck? Run `quarto render penguins-report.qmd` in the Terminal tab. The error message tells you the line number of the problem.

## Model solution

A complete worked solution is in `solution/penguins-report.qmd`, with a rendered HTML and PDF version. **Try the assignment yourself first** and only then compare your report with the solution. Your report does not need to match it exactly: a different chart choice or a different way of wording a finding is fine as long as the numbers are right.
