#import "@preview/cetz:0.4.2": canvas, draw, decorations
#import "../../_assets/template_physique.typ": *

#show: conf

// ───────── schémas (CetZ, sobres pour la photocopie N&B) ─────────
#let c-eau = rgb("#DDEFF8")
#let c-froid = rgb("#E6EEF2")
#let fleche = (end: "stealth", fill: black, scale: 0.7)
#let legende(t) = text(size: 9.5pt, t)

// Molécule d'eau : O au centre, deux H écartés de ±52° autour de la direction `ang`
#let h2o(c, ang, s: 1) = {
  import draw: *
  let (x, y) = c
  for a in (ang - 52deg, ang + 52deg) {
    circle((x + 0.2 * s * calc.cos(a), y + 0.2 * s * calc.sin(a)), radius: 0.085 * s, fill: white, stroke: 0.5pt)
  }
  circle(c, radius: 0.14 * s, fill: luma(120), stroke: 0.5pt)
}

// Hachures à 45° dans le rectangle (x0, y0)–(x1, y1)
#let hachures(x0, y0, x1, y1, pas: 0.3) = {
  import draw: *
  let c = y0 - x1
  while c < y1 - x0 {
    let xs = calc.max(x0, y0 - c)
    let xe = calc.min(x1, y1 - c)
    if xs < xe { line((xs, xs + c), (xe, xe + c), stroke: 0.4pt) }
    c += pas
  }
}

