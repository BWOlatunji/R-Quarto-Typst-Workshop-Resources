// STEP 4.3: variables with #let
// SAY:    "#let is like <- in R."
// DO:     compile with  quarto typst compile <this file>
// EXPECT: 284 books, and one orange sentence.
// (A student who falls behind can open this file and carry on from here.)

#let accent = rgb("#d65a28")
#let n_books = 284

= My first Typst file

This is a paragraph. Some words are *bold* and some are _italic_.

- A bullet point
- Another bullet point

== A smaller heading

Typst reads this file top to bottom.

The answer is #(6 * 7).

There are #n_books books on the shelf.

#text(fill: accent)[This sentence is orange.]
