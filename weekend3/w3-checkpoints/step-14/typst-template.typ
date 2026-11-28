// Outbreak SitRep layout. Edit colours/fonts here to match your client's brand.
#let brand = rgb("#0B5D7A")
#let accent = rgb("#C8442B")
#let soft = rgb("#EAF3F6")
#let sitrep(
  org: "Ministry of Health",
  outbreak: "Outbreak",
  sitrep-no: "1",
  period: "",
  country: "",
  prepared-by: "",
  doc,
) = {
  set page(
    paper: "a4",
    margin: (top: 2.6cm, bottom: 2cm, x: 1.9cm),
  )
  set text(font: ("Arial", "Liberation Sans", "Helvetica"), size: 9.5pt)
  set par(justify: false, leading: 0.62em)
  show heading.where(level: 1): it => {
    v(0.9em)
    block(width: 100%, below: 0.6em)[
      #text(13pt, weight: "bold", fill: brand)[#it.body]
      #v(-0.45em)
      #line(length: 100%, stroke: 1.2pt + brand)
    ]
  }
  show figure: it => block(breakable: false, it)
  show figure.caption: set text(8pt, fill: luma(90))

  // title banner on page 1
  block(width: 100%, fill: brand, inset: 16pt, radius: 3pt)[
    #set text(fill: white)
    #text(8.5pt, tracking: 1pt)[#upper(org) · #upper(country)]
    #v(2pt)
    #text(21pt, weight: "bold")[#outbreak Situation Report]
    #v(2pt)
    #text(11pt)[SitRep \##sitrep-no #h(1em) | #h(1em) Reporting period: #period]
  ]
  v(0.6em)
  doc
}

// Reusable KPI box:  #kpi("640", "Total cases")
#let kpi(value, label, color: brand) = block(
  width: 100%, inset: 9pt, radius: 3pt, stroke: 0.6pt + luma(210), fill: white,
)[
  #text(20pt, weight: "bold", fill: color)[#value] \
  #text(8pt, fill: luma(100))[#label]
]
