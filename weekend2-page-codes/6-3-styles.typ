// styles.typ: ONLY styling, no headings or sentences.
// Loaded by 6-3-using-styles.qmd through include-in-header.
#set page(fill: rgb("#fdfbf5"), margin: 1in)
#let accent = rgb("#d65a28")

#show heading.where(level: 1): it => {
  block(below: 0.8em)[
    #text(fill: accent, weight: "bold", size: 20pt)[#it.body]
  ]
}

#let stat(number, label) = box(stroke: 1.5pt + accent, radius: 6pt, inset: 10pt)[
  #align(center)[
    #text(size: 22pt, weight: "bold", fill: accent)[#number] \
    #text(size: 9pt)[#label]
  ]
]
