// Model solution: the "Palmer Penguins" report theme (Weekend 2 assignment)
// A small custom Typst template, in the same shape as the one used in the real report:
//   1. a palette           
//   2. font stacks        
//   3. reusable components (factbox, statcard)
//   4. an article() function that sets the page and restyles headings, tables and the title.

// ---- 1. palette ---------------------------------------------------
#let c-blue    = rgb("#2774D4")
#let c-orange  = rgb("#E8663D")
#let c-violet  = rgb("#4B3BB0")
#let c-green   = rgb("#1FAF7C")
#let c-red     = rgb("#D64545")

#let c-ink         = rgb("#262524")
#let c-ink-soft    = rgb("#52514E")
#let c-muted       = rgb("#898781")
#let c-gridline    = rgb("#E1E0D9")
#let c-paper       = rgb("#FBFAF6")   // this is for page background
#let c-card-blue   = rgb("#EEF5FC")
#let c-card-orange = rgb("#FFF4E8")
#let c-card-green  = rgb("#EAF7F0")
#let c-card-red    = rgb("#FDEEEE")

// 2. font stacks (fallback lists: Typst uses the first one installed)
#let sans-body    = ("Lato", "Segoe UI", "Helvetica", "Arial")
#let sans-heading = ("Quicksand", "Lato", "Segoe UI", "Helvetica", "Arial")

// ---- 3. components ------------------------------------------------

// A coloured callout box: bold title, then any content.
#let factbox(title: "Note", accent: c-blue, fill: c-card-blue, body) = {
  block(
    width: 100%, fill: fill, stroke: (left: 3pt + accent),
    inset: 12pt, radius: 4pt, above: 1.1em, below: 1.1em, breakable: false,
  )[
    #text(font: sans-heading, weight: "bold", size: 11.5pt, fill: accent)[#title]
    #v(0.35em)
    #set text(font: sans-body, size: 10pt, fill: c-ink)
    #set par(justify: false)
    #body
  ]
}

// A big-number card, meant to be used in a row inside #grid(...)
#let statcard(number: "", label: "", color: c-blue) = {
  block(
    width: 100%, height: 3.2cm, fill: white,
    stroke: 1pt + color, inset: 10pt, radius: 7pt, breakable: false,
  )[
    #set align(center + horizon)
    #set par(justify: false)
    #set text(hyphenate: false)
    #text(font: sans-heading, weight: "bold", size: 22pt, fill: color)[#number]
    #v(0.3em)
    #text(font: sans-body, size: 8.5pt, fill: c-ink-soft)[#label]
  ]
}

// ---- 4. the article function ---------------------------------------
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
  set page(
    paper: paper, margin: margin, fill: c-paper,
    footer: context {
      let p = counter(page).get().first()
      align(center, text(font: sans-body, size: 8pt, fill: c-muted)[Palmer Penguins report · page #p])
    },
  )
  set par(justify: true, leading: 0.7em)
  set text(lang: lang, region: region, font: sans-body, size: fontsize, fill: c-ink)

  // headings: one show rule per level, numbering stays on if the YAML asks for it
  set heading(numbering: sectionnumbering)
  show heading.where(level: 1): it => {
    block(width: 100%, above: 1.6em, below: 0.6em, breakable: false)[
      #text(font: sans-heading, weight: "bold", size: 18pt, fill: c-blue)[
        #if it.numbering != none { counter(heading).display(it.numbering); h(0.5em) }#it.body
      ]
      #v(-0.2em)
      #line(length: 100%, stroke: 1.1pt + c-blue)
    ]
  }
  show heading.where(level: 2): it => {
    block(above: 1.3em, below: 0.5em, breakable: false)[
      #text(font: sans-heading, weight: "bold", size: 13pt, fill: c-orange)[
        #if it.numbering != none { counter(heading).display(it.numbering); h(0.5em) }#it.body
      ]
    ]
  }

  // tables: light header band and thin rules
  set table(
    inset: 6pt, stroke: 0.5pt + c-gridline,
    fill: (x, y) => if y == 0 { c-card-blue } else { white },
  )
  show table: set text(size: 8.5pt, hyphenate: false)
  show figure.caption: set text(size: 9pt, fill: c-ink-soft)

  // ---- title block (no separate cover page, so the report starts on page 1) ----
  if title != none {
    block(width: 100%, above: 0pt, below: 1.2em)[
      #text(font: sans-heading, weight: "bold", size: 26pt, fill: c-ink)[#title]
      #if subtitle != none {
        v(0.3em)
        text(font: sans-body, size: 13pt, style: "italic", fill: c-ink-soft)[#subtitle]
      }
      #v(0.6em)
      #line(length: 30%, stroke: 2.5pt + c-orange)
      #v(0.5em)
      #if authors != none {
        for author in authors [
          #text(font: sans-heading, weight: "bold", size: 10.5pt, fill: c-blue)[#author.name]
        ]
      }
      #if date != none { text(size: 10pt, fill: c-muted)[ · #date] }
    ]
  }

  if abstract != none {
    block(inset: 1em)[#text(weight: "bold", fill: c-orange)[#abstract-title] #h(1em) #abstract]
  }

  if toc {
    block(above: 0em, below: 1.5em)[
      #outline(
        title: text(font: sans-heading, weight: "bold", size: 15pt, fill: c-blue)[#toc_title],
        depth: toc_depth, indent: toc_indent,
      )
    ]
    pagebreak()
  }

  if cols == 1 { doc } else { columns(cols, doc) }
}
