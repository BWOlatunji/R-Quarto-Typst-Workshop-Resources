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
