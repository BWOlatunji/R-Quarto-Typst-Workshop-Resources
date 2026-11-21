// STEP 4.2: the # rule
// SAY:    "# means: this is code, not text."
// DO:     compile with  quarto typst compile <this file>
// EXPECT: the extra line "The answer is 42."
// (A student who falls behind can open this file and carry on from here.)

= My first Typst file

This is a paragraph. Some words are *bold* and some are _italic_.

- A bullet point
- Another bullet point

== A smaller heading

Typst reads this file top to bottom.

The answer is #(6 * 7).