#let schema-verre-eau = canvas(length: 1cm, {
  import draw: *
  rect((0, 0), (3, 2.3), fill: c-eau, stroke: none)
  line((0, 2.3), (3, 2.3), stroke: 0.5pt + luma(90))
  let mols = (
    ((0.45, 0.4), 20deg), ((1.25, 0.35), 150deg), ((2.1, 0.45), 260deg), ((2.65, 1.0), 80deg),
    ((0.5, 1.15), 200deg), ((1.4, 1.1), 300deg), ((2.0, 1.4), 120deg),
    ((0.7, 1.9), 100deg), ((1.45, 1.85), 230deg), ((2.4, 1.95), 10deg),
  )
  for (p, a) in mols { h2o(p, a) }
  line((0, 3), (0, 0), (3, 0), (3, 3), stroke: 1.2pt)
  decorations.flat-brace((-0.15, 0), (-0.15, 2.3), amplitude: 0.25)
  content((-0.55, 1.15), anchor: "east", align(center, legende[de l'eau \ (espèce chimique)]))
  line((4.0, 2.6), (2.5, 2.02), mark: fleche, stroke: 0.6pt)
  content((4.05, 2.6), anchor: "west", legende[1 molécule d'eau])
})

#let schema-air = canvas(length: 1cm, {
  import draw: *
  let (w, hN, hO, hA) = (2.4, 3.0, 0.9, 0.35)
  // diazote : hachures ; dioxygène : points ; autres gaz : gris léger
  hachures(0, 0, w, hN)
  for i in range(8) {
    for j in range(3) {
      circle((0.2 + i * 0.29 + calc.rem(j, 2) * 0.14, hN + 0.18 + j * 0.27), radius: 0.03, fill: black, stroke: none)
    }
  }
  rect((0, hN + hO), (w, hN + hO + hA), fill: luma(225), stroke: none)
  line((0, hN), (w, hN), stroke: 0.6pt)
  line((0, hN + hO), (w, hN + hO), stroke: 0.6pt)
  rect((0, 0), (w, hN + hO + hA), stroke: 1.2pt)
  let lab(y, cible, t) = {
    line((w + 1.0, y), cible, mark: fleche, stroke: 0.6pt)
    content((w + 1.05, y), anchor: "west", legende(t))
  }
  lab(hN + hO + hA + 0.45, (w - 0.1, hN + hO + hA + 0.02), [80 L d'air])
  lab(hN + hO / 2, (w - 0.3, hN + hO / 2), [17 L de dioxygène])
  lab(hN / 2, (w - 0.3, hN / 2), [62 L de diazote])
})

#let schema-montage = canvas(length: 1cm, {
  import draw: *
  // chronomètre
  let (cx, cy) = (-1.6, 3.3)
  rect((cx - 0.1, cy + 0.6), (cx + 0.1, cy + 0.78), fill: luma(200), stroke: 0.6pt)
  circle((cx, cy), radius: 0.62, fill: white, stroke: 1pt)
  for k in range(12) {
    let a = k * 30deg
    line((cx + 0.5 * calc.cos(a), cy + 0.5 * calc.sin(a)), (cx + 0.58 * calc.cos(a), cy + 0.58 * calc.sin(a)), stroke: 0.5pt)
  }
  line((cx, cy), (cx + 0.3, cy + 0.25), stroke: 0.9pt)
  circle((cx, cy), radius: 0.04, fill: black)
  content((cx, cy - 0.9), legende[chronomètre])
  // cristallisoir : mélange glace + sel
  rect((0, 0), (3.6, 1.5), fill: c-froid, stroke: none)
  let glacons = ((0.35, 0.3, 15deg), (0.85, 0.9, -20deg), (0.4, 1.15, 40deg), (2.6, 0.35, -10deg), (3.1, 0.95, 25deg), (2.55, 1.15, -35deg), (1.05, 0.3, 50deg), (3.2, 0.3, 5deg))
  for (gx, gy, a) in glacons {
    let pts = range(4).map(k => (gx + 0.2 * calc.cos(a + k * 90deg + 45deg), gy + 0.2 * calc.sin(a + k * 90deg + 45deg)))
    line(..pts, close: true, fill: white, stroke: 0.5pt)
  }
  line((0, 1.9), (0, 0), (3.6, 0), (3.6, 1.9), stroke: 1.2pt)
  // tube à essai contenant l'acide éthanoïque
  let (x0, x1, yb) = (1.5, 2.1, 0.65)
  rect((x0, yb), (x1, 2.0), fill: luma(200), stroke: none)
  circle(((x0 + x1) / 2, yb), radius: 0.3, fill: luma(200), stroke: none)
  line((x0, 3.4), (x0, yb), stroke: 1pt)
  arc((x0, yb), start: 180deg, stop: 360deg, radius: 0.3, stroke: 1pt)
  line((x1, yb), (x1, 3.4), stroke: 1pt)
  line((x0, 2.0), (x1, 2.0), stroke: 0.5pt)
  // thermomètre
  rect((1.74, 0.6), (1.86, 4.3), fill: white, stroke: 0.6pt, radius: 0.06)
  line((1.8, 0.6), (1.8, 1.6), stroke: 1.5pt)
  circle((1.8, 0.55), radius: 0.1, fill: black)
  // légendes
  let lab(y, cible, t) = {
    line((4.3, y), cible, stroke: 0.6pt)
    content((4.4, y), anchor: "west", legende(t))
  }
  lab(3.9, (1.86, 3.9), [thermomètre])
  lab(2.4, (2.0, 1.6), [acide éthanoïque pur])
  lab(0.75, (3.3, 0.75), [glace + sel])
})

#let schema-courbe = canvas(length: 1cm, {
  import draw: *
  let sx = 1.25
  let sy = 0.4
  let T0 = 10
  let P(t, T) = (t * sx, (T - T0) * sy)
  // axes
  line(P(0, T0), P(5.6, T0), mark: fleche, stroke: 0.8pt)
  line(P(0, T0), P(0, 20.5), mark: fleche, stroke: 0.8pt)
  content(P(5.7, T0), anchor: "west", legende[$t$ (min)])
  content(P(0.1, 20.5), anchor: "west", legende[Température (°C)])
  for t in range(0, 6) {
    line(P(t, T0), (t * sx, -0.1), stroke: 0.6pt)
    content((t * sx, -0.15), anchor: "north", text(size: 8.5pt)[#t])
  }
  for T in (10, 12, 14, 16, 18, 20) {
    line((-0.1, (T - T0) * sy), P(0, T), stroke: 0.6pt)
    content((-0.15, (T - T0) * sy), anchor: "east", text(size: 8.5pt)[#T])
  }
  // courbe : refroidissement du liquide, palier de solidification, refroidissement du solide
  let liq = range(0, 13).map(k => { let t = k * 0.1; P(t, 16 + 2 * calc.pow(calc.max(0, 1 - t / 1.2), 1.6)) })
  let sol = range(0, 21).map(k => { let t = 3 + k * 0.1; P(t, 16 - 5 * (1 - calc.exp(-(t - 3) / 1.5)) / (1 - calc.exp(-2 / 1.5))) })
  line(P(0, 16), P(1.2, 16), stroke: (paint: luma(120), dash: "dashed", thickness: 0.5pt))
  line(..liq, P(3, 16), ..sol, stroke: 1.4pt)
  // annotations
  content(P(0.55, 17.6), anchor: "south-west", legende[liquide])
  content(P(2.1, 15.4), anchor: "north", legende[liquide + solide])
  content(P(4.2, 14.2), anchor: "south-west", legende[solide])
  line(P(2.6, 18.6), P(2.1, 16.15), mark: fleche, stroke: 0.6pt)
  content(P(2.6, 18.6), anchor: "south-west", legende[*palier* de température])
})

#chapitre[Corps purs et mélanges]

= Vocabulaire

== Entités et espèces chimiques

#définition[
  On appelle *entité chimique* :
  - un *atome* : l'atome de fer Fe ;
  - une *molécule* : la molécule d'eau $"H"_2"O"$ ;
  - un *ion* : l'ion sodium $"Na"^+$, l'ion sulfate $"SO"_4^(2-)$.
]

#important[
  Une entité chimique est *microscopique* : on ne la voit pas à l'œil nu.
]

#définition[
  Une *espèce chimique* est un ensemble d'entités chimiques *identiques* entre elles.
]

