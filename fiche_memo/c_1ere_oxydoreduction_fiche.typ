#import "../_assets/template_physique.typ": *

// ── Mise en page compacte ────────────────────────────────────────────────────
#show: conf
#set page(margin: (top: 0.8cm, bottom: 1cm, left: 1.2cm, right: 1.2cm))
#set text(size: 10pt)
#set block(spacing: 0.6em)
#show heading.where(level: 1): it => block(above: 0.8em, below: 0.4em, sticky: true)[
  #set text(fill: rgb("#2980b9"), weight: "bold", size: 11pt)
  #it
  #v(-0.3em)
  #line(length: 100%, stroke: 1.5pt + rgb("#2980b9"))
]
#show heading.where(level: 2): it => block(above: 0.5em, below: 0.2em)[
  #set text(fill: rgb("#2980b9").darken(20%), weight: "semibold", size: 10.5pt)
  #pad(left: 0.8em, it)
]

// ── Boîtes compactes ─────────────────────────────────────────────────────────
#let fbox(color, body) = block(
  width: 100%, breakable: true,
  fill: color.lighten(90%),
  stroke: (left: 3pt + color),
  radius: (top-right: 4pt, bottom-right: 4pt),
  inset: (x: 0.8em, y: 0.5em),
  body
)
#let formule(body) = fbox(rgb("#2980b9"), body)
#let retenir(body) = fbox(rgb("#d35400"), body)
#let methode(body) = fbox(rgb("#27ae60"), body)

// ── En-tête ──────────────────────────────────────────────────────────────────
#block(
  width: 100%, fill: rgb("#2980b9"), radius: 4pt,
  inset: (x: 14pt, y: 10pt),
)[
  #grid(columns: (1fr, auto),
    text(fill: white, weight: "bold", size: 14pt)[Oxydoréduction — Fiche de révision],
    text(fill: white.darken(10%), size: 9pt)[Physique-Chimie · Première Spécialité],
  )
]
#v(0.4em)

// ════════════════════════════════════════════════════════════════════════════
#grid(columns: (1fr, 1fr), gutter: 1em)[

// ── COLONNE GAUCHE ───────────────────────────────────────────────────────────

= Oxydant et réducteur

#retenir[
  - *Oxydant* : espèce qui *gagne* des électrons → se *réduit*
  - *Réducteur* : espèce qui *perd* des électrons → s'*oxyde*

  Lors d'une réaction redox : le réducteur *cède* ses électrons à l'oxydant. Les deux phénomènes sont simultanés.
]

= Couple oxydant/réducteur

#formule[
  $ "Ox" + n dot e^- = "Red" $
  - Notation : $"Ox"\/"Red"$ (oxydant toujours en premier)
  - Sens → : *réduction* ; sens ← : *oxydation*
]

#retenir[
  *Couples à connaître :*

  #table(
    columns: (2fr, 3fr),
    align: (left, left),
    stroke: none,
    inset: (x: 0.3em, y: 0.25em),
    [$"Ag"^+\/"Ag"$], [$"Ag"^+ + e^- = "Ag"$],
    [$"Cu"^(2+)\/"Cu"$], [$"Cu"^(2+) + 2e^- = "Cu"$],
    [$"Fe"^(3+)\/"Fe"^(2+)$], [$"Fe"^(3+) + e^- = "Fe"^(2+)$],
    [$"I"_2\/"I"^-$], [$"I"_2 + 2e^- = 2"I"^-$],
    [$"H"_3"O"^+\/"H"_2$], [$2"H"_3"O"^+ + 2e^- = "H"_2 + 2"H"_2"O"$],
    [$"MnO"_4^-\/"Mn"^(2+)$], [$"MnO"_4^- + 8"H"^+ + 5e^- = "Mn"^(2+) + 4"H"_2"O"$],
  )
]

= Écrire une demi-équation

