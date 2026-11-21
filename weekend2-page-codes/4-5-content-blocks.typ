// STEP 4.5: content blocks [ ... ]
// SAY:    "Square brackets make a chunk of formatted text you can store and reuse."
// DO:     compile with  quarto typst compile <this file>
// EXPECT: "Hello, world." printed twice, with world in bold.
// (A student who falls behind can open this file and carry on from here.)

#let accent = rgb("#d65a28")
#let n_books = 284
#let shout(word) = upper(word) + "!"
#let greeting = [Hello, *world*.]

= My first Typst file

This is a paragraph. Some words are *bold* and some are _italic_.

- A bullet point
- Another bullet point

== A smaller heading

Typst reads this file top to bottom.

The answer is #(6 * 7).

There are #n_books books on the shelf.

#text(fill: accent)[This sentence is orange.]

#shout("hooray")

#greeting
#greeting
