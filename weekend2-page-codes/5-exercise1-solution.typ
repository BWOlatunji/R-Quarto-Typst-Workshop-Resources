// EXERCISE 1 SOLUTION
#set page(fill: rgb("#fdfbf5"), margin: 1in)
#let accent = rgb("#2568c2")

#show heading.where(level: 2): it => {
  block(above: 1.2em, below: 0.6em)[
    #text(fill: accent, weight: "bold")[#it.body]
  ]
}

== A subsection
This heading picked up the colour automatically.