#methode[
  + Ox à gauche, Red à droite
  + Équilibrer les atomes *autres que O et H*
  + Équilibrer *O* avec $"H"_2"O"$
  + Équilibrer *H* avec $"H"^+$
  + Équilibrer les *charges* avec $e^-$ à gauche
]

*Exemple :* couple $"MnO"_4^-\/"Mn"^(2+)$ → 4 O → $+4"H"_2"O"$ → $+8"H"^+$ → charges : $-1+8=+7$ vs $+2$ → $+5e^-$

$ "MnO"_4^- + 8"H"^+ + 5e^- = "Mn"^(2+) + 4"H"_2"O" $

][

// ── COLONNE DROITE ───────────────────────────────────────────────────────────

= Équation bilan d'une réaction redox

#methode[
  + Identifier les *couples* et les *réactifs*
  + Écrire les demi-équations avec les *réactifs à gauche*
  + *Multiplier* pour égaliser le nombre d'électrons
  + *Additionner* membre à membre et simplifier les $e^-$
]

*Exemple :* arbre de Diane — couples $"Ag"^+\/"Ag"$ et $"Cu"^(2+)\/"Cu"$, réactifs : $"Ag"^+$ et Cu

#formule[
  $2"Ag"^+ + 2e^- = 2"Ag"$ (×2) #linebreak()
  $"Cu" = "Cu"^(2+) + 2e^-$ (×1) #linebreak()
  $ "Cu" + 2"Ag"^+ arrow.r "Cu"^(2+) + 2"Ag" $
]

*Exemple :* $"MnO"_4^-$ + $"Fe"^(2+)$ en milieu acide

#formule[
  $"MnO"_4^- + 8"H"^+ + 5e^- = "Mn"^(2+) + 4"H"_2"O"$ (×1) #linebreak()
  $"Fe"^(2+) = "Fe"^(3+) + e^-$ (×5) #linebreak()
  $ "MnO"_4^- + 8"H"^+ + 5"Fe"^(2+) arrow.r "Mn"^(2+) + 4"H"_2"O" + 5"Fe"^(3+) $
]

= Vocabulaire essentiel

#retenir[
  #table(
    columns: (2fr, 3fr),
    align: (left, left),
    stroke: none,
    inset: (x: 0.3em, y: 0.2em),
    [*Terme*], [*Signification*],
    [Oxydation], [perte d'électrons (réducteur → oxydé)],
    [Réduction], [gain d'électrons (oxydant → réduit)],
    [Demi-équation], [échange de $n$ électrons entre Ox et Red],
    [Équation bilan], [somme des demi-équations (sans $e^-$)],
  )
]

]

// ── Tableau récapitulatif ─────────────────────────────────────────────────────
#v(0.4em)
#block(width: 100%, fill: rgb("#2980b9").lighten(90%),
  stroke: (left: 3pt + rgb("#2980b9")),
  radius: (top-right: 4pt, bottom-right: 4pt),
  inset: (x: 0.8em, y: 0.6em),
)[
  #text(fill: rgb("#2980b9"), weight: "bold")[Toutes les notions du chapitre]
  #v(0.3em)
  #table(
    columns: (2fr, 3.5fr, 0.8fr),
    align: (left, left, center),
    stroke: (x, y) => if y == 0 { (bottom: 1pt + rgb("#2980b9")) } else { none },
    inset: (x: 0.4em, y: 0.3em),
    [*Notion*], [*À retenir*], [*Exos*],
    [Oxydant / Réducteur], [Ox gagne $e^-$ · Red perd $e^-$], [1, 2],
    [Couple Ox/Red], [$"Ox" + n e^- = "Red"$], [2, 3],
    [Demi-équation sans O, H], [Équilibrer atomes puis charges], [2, 3],
    [Demi-équation avec O, H], [O→$"H"_2"O"$, H→$"H"^+$, charges→$e^-$], [3, 4],
    [Équation bilan], [Égaliser $e^-$, additionner, simplifier], [4, 5, 6, 7],
  )
]
