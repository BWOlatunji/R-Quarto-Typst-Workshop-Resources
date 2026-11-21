// STEP 4.6 (gotcha): set page in the MIDDLE of the file
// SAY:    "Watch the page break. Typst cannot restyle a page that already has content."
// DO:     compile with  quarto typst compile <this file>
// EXPECT: page 1 plain white with the heading; the rest on a NEW cream page 2.
// (A student who falls behind can open this file and carry on from here.)

= My first Typst file

// the set rule arrives too late, after content is already on page 1:
#set page(fill: rgb("#fdfbf5"), margin: 1in)
#set text(font: ("Arial", "Liberation Sans", "Helvetica"), size: 12pt, fill: rgb("#262524"))


This is a paragraph. Some words are *bold* and some are _italic_.

- A bullet point
- Another bullet point

== A smaller heading

Typst reads this file top to bottom.
