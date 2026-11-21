// STEP 4.8: all five ideas together
// EXPECT: orange heading with a line under it, a sentence with bold 284,
//         and two orange stat cards side by side.

// 1. SET RULES: defaults for the whole document (always at the top)
#set page(fill: rgb("#fdfbf5"), margin: 1in)
#set text(font: ("Arial", "Liberation Sans", "Helvetica"), size: 14pt, fill: rgb("#262524"))

// 2. VARIABLES: store values once, reuse them everywhere
#let accent = rgb("#d65a28")
#let n_titles = 284

// 3. SHOW RULE: restyle every level-1 heading automatically
#show heading.where(level: 1): it => {
  block(below: 0.9em)[
    #text(size: 30pt, weight: "bold", fill: accent)[#it.body]
    #v(0.2em)
    #line(length: 100%, stroke: 1.5pt + accent)
  ]
}

// 4. FUNCTION + CONTENT BLOCK: a reusable stat card
#let stat(number, label) = box(
  stroke: 1.5pt + accent,
  radius: 8pt,
  inset: 14pt,
  width: 7cm,
)[
  #align(center)[
    #text(size: 30pt, weight: "bold", fill: accent)[#number] \
    #text(size: 14pt)[#label]
  ]
]

// ---- The document itself ----

= Three centuries of bears

Bears appear in *#n_titles* unique titles across this collection, more than any other animal.

#v(0.4em)

// 5. The function called twice with different arguments
#stat("62", "years, oldest title")
#h(0.6em)
#stat("4.33", "average rating")
