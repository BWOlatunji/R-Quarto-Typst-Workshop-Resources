// STEP 4.6: set rules at the TOP
// SAY:    "A set rule changes a default from this line onwards, so it goes first."
// DO:     compile with  quarto typst compile <this file>
// EXPECT: a cream page, 1-inch margins, Arial text.
// (A student who falls behind can open this file and carry on from here.)

#set page(fill: rgb("#fdfbf5"), margin: 1in)
#set text(font: ("Arial", "Liberation Sans", "Helvetica"), size: 12pt, fill: rgb("#262524"))

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
