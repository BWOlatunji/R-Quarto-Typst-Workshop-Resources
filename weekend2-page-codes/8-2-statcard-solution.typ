// EXERCISE 2 SOLUTION: statcard
#let statcard(number: "", label: "", color: rgb("#d65a28")) = box(
  stroke: 1pt + color, radius: 6pt, inset: 10pt, width: 3.4cm
)[
  #align(center)[
    #text(size: 20pt, weight: "bold", fill: color)[#number] \
    #text(size: 8pt, fill: rgb("#52514e"))[#label]
  ]
]

#statcard(number: "284", label: "titles", color: rgb("#d65a28"))
#statcard(number: "41", label: "otter books", color: rgb("#2568c2"))
#statcard(number: "4.3", label: "avg rating", color: rgb("#148a5c"))
