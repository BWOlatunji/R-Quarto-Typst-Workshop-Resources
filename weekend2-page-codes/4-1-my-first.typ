// STEP 4.1: your first standalone .typ file
// SAY:    "A .typ file is just Typst from line one. = is a heading, like # in Markdown."
// DO:     compile with  quarto typst compile <this file>
// EXPECT: a big heading, bold and italic words, two bullets, a smaller heading.
// (A student who falls behind can open this file and carry on from here.)

= My first Typst file

This is a paragraph. Some words are *bold* and some are _italic_.

- A bullet point
- Another bullet point

== A smaller heading

Typst reads this file top to bottom.
