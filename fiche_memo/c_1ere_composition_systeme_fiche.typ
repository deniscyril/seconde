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

// ── Boîte compacte ──────────────────────────────────────────────────────────
#let fbox(color, body) = block(
  width: 100%, breakable: true,
  fill: color.lighten(90%),
  stroke: (left: 3pt + color),
  radius: (top-right: 4pt, bottom-right: 4pt),
  inset: (x: 0.8em, y: 0.5em),
  body
)
#let formule(body)  = fbox(rgb("#2980b9"), body)
#let retenir(body)  = fbox(rgb("#d35400"), body)
#let methode(body)  = fbox(rgb("#27ae60"), body)

// ── En-tête ─────────────────────────────────────────────────────────────────
#block(
  width: 100%, fill: rgb("#2980b9"), radius: 4pt,
  inset: (x: 14pt, y: 10pt),
)[
  #grid(columns: (1fr, auto),
    text(fill: white, weight: "bold", size: 14pt)[
      Composition du système initial — Fiche de révision
    ],
    text(fill: white.darken(10%), size: 9pt)[Physique-Chimie · Première Spécialité],
  )
]
#v(0.4em)

// ════════════════════════════════════════════════════════════════════════════
#grid(columns: (1fr, 1fr), gutter: 1em)[

// ── COLONNE GAUCHE ───────────────────────────────────────────────────────────

= Masse molaire

#formule[
  $ M_("A"_p "B"_q) = p, M_"A" + q, M_"B" quad ("g·mol"^(-1)) $
]

La masse molaire se *lit dans le tableau périodique* pour chaque atome, puis se *somme* sur tous les atomes de la formule.

#retenir[
  *Quelques masses molaires atomiques à connaître :*

  #table(columns: (1fr,1fr,1fr,1fr,1fr,1fr,1fr),
    align: center, stroke: none,
    [H], [C], [N], [O], [Na], [Cl], [Fe],
    [1,0], [12], [14], [16], [23], [35,5], [56],
  )
  Unité : g·mol⁻¹
]

= Quantité de matière — masse

#formule[
  $ n = m / M quad arrow.l.r quad m = n M quad arrow.l.r quad M = m / n $
  - $n$ (mol) · $m$ (g) · $M$ (g·mol⁻¹)
]

#methode[
  *Conversion indispensable avant le calcul :*
  $1 "mg" = 10^(-3)$ g $quad$ ; $quad 1 "kg" = 10^3$ g
]

Pour un *liquide pur* de masse volumique $rho$ (g·mL⁻¹) :

#formule[
  $ m = rho times V quad arrow.r quad n = (rho V) / M $
]

= Volume molaire d'un gaz

#formule[
  $ n = V_"gaz" / V_m quad arrow.l.r quad V_"gaz" = n V_m $
  - $V_"gaz"$ (L) · $V_m$ (L·mol⁻¹)
]

#retenir[
  - CNTP (0 °C, 1 atm) : $V_m = 22,4$ L·mol⁻¹
  - 20 °C, 1 atm : $V_m = 24$ L·mol⁻¹

  *Tout gaz* occupe le même $V_m$ dans les mêmes conditions.
]

][

// ── COLONNE DROITE ───────────────────────────────────────────────────────────

= Concentration en quantité de matière

#formule[
  $ C = n / V quad arrow.l.r quad n = C V $
  - $C$ (mol·L⁻¹) · $n$ (mol) · $V$ (L)
]

Lien avec la concentration en masse $C_m$ (g·L⁻¹) :

#formule[
  $ C_m = C times M $
]

#methode[
  *Conversion indispensable :* $V("L") = V("mL") / 1000$
]

= Préparation d'une solution

== Dissolution

Masse à peser : $m = n M = C times V times M$

*Protocole :* peser → dissoudre dans bécher → transvaser dans fiole jaugée → compléter au trait de jauge → agiter.

== Dilution

