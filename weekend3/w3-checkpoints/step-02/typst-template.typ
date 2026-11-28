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
  [Org from YAML: #org]
  doc
}
