// STARTER TEMPLATE: Weekend 2 assignment.
// Open this file, read it from top to bottom, then complete every  TODO.
// The render will work as it is (plain black and white); each TODO makes it look better.

// ---- 1. palette ---------------------------------------------------
// TODO 1: pick your colours. Add at least two accents and one page colour.
#let c-ink    = rgb("#262524")
#let c-accent = rgb("#2774D4")      // heading colour: change me
// #let c-accent2 = ...             // a second accent for your own use
// #let c-paper  = ...              // a warm or cool off-white for the page background

// ---- 2. font stack ---------------------------------------------------
// A list tries each font in order and uses the first one that is installed.
#let body-font = ("Lato", "Segoe UI", "Helvetica", "Arial")

// ---- 3. components ---------------------------------------------------

// TODO 2: write factbox(title:, accent:, fill:, body)
//   A block with a coloured left border, a bold title and the body text.
//   Copy the pattern from Weekend 2, Section 7.
#let factbox(title: "Note", accent: c-accent, fill: white, body) = {
  [*#title* \ #body]
}

// TODO 3: write statcard(number:, label:, color:)
//   A bordered box with a big number over a small caption (Weekend 2, Exercise 2).
#let statcard(number: "", label: "", color: c-accent) = {
  [#number #label]
}

// ---- 4. the article function --------------------------------------
#let article(
  title: none, subtitle: none, authors: none, date: none,
  abstract: none, abstract-title: none, cols: 1,
  margin: (x: 1.1in, y: 1in), paper: "us-letter", lang: "en", region: "US",
  font: "Lato", fontsize: 10.5pt,
  heading-family: "Quicksand", heading-weight: "bold", heading-style: "normal",
  heading-color: black, heading-line-height: 0.65em,
  sectionnumbering: none, pagenumbering: "1",
  toc: false, toc_title: none, toc_depth: none, toc_indent: 1.5em,
  doc,
) = {
  // TODO 4: add  fill: <your page colour>  inside set page(...)
  set page(paper: paper, margin: margin)
  set par(justify: true, leading: 0.7em)
  set text(lang: lang, region: region, font: body-font, size: fontsize, fill: c-ink)

  set heading(numbering: sectionnumbering)

  // TODO 5: restyle level-1 headings with a show rule (accent colour, bold, bigger),
  //   and level-2 headings with a second colour (Weekend 2, Section 3).
  // show heading.where(level: 1): it => { ... }
  // show heading.where(level: 2): it => { ... }

  // TODO 6 (optional): style tables with  set table(...)  (light header fill, thin lines)

  if title != none {
    // TODO 7: a nicer title block (bigger title, subtitle in italics, an accent line, author and date)
    text(size: 24pt, weight: "bold")[#title]
    if subtitle != none { linebreak(); subtitle }
    if authors != none { for author in authors [ \ #author.name ] }
    if date != none { [ \ #date] }
    v(1em)
  }

  if abstract != none {
    block(inset: 1em)[#text(weight: "bold")[#abstract-title] #h(1em) #abstract]
  }

  if toc {
    outline(title: toc_title, depth: toc_depth, indent: toc_indent)
    pagebreak()
  }

  if cols == 1 { doc } else { columns(cols, doc) }
}