#exemple[
  #align(center)[#schema-verre-eau]
  Je vois un verre contenant de l'eau : l'eau est une espèce chimique, constituée d'un très grand nombre de molécules d'eau identiques.
]

== Corps purs

#définition[
  Un corps est *pur* s'il ne contient qu'une seule sorte d'entité chimique. Sinon, c'est un *mélange*.
]

#travail[
  Citer 3 corps purs et 3 mélanges.
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1.5em,
    [*Corps purs :* #lignes_reponse(3)],
    [*Mélanges :* #lignes_reponse(3)],
  )
]

== Pourcentage et mélange

#block(breakable: false)[#exemple[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 1.5em,
    align: horizon,
    schema-air,
    [
      Une enceinte contient 80 L d'air, dont 17 L de dioxygène et 62 L de diazote.

      Y a-t-il d'autres gaz ?
      #lignes_reponse(1)
    ],
  )

  $ "Pourcentage de dioxygène" = "partie" / "tout" = V_("O"_2) / V_"air" = 17 / 80 = 0","21 = 21 thin % $
]]

#travail[
  Vérifier que le pourcentage de diazote est égal à 77,5 %.
]

= Identification d'un corps pur

== Par sa masse volumique

_Voir le TP « Masse volumique »._

#définition[
  La *masse volumique* $rho$ (« rhô ») d'un corps représente la masse $m$ (en g ou kg) d'un volume $V$ de ce corps (en L ou $"m"^3$) :
  $ rho = m / V $
]

#exemple[
  $rho_"eau" = 1 "kg/L"$ car 1 L d'eau a une masse de 1 000 g.
]

#application[
  *Mesurons la masse volumique de l'air.*

  On trouve que la masse de 2 L d'air vaut 2,5 g, donc la masse de 1 L d'air vaut 1,25 g.

  Donc $rho_"air" = 1","25 "g/L"$.
]

