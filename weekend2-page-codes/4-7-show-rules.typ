// STEP 4.7: show rules
// SAY:    "Show every level-1 heading like this. it is the heading, it.body is its text."
// DO:     compile with  quarto typst compile <this file>
// EXPECT: the main heading is orange, bold and larger, without touching the heading itself.
// (A student who falls behind can open this file and carry on from here.)

#set page(fill: rgb("#fdfbf5"), margin: 1in)
#set text(font: ("Arial", "Liberation Sans", "Helvetica"), size: 20pt, fill: rgb("#262524"))

#let accent = rgb("#d65a28")
#let n_books = 284
#let shout(word) = upper(word) + "!"
#let greeting = [_Ina kwana_, *world*.]

#show heading.where(level: 1): it => {
  block(above: 1.2em, below: 0.6em)[
    #text(fill: accent, weight: "bold", size: 20pt)[#it.body]
  ]
}

= My first Typst file

This is a paragraph. Some words are *bold* and some are _italic_.

- A bullet point
- Another bullet point

== A smaller heading

Typst reads this file top to bottom.

The answer is #(6 * 7).

There are #n_books books on the shelf.

#text(fill: accent)[This sentence is orange.]

#shout("Tinubu")

#greeting
#greeting
