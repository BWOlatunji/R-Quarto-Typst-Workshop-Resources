// STEP 4.7 (gotcha): a show rule WITHOUT block(...)
// SAY:    "Without the block, the heading is just text and flows into the next paragraph."
// DO:     compile with  quarto typst compile <this file>
// EXPECT: the heading loses its space: it sits tight against the paragraph below.
//         (In a Quarto document it can even run into the paragraph on the same line:
//          see 4-7c-show-rule-no-block-in-quarto.qmd.) Wrap it in block(...) to fix.
// (A student who falls behind can open this file and carry on from here.)

#set page(fill: rgb("#fdfbf5"), margin: 1in)
#set text(font: ("Arial", "Liberation Sans", "Helvetica"), size: 12pt, fill: rgb("#262524"))

#let accent = rgb("#d65a28")
#let n_books = 284

#show heading.where(level: 1): it => {
  text(fill: accent, weight: "bold", size: 20pt)[#it.body]
}

= My first Typst file

This is a paragraph. Some words are *bold* and some are _italic_.

- A bullet point
- Another bullet point

== A smaller heading

Typst reads this file top to bottom.