*Remarque :* les masses volumiques des corps purs sont connues avec précision. Elles permettent par exemple de savoir si un objet est en argent massif ou seulement plaqué argent : $rho_"Ag" = 10","49 thin "g/cm"^3$.

#important[
  Deux corps purs différents ont des masses volumiques différentes.
]

== Changement d'état d'un corps pur

#block(breakable: false)[#experience[
  On refroidit de l'acide éthanoïque pur dans un mélange de glace et de sel, et on relève sa température au cours du temps.

  #align(center)[#schema-montage]

  On obtient la courbe de refroidissement suivante :

  #align(center)[#schema-courbe]

  On observe un *palier* de température à 16 °C pendant la solidification.
]]

#important[
  - La présence d'un palier de température est *caractéristique des corps purs*.
  - Lors d'un changement d'état d'un mélange, on n'observe pas de palier de température.
]


// ╔══════════════════════════════════════════════════════╗
// ║  FICHE D'EXERCICES                                   ║
// ╚══════════════════════════════════════════════════════╝
#chapitre[Corps purs et mélanges — Exercices]

// ───────── aides locales ─────────
#let titre-ex(t) = text(weight: "bold")[#t]
#let c-donnees = rgb("#E07A7A")
#let donnees(body) = block(
  width: 100%,
  stroke: 0.8pt + c-donnees,
  radius: 2pt,
  inset: (x: 8pt, y: 6pt),
  breakable: false,
)[
  #text(weight: "bold", fill: c-donnees.darken(25%))[Données] \
  #body
]

// Chromatogramme : depots = noms des dépôts ; taches = hauteurs relatives (0 = ligne de dépôt, 1 = front)
#let chromatogramme(depots, taches) = canvas(length: 1cm, {
  import draw: *
  let n = depots.len()
  let dx = 0.9
  let w = n * dx
  let h = 4.0
  rect((0, -0.9), (w, h + 0.6), fill: rgb("#EFEFEF"), stroke: none)
  // front du solvant
  line((0, h), (w, h), stroke: 0.6pt + gray.darken(20%))
  // ligne de dépôt
  line((0, 0), (w, 0), stroke: 0.6pt + gray.darken(30%))
  for (i, nom) in depots.enumerate() {
    let x = (i + 0.5) * dx
    line((x, -0.12), (x, 0.12), stroke: 0.6pt + gray.darken(30%))
    content((x, -0.5), text(size: 9pt, nom))
    for y in taches.at(i) {
      circle((x, y * h), radius: (0.09, 0.14), fill: rgb("#D9443F").lighten(20% + 35% * y), stroke: none)
    }
  }
})

// ══════════════════════════════════════════════════════
//  EXERCICE 1 — Masse volumique
// ══════════════════════════════════════════════════════
#exercice[
  #titre-ex[Masse volumique]

  + *Masse volumique du cyclohexane.* Calculer la masse volumique du cyclohexane en $"g"·"mL"^(-1)$, sachant qu'un volume de 15 mL a une masse de 11,8 g.

  + *Volume d'éthanol.* Quel volume d'éthanol, de masse volumique $rho_"éthanol" = 0","78 "g"·"cm"^(-3)$, doit-on prélever pour en avoir 30 g ?

  + *Mélanges.* Chaque mélange est-il homogène ou hétérogène ? \
    a. Eau + huile. #h(2em) b. Eau + sel. #h(2em) c. Eau + sable.

  + *Une canette de mercure.* Calculer la masse d'une canette de soda remplie de mercure liquide. La canette a un volume de 33 cL et la masse volumique du mercure est $rho = 13","5 "kg"·"L"^(-1)$.
]

