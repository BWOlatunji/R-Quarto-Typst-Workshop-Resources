// STEP 8: the factbox component, then two calls with different colours.
#set page(fill: rgb("#fdfbf5"), margin: 1in)

#let factbox(title: "Fun Fact", accent: rgb("#d65a28"), fill: rgb("#fff4e8"), body) = {
  block(
    width: 100%, fill: fill, stroke: (left: 3pt + accent),
    inset: 12pt, radius: 4pt, breakable: false,
  )[
    #text(weight: "bold", size: 11.5pt, fill: accent)[#title]
    #v(0.3em)
    #body
  ]
}

#factbox(title: "About this report")[This box uses the defaults.]
#factbox(title: "A blue box", accent: rgb("#2568c2"), fill: rgb("#eef5fc"))[Same function, different colours.]
