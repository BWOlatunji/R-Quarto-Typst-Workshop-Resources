# Weekend 2 demo files

One ready-made file for every live step on the student page (`workshop-site/weekend2.qmd`). The file names start with the **page section number**, so `4-3-variables.typ` belongs to section 4.3.

Use them to: (1) teach from, (2) recover if a live demo breaks, (3) hand to a student who falls behind. The `4-x` files are **cumulative snapshots**: each one contains everything from the steps before it.

## How to compile

Standalone Typst files (no Quarto document needed):

```bash
quarto typst compile 4-1-my-first.typ
```

Quarto documents:

```bash
quarto render 6-3-using-styles.qmd
```

## Index

| Page section | File | What it shows | Expected result |
|------------|-----------------------|-----------------------|-------------------------|
| 4.1 | `4-1-my-first.typ` | A first standalone file | Heading, bold, italic, bullets |
| 4.2 | `4-2-code-mode.typ` | The `#` rule | "The answer is 42." |
| 4.3 | `4-3-variables.typ` | `#let` variables | 284 books, one orange sentence |
| 4.4 | `4-4-functions.typ` | A function | HOORAY! |
| 4.5 | `4-5-content-blocks.typ` | A content block | Hello, **world**. twice |
| 4.6 | `4-6-set-rules.typ` | `set` rules at the top | Cream page, Arial |
| 4.6 | `4-6b-set-rules-gotcha.typ` | `set page` in the middle | **2 pages**: white, then cream |
| 4.7 | `4-7-show-rules.typ` | `show` rule with `block` | Orange, bold heading |
| 4.7 | `4-7b-show-rules-no-block.typ` | `show` rule without `block` | Heading tight against paragraph |
| 4.7 | `4-7c-show-rule-no-block-in-quarto.qmd` | Same gotcha inside Quarto | Heading runs into the paragraph |
| 4.8 | `4-8-five-ideas.typ` | All five ideas | Orange heading, line, two stat cards |
| 5 | `5-exercise1-starter.typ` | Exercise 1 with TODOs | (students fill it in) |
| 5 | `5-exercise1-solution.typ` | Exercise 1 answer | Blue level-2 heading, cream page |
| 5 | `5-error-demo.typ` | Break a bracket on purpose | Error message naming the line |
| 6.1 | `6-1-raw-block.qmd` | A raw `{=typst}` block | Blue rounded box |
| 6.2 | `6-2-set-page-gotcha.qmd` | `set page` in a body block | **2 pages**: white, then cream |
| 6.3 | `6-3-using-styles.qmd` + `6-3-styles.typ` | `include-in-header: file:` | **1 cream page**, orange Markdown heading, two cards |
| 6.4 | `6-4-typst-from-r.qmd` | Typst built from R | Orange box: otters, 41 |
| 6.4 | `6-4b-typst-raw-helper.qmd` | The `typst_raw()` helper | Same box, shorter code |
| 8 | `8-1-factbox.typ` | `factbox()` called twice | Two coloured boxes |
| 8 | `8-2-statcard-solution.typ` | Exercise 2 answer | Three stat cards |
| 8 | `8-3-factbox-from-r.qmd` | `factbox()` called from R | A box saying 344 penguins |
| 9 | `9-font-stack.typ` | A font list | Text in the first installed font |

Section 7 (templates) uses the three projects in the `demos/` folder at the project root, so it has no file here.

## Notes

- `6-4-typst-from-r.qmd` opens and closes its R chunk with **four** backticks on purpose. See the comment in the file.
- `8-3-factbox-from-r.qmd` needs the `palmerpenguins` package.
- Fonts: the files use a font list (`Arial`, `Liberation Sans`, `Helvetica`). Check `quarto typst fonts` on the machine you teach from.
- Rendered PDFs are not kept in this folder. Render them yourself the day before.