// ══════════════════════════════════════════════════════
//  EXERCICE 2 — Eau et éther
// ══════════════════════════════════════════════════════
#exercice[
  #titre-ex[Eau et éther dans une éprouvette]

  On introduit dans une éprouvette graduée 5,0 mL d'eau et 15,0 mL d'éther. On mélange puis on laisse décanter.

  + Dans quel état physique ces deux espèces chimiques se trouvent-elles à la température ambiante (20 °C), et avant le mélange ? Justifier la réponse.
  + Déterminer les masses d'eau et d'éther introduites dans l'éprouvette.
  + Faire un schéma légendé de l'éprouvette graduée en indiquant la position et la composition des phases.

  #donnees[
    #set text(size: 10pt)
    #table(
      columns: (1.3fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.5pt + c-donnees,
      fill: (_, y) => if y == 0 { c-donnees.lighten(85%) },
      [*Espèce chimique*], [*Température de fusion* $theta_"f"$], [*Température d'ébullition* $theta_"éb"$], [*Masse volumique* $rho$],
      [Eau $"H"_2"O"$], [0 °C], [100 °C], [$1","0 "g"·"cm"^(-3)$],
      [Éther $"C"_4"H"_10"O"$], [−116 °C], [35 °C], [$0","71 "g"·"cm"^(-3)$],
    )
  ]
]

// ══════════════════════════════════════════════════════
//  EXERCICE 3 — Défi : l'œuf qui flotte
// ══════════════════════════════════════════════════════
#exercice[
  #titre-ex[Défi : l'œuf qui flotte]
  #set enum(numbering: "1.a.")

  Un œuf frais coule au fond d'un verre d'eau douce, mais il flotte dans une eau suffisamment salée. L'œuf étudié a une masse de 66 g et un volume de 60 mL. \
  _Rappel : un objet flotte dans un liquide si sa masse volumique est inférieure à celle du liquide ; sinon, il coule._

  + Calculer la masse volumique de l'œuf en $"g"·"mL"^(-1)$.
  + Expliquer pourquoi l'œuf coule dans l'eau douce.
  + On prépare une eau salée en dissolvant complètement 60 g de sel dans 300 mL d'eau. On obtient 320 mL de solution.
    + L'eau salée est-elle un corps pur ou un mélange ? Est-elle homogène ou hétérogène ?
    + Calculer la masse d'eau utilisée ($rho_"eau" = 1","00 "g"·"mL"^(-1)$), puis la masse totale de la solution.
    + En déduire la masse volumique de l'eau salée. L'œuf flotte-t-il dans cette solution ?
  + *Défi.* On ajoute progressivement de l'eau douce dans l'eau salée. Quel volume maximal d'eau douce peut-on ajouter avant que l'œuf ne se mette à couler ? On admet que les volumes s'additionnent. \
    _Aide : noter $V$ le volume ajouté (en mL) et exprimer la masse et le volume du mélange en fonction de $V$._

  #align(right)[
    #text(size: 9pt, fill: luma(90))[
      *Résultats :* Q1 : $rho_"œuf" = 1","10 "g"·"mL"^(-1)$ ; Q3b : $m_"eau" = 300 "g"$ et $m_"solution" = 360 "g"$ ; Q3c : $rho_"solution" = 1","125 "g"·"mL"^(-1)$ ; Q4 : $V = 80 "mL"$.
    ]
  ]
]

// ══════════════════════════════════════════════════════
//  EXERCICE 4 — CCM (nouvelle page pour ne pas couper les chromatogrammes)
// ══════════════════════════════════════════════════════
#pagebreak(weak: true)
#exercice[
  #titre-ex[Chromatographie sur couche mince (CCM)]

  Les huiles essentielles d'orange (HEO) et de citron (HEC) sont obtenues par expression à froid : le zeste est pressé pour recueillir l'huile. Elles sont riches en molécules odorantes. On réalise deux CCM afin d'identifier quelques espèces chimiques présentes dans ces huiles essentielles.

  #align(center)[
    #grid(
      columns: 2,
      column-gutter: 1.5cm,
      chromatogramme(
        ("HEC", "Lim", "G", "Lin", "Ci"),
        ((0.25, 0.57, 0.80), (0.25,), (0.84,), (0.80,), (0.57,)),
      ),
      chromatogramme(
        ("HEO", "Lim", "G", "Lin", "Ci"),
        ((0.25, 0.80), (0.25,), (0.84,), (0.80,), (0.57,)),
      ),
    )
    #v(-0.2em)
    #text(size: 9.5pt)[_Légende :_ Lim : limonène ; G : géraniol ; Lin : linalol ; Ci : citral.]
  ]

  Indiquer quelles sont les espèces chimiques présentes dans les deux huiles essentielles en exploitant les résultats des CCM.
]

