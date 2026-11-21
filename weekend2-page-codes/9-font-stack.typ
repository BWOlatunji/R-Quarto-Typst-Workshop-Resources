// SECTION 9: a font list. Typst uses the first font it finds installed.
// Run  quarto typst fonts  to see what this computer offers.
#let body-font = ("Lato", "Segoe UI", "Helvetica")
#set text(font: body-font)

This paragraph uses the first font in the list that is installed.