#formule[
  $ F = C_"mère" / C_"fille" = V_"fiole" / V_"pipette" $
  - $F$ : facteur de dilution (sans unité)
  - $V_"pipette"$ : volume de solution mère prélevée
  - $V_"fiole"$ : volume de la solution fille
]

*Protocole :* prélever $V_"pipette"$ à la pipette jaugée → fiole jaugée → compléter au trait → agiter.

= Spectroscopie d'absorbance

*Couleur perçue* = couleur *complémentaire* de la couleur absorbée ($lambda_"max"$).

#retenir[
  #table(columns: (1fr,1fr,1fr,1fr,1fr,1fr),
    align: center,
    [*Absorbée*], [Bleu], [Vert], [Jaune], [Orange], [Rouge],
    [*Perçue*], [Orange], [Rouge-violet], [Violet], [Bleu-vert], [Bleu-vert],
  )
]

*Absorbance* $A$ : mesurée par le spectrophotomètre (sans unité, de 0 à ~3). Augmente avec $C$ et avec $l$.

*Loi de Beer-Lambert* (solution diluée) :

#formule[
  $ A = k times C $
  - $k$ (L·mol⁻¹) : pente de la droite d'étalonnage
  - Si $A > 1$ : diluer avant de mesurer
]

*Dosage par gamme étalon :*
+ Régler à $lambda_"max"$ → faire le blanc
+ Mesurer $A$ de solutions étalons → droite $A = f(C)$
+ Mesurer $A_"inc"$ → $C_"inc" = A_"inc" / k$

]

// ── Tableau récapitulatif (page dédiée) ──────────────────────────────────────
#pagebreak()

#block(width: 100%, fill: rgb("#2980b9").lighten(90%),
  stroke: (left: 3pt + rgb("#2980b9")),
  radius: (top-right: 4pt, bottom-right: 4pt),
  inset: (x: 1em, y: 0.8em),
)[
  #text(fill: rgb("#2980b9"), weight: "bold", size: 13pt)[Toutes les formules du chapitre]
  #v(0.6em)
  #set text(size: 11.5pt)
  #table(
    columns: (2fr, 2.8fr, 1.7fr, 0.8fr),
    align: (left, center, left, center),
    stroke: (x, y) => if y == 0 { (bottom: 1.2pt + rgb("#2980b9")) } else { (bottom: 0.5pt + rgb("#2980b9").lighten(65%)) },
    inset: (x: 0.6em, y: 0.9em),
    fill: (x, y) => if y == 0 { none } else if calc.odd(y) { rgb("#2980b9").lighten(94%) } else { white },
    [*Notion*], [*Formule*], [*Unités*], [*Exos*],
    [Masse molaire \ (exemple)], [$ M_(H_2 O) = 2 times M_H + M_O \ = 2 times 1,0 + 16 = 18 $], [g·mol⁻¹], [1, 2, 3],
    [Quantité de matière (masse)], [$ n = m/M $], [mol ; g ; g·mol⁻¹], [3, 4, 5],
    [Masse d'un liquide], [$ m = rho times V $], [g ; g·mL⁻¹ ; mL], [5],
    [Quantité de matière (gaz)], [$ n = V_"gaz"/V_m $], [mol ; L ; L·mol⁻¹], [9],
    [Concentration molaire], [$ C = n/V $], [mol·L⁻¹ ; mol ; L], [6, 7, 8],
    [Lien $C$ et $C_m$], [$ C_m = C times M $], [g·L⁻¹ ; mol·L⁻¹ ; g·mol⁻¹], [6, 8],
    [Facteur de dilution], [$ F = C_"mère"/C_"fille" = V_"fiole"/V_"pipette" $], [sans unité], [—],
    [Loi de Beer-Lambert], [$ A = k times C $], [sans unité ; L·mol⁻¹], [10],
    [Dosage étalonnage], [$ C_"inc" = A_"inc"/k $], [mol·L⁻¹], [10],
  )
]