// ══════════════════════════════════════════════════════
//  EXERCICE 5 — Changement d'état
// ══════════════════════════════════════════════════════
#exercice[
  #titre-ex[Changement d'état]

  On place un tube à essai contenant un liquide X dans un cristallisoir contenant un mélange réfrigérant (eau, glace et sel) et on mesure la température du liquide à intervalle de temps régulier.
  La courbe donnant l'évolution de la température du liquide X en fonction du temps est donnée ci-dessous.

  + Pourquoi peut-on affirmer que ce corps est pur ?
  + Déterminer la température de fusion du corps.
  + En utilisant les données, en déduire le nom de ce corps pur.

  #grid(
    columns: (auto, 1fr),
    column-gutter: 0.8cm,
    align: horizon,
    canvas(length: 1cm, {
      import draw: *
      let sx = 0.4    // cm par minute
      let sy = 0.24   // cm par °C
      let pts = (
        (0, 20), (1, 18), (2, 16), (3, 14), (4, 12), (5, 10), (6, 8),
        (7, 6.5), (8, 6.5), (9, 6.5), (10, 6.5),
        (11, 5), (12, 4), (13, 3), (14, 2), (15, 1), (16, 0),
        (17, -1), (18, -2), (19, -3), (20, -4),
      ).map(((t, T)) => (t * sx, T * sy))
      // quadrillage léger
      for t in range(0, 21) {
        line((t * sx, -5 * sy), (t * sx, 20 * sy), stroke: 0.3pt + luma(225))
      }
      for T in range(-5, 21) {
        line((0, T * sy), (20 * sx, T * sy), stroke: 0.3pt + luma(225))
      }
      // axes
      line((0, -5 * sy), (0, 21.5 * sy), mark: (end: "stealth"), stroke: 0.7pt)
      line((0, 0), (21.5 * sx, 0), mark: (end: "stealth"), stroke: 0.7pt)
      content((0.15, 21.5 * sy), anchor: "west", text(size: 9pt)[Température (°C)])
      content((21.7 * sx, 0), anchor: "west", text(size: 9pt)[Temps (min)])
      for t in (5, 10, 15, 20) {
        line((t * sx, -0.08), (t * sx, 0.08), stroke: 0.7pt)
        content((t * sx, -0.12), anchor: "north", text(size: 8.5pt)[#t])
      }
      for T in (-5, 5, 10, 15, 20) {
        line((-0.08, T * sy), (0.08, T * sy), stroke: 0.7pt)
        content((-0.12, T * sy), anchor: "east", text(size: 8.5pt)[#T])
      }
      content((-0.12, 0.12), anchor: "east", text(size: 8.5pt)[0])
      // courbe + points de mesure
      line(..pts, stroke: 0.8pt + rgb("#6FB7AE"))
      for p in pts {
        let (x, y) = p
        line((x - 0.08, y), (x + 0.08, y), stroke: 0.6pt)
        line((x, y - 0.08), (x, y + 0.08), stroke: 0.6pt)
      }
    }),
    donnees[
      *Température de fusion de quelques corps purs :*
      #set list(spacing: 0.7em)
      - $theta_"f, eau" = 0 "°C"$
      - $theta_"f, éthanol" = -114 "°C"$
      - $theta_"f, cyclohexane" = 6","5 "°C"$
      - $theta_"f, éther" = -116 "°C"$
      - $theta_"f, pentan-3-ol" = -8 "°C"$
      - $theta_"f, benzène" = 5","5 "°C"$
      - $theta_"f, méthanamide" = 2","5 "°C"$
    ],
  )
]
