#import "../../_assets/template_physique.typ": *

#show: conf

// ════════════════════════════════════════════════════════════════
//  Spectres d'absorption tracés en natif (sans dépendance)
// ════════════════════════════════════════════════════════════════
#let sp-ox = 1.1cm      // marge gauche (axe des A)
#let sp-oy = 0.45cm     // marge haute
#let sp-w  = 14.5cm
#let sp-h  = 4.4cm
#let sp-l0 = 400
#let sp-l1 = 750
#let sp-amax = 1.0

#let sp-X(l) = sp-ox + (l - sp-l0) / (sp-l1 - sp-l0) * sp-w
#let sp-Y(a) = sp-oy + sp-h - (a / sp-amax) * sp-h

#let sp-seg(p, q, stroke) = place(top + left, dx: p.at(0), dy: p.at(1),
  line(end: (q.at(0) - p.at(0), q.at(1) - p.at(1)), stroke: stroke))

// Profils d'absorption (gaussiennes) — allure réaliste des colorants alimentaires
#let gauss(l, a, l0, s) = a * calc.exp(-calc.pow((l - l0) / s, 2))
#let A-E102(l) = gauss(l, 0.78, 427, 42)                                   // tartrazine (jaune)
#let A-E133(l) = gauss(l, 0.90, 630, 32) + gauss(l, 0.12, 410, 25)          // bleu brillant FCF (bleu)
#let A-sirop(l) = 0.95 * A-E102(l) + 0.62 * A-E133(l)                      // sirop de menthe dilué

// courbes : tableau de (fonction, couleur, étiquette)
#let spectre(courbes) = box(width: sp-ox + sp-w + 0.6cm, height: sp-oy + sp-h + 0.9cm)[
  // quadrillage léger (tous les 10 nm et tous les 0,1)
  #for i in range(0, 36) {
    let x = sp-X(sp-l0 + i * 10)
    place(top + left, dx: x, dy: sp-oy, line(end: (0pt, sp-h), stroke: 0.25pt + luma(215)))
  }
  #for j in range(1, 11) {
    place(top + left, dx: sp-ox, dy: sp-Y(j * 0.1), line(end: (sp-w, 0pt), stroke: 0.25pt + luma(215)))
  }
  // axes
  #place(top + left, dx: sp-ox, dy: sp-Y(0), line(end: (sp-w, 0pt), stroke: 1pt))
  #place(top + left, dx: sp-ox, dy: sp-oy, line(end: (0pt, sp-h), stroke: 1pt))
  // graduations λ
  #for i in range(0, 36) {
    let l = sp-l0 + i * 10
    let major = calc.rem(i, 5) == 0
    place(top + left, dx: sp-X(l), dy: sp-Y(0), line(end: (0pt, if major { 0.2cm } else { 0.1cm }), stroke: 0.4pt))
    if major { place(top + left, dx: sp-X(l) - 0.35cm, dy: sp-Y(0) + 0.25cm, text(size: 0.7em)[#l]) }
  }
  // graduations A
  #for j in range(0, 11, step: 2) {
    let lab = if j == 0 { "0" } else if j == 10 { "1,0" } else { "0," + str(j) }
    place(top + left, dx: sp-ox - 0.15cm, dy: sp-Y(j * 0.1), line(end: (0.15cm, 0pt), stroke: 0.4pt))
    place(top + left, dx: sp-ox - 0.85cm, dy: sp-Y(j * 0.1) - 0.17cm, text(size: 0.7em)[#lab])
  }
  // tracés
  #for (f, col, lab) in courbes {
    let pts = range(sp-l0, sp-l1 + 1, step: 5).map(l => (sp-X(l), sp-Y(f(l))))
    for i in range(0, pts.len() - 1) { sp-seg(pts.at(i), pts.at(i + 1), 1.3pt + col) }
  }
  // légende
  #for (k, (f, col, lab)) in courbes.enumerate() {
    place(top + left, dx: sp-X(665), dy: sp-oy + 0.15cm + k * 0.45cm,
      box[#box(width: 0.6cm, height: 0pt, stroke: (top: 1.3pt + col)) #h(0.2em) #text(size: 0.75em)[#lab]])
  }
  // titres des axes
  #place(top + left, dx: sp-ox + sp-w - 0.9cm, dy: sp-Y(0) + 0.55cm, text(size: 0.8em)[$lambda$ (nm)])
  #place(top + left, dx: sp-ox + 0.15cm, dy: sp-oy - 0.45cm, text(size: 0.8em)[$A$])
]

#let c-jaune = rgb("#d4a300")
#let c-bleu  = rgb("#1f5fbf")
#let c-vert  = rgb("#2a9d3a")

#let tab(..args) = align(center, table(align: center + horizon, inset: 5pt, stroke: 0.5pt + gray, ..args))

#chapitre[Loi de Beer-Lambert — Feuille d'exercices]

*Données :* masse molaire du bleu brillant FCF (colorant E133) : $M = "792,8" "g" dot "mol"^(-1)$ ; $1 thin mu"mol" dot "L"^(-1) = 10^(-6) "mol" dot "L"^(-1)$.

// ════════════════════════════════════════════════════════════════
//  EXERCICE 1 — Application directe
// ════════════════════════════════════════════════════════════════
#exercice[
  *Application directe de la loi.* On étudie des solutions de bleu de méthylène à $lambda = 665$ nm. Dans ces conditions, la loi de Beer-Lambert s'écrit $A = k dot C$ avec $k = "2,0" times 10^4 "L" dot "mol"^(-1)$.

  + Énoncer la loi de Beer-Lambert. Préciser le nom et l'unité de chaque grandeur. Quelle est la condition pour qu'elle soit valable ?
  + Calculer l'absorbance d'une solution de concentration $C_1 = "2,5" times 10^(-5) "mol" dot "L"^(-1)$.
  + Une solution a une absorbance $A_2 = "0,80"$. Calculer sa concentration $C_2$.
  + Sans calcul, que devient l'absorbance de la solution $S_1$ si on la dilue 4 fois ? Justifier.
  + *Sans connaître $k$.* Deux solutions du même colorant sont étudiées à la même longueur d'onde : la solution $S_a$ ($C_a = "3,0" times 10^(-5) "mol" dot "L"^(-1)$) a une absorbance $A_a = "0,45"$ ; la solution $S_b$ a une absorbance $A_b = "0,72"$. Montrer que $C_b = C_a dot A_b / A_a$, puis calculer $C_b$.
]

// ════════════════════════════════════════════════════════════════
//  EXERCICE 2 — Spectre, couleur et choix de la longueur d'onde
// ════════════════════════════════════════════════════════════════
#exercice[
  *Couleur d'une solution et choix de la longueur d'onde.* Le sirop de menthe doit sa couleur verte à deux colorants alimentaires : la tartrazine (E102) et le bleu brillant FCF (E133). On a enregistré les spectres d'absorption de solutions de chacun des deux colorants.

  #align(center)[#spectre((
    (A-E102, c-jaune, [E102 (tartrazine)]),
    (A-E133, c-bleu,  [E133 (bleu brillant)]),
  ))]

  #grid(
    columns: (1fr, 4.3cm),
    column-gutter: 12pt,
    align: horizon,
    [
      *A. Couleur de chaque colorant*
      + Relever, pour chaque colorant, la longueur d'onde $lambda_"max"$ du maximum d'absorption.
      + À quelle couleur de la lumière correspond chacune de ces longueurs d'onde ?
      + Rappeler la règle qui relie la couleur d'une solution à la couleur qu'elle absorbe le plus. En déduire, à l'aide du cercle chromatique, la couleur de chaque solution.
    ],
    figure(image("../figures/cercle_chromatique_6.png", width: 100%), caption: [Cercle chromatique]),
  )

  *B. Le sirop de menthe*

  On enregistre maintenant le spectre d'une solution de sirop de menthe dilué.

  #align(center)[#spectre((
    (A-sirop, c-vert, [sirop de menthe dilué]),
  ))]

  #set enum(start: 4)
  + Quelles couleurs de la lumière blanche le sirop absorbe-t-il ? Expliquer pourquoi il apparaît vert.
  + On veut déterminer, par spectrophotométrie, la concentration en *E133* du sirop. Pourquoi faut-il régler le spectrophotomètre à la longueur d'onde $lambda_"max"$ du colorant étudié plutôt qu'à une autre ?
  + Un élève propose de travailler à 430 nm « parce que c'est là que le sirop absorbe le plus ». Expliquer pourquoi ce choix ne convient pas, et proposer la longueur d'onde à utiliser.
]

// ════════════════════════════════════════════════════════════════
//  EXERCICE 3 — Préparation d'une gamme étalon
// ════════════════════════════════════════════════════════════════
#exercice[
  *Préparer une gamme de solutions étalons.* Pour doser le colorant E133, on prépare une échelle de teintes à partir d'une solution mère $S_0$ de concentration $C_0 = "1,0" times 10^(-4) "mol" dot "L"^(-1)$. Chaque solution fille est préparée dans une fiole jaugée de *50,0 mL*.

  #tab(
    columns: 6,
    [Solution], [$S_1$], [$S_2$], [$S_3$], [$S_4$], [$S_5$],
    [$C_i$ ($mu"mol" dot "L"^(-1)$)], [2,0], [4,0], [6,0], [8,0], [10,0],
    [Facteur de dilution $F$], [], [], [], [], [],
    [$V_0$ à prélever (mL)], [], [], [], [], [],
  )

  *Matériel disponible :* pipettes jaugées de 1,0 mL ; 2,0 mL ; 5,0 mL ; 10,0 mL -- pipette graduée de 5 mL -- fioles jaugées de 50,0 mL -- béchers -- pipette Pasteur -- pissette d'eau distillée.

  + Pour la solution $S_5$, calculer le facteur de dilution $F$, puis le volume $V_0$ de solution mère à prélever.
  + Compléter le tableau pour les autres solutions.
  + Choisir la verrerie de prélèvement adaptée à chaque solution. Quelle difficulté pose la préparation de $S_3$ et $S_4$ ? Proposer une solution.
  + Rédiger le protocole complet de préparation de la solution $S_2$ (verrerie, volumes, gestes).
  + Pour préparer $S_4$, un élève prélève 4 mL de $S_0$ à l'éprouvette graduée, les verse dans un bécher et ajoute 46 mL d'eau mesurés à l'éprouvette. Relever ses deux erreurs.
  + *Pour aller plus loin.* On voulait préparer 100,0 mL de la solution mère $S_0$ par dissolution du colorant solide. Calculer la masse de E133 à peser. Le laboratoire dispose d'une balance précise au centième de gramme (0,01~g) : est-ce raisonnable ? Proposer une autre méthode.
]

// ════════════════════════════════════════════════════════════════
//  EXERCICE 4 — Dosage complet par étalonnage
// ════════════════════════════════════════════════════════════════
#pagebreak()
#exercice[
  *Quelle quantité de colorant dans le sirop de menthe ?* On mesure, à la longueur d'onde choisie dans l'exercice 2, l'absorbance des solutions étalons de l'exercice 3.

  #tab(
    columns: 6,
    [$C$ ($mu"mol" dot "L"^(-1)$)], [2,0], [4,0], [6,0], [8,0], [10,0],
    [$A$], [0,26], [0,53], [0,77], [1,05], [1,29],
  )

  Le sirop de menthe pur est trop concentré : on le *dilue 10 fois*. La solution diluée a une absorbance $A_d = "0,65"$.

  + Tracer la courbe d'étalonnage $A = f(C)$ (papier millimétré ou tableur). La loi de Beer-Lambert est-elle vérifiée ? Justifier.
  + Déterminer le coefficient directeur $k$ de la droite, avec son unité (en $"L" dot "mol"^(-1)$).
  + Déterminer la concentration $C_d$ en E133 de la solution diluée, par lecture graphique puis par le calcul.
  + En déduire la concentration $C_S$ en E133 du sirop pur.
  + Quelle absorbance aurait-on mesurée pour le sirop pur ? Expliquer alors pourquoi il a fallu le diluer.
  + Calculer la concentration en masse $C_m$ de E133 dans le sirop pur, en $"mg" dot "L"^(-1)$.
  + La dose journalière admissible (DJA) du colorant E133 est de 6 mg par kg de masse corporelle et par jour. Quel volume de sirop *pur* une personne de 60 kg devrait-elle consommer pour atteindre la DJA ? Sachant qu'on boit le sirop dilué (1 volume de sirop pour 7 volumes d'eau), conclure.

  #v(0.4em)
  #align(center)[
    #box(width: 15cm, height: 8cm)[
      // papier millimétré simplifié : lignes fines tous les 2 mm, épaisses tous les 1 cm
      #for i in range(0, 76) {
        let w = if calc.rem(i, 5) == 0 { 0.5pt + luma(150) } else { 0.2pt + luma(210) }
        place(top + left, dx: i * 0.2cm, line(end: (0pt, 8cm), stroke: w))
      }
      #for j in range(0, 41) {
        let w = if calc.rem(j, 5) == 0 { 0.5pt + luma(150) } else { 0.2pt + luma(210) }
        place(top + left, dy: j * 0.2cm, line(end: (15cm, 0pt), stroke: w))
      }
    ]
  ]
]

// ════════════════════════════════════════════════════════════════
//  CORRIGÉ (nouvelle page)
// ════════════════════════════════════════════════════════════════
#pagebreak()
#chapitre[Loi de Beer-Lambert — Corrigé]

#set text(size: 10pt)
#let corr(titre, body) = block(width: 100%, above: 0.9em, below: 0.4em)[
  #text(fill: c-primary, weight: "bold", font: "Fira Sans")[#titre] #v(-0.2em) #body
]

#corr[Exercice 1][
  + $A = k dot C$ : $A$ absorbance (sans unité), $C$ concentration ($"mol" dot "L"^(-1)$), $k$ en $"L" dot "mol"^(-1)$ (dépend de l'espèce, de $lambda$ et de la cuve). Valable pour des solutions diluées ($A lt.tilde 2$).
  + $A_1 = k dot C_1 = "2,0" times 10^4 times "2,5" times 10^(-5) = "0,50"$.
  + $C_2 = A_2 \/ k = "0,80" \/ ("2,0" times 10^4) = "4,0" times 10^(-5) "mol" dot "L"^(-1)$.
  + $C$ divisée par 4 $=>$ $A$ divisée par 4 (proportionnalité) : $A approx "0,13"$.
  + $A_a = k C_a$ et $A_b = k C_b$ $=>$ $C_b \/ C_a = A_b \/ A_a$ ; $C_b = "3,0" times 10^(-5) times "0,72" \/ "0,45" = "4,8" times 10^(-5) "mol" dot "L"^(-1)$.
]

#corr[Exercice 2][
  + E102 : $lambda_"max" approx 430$ nm ; E133 : $lambda_"max" approx 630$ nm.
  + 430 nm : violet ; 630 nm : orange.
  + Une solution a la couleur *complémentaire* de celle qu'elle absorbe le plus (diamétralement opposée sur le cercle). E102 absorbe le violet $->$ *jaune* ; E133 absorbe l'orange $->$ *bleu*.
  + Le sirop absorbe le violet (≈ 430 nm) et l'orange (≈ 630 nm) ; il transmet surtout le vert (500–570 nm) : il apparaît vert (jaune + bleu).
  + À $lambda_"max"$, l'absorbance est maximale : mesure plus sensible et plus précise (et peu affectée par un léger décalage de $lambda$).
  + À 430 nm, c'est surtout la tartrazine qui absorbe : l'absorbance ne dépend pas que de E133. Il faut travailler à *630 nm*, où seul E133 absorbe.
]

#corr[Exercice 3][
  $F = C_0 \/ C_i$ et $V_0 = V_"fiole" \/ F$.
  #tab(
    columns: 6,
    [Solution], [$S_1$], [$S_2$], [$S_3$], [$S_4$], [$S_5$],
    [$F$], [50], [25], [16,7], [12,5], [10],
    [$V_0$ (mL)], [1,0], [2,0], [3,0], [4,0], [5,0],
  )
  + $F = "1,0" times 10^(-4) \/ "1,0" times 10^(-5) = 10$ ; $V_0 = "50,0" \/ 10 = "5,0"$ mL.
  + Voir tableau.
  + Pipettes jaugées de 1,0 mL ($S_1$), 2,0 mL ($S_2$), 5,0 mL ($S_5$). Pas de pipette jaugée de 3,0 ou 4,0 mL : utiliser la pipette graduée de 5 mL (ou deux prélèvements, moins précis).
  + Verser un peu de $S_0$ dans un bécher ; prélever 2,0 mL à la pipette jaugée (rincée avec $S_0$) + propipette ; verser dans la fiole de 50,0 mL ; remplir aux 2/3 d'eau distillée, boucher, agiter ; compléter au trait de jauge (pipette Pasteur) ; boucher et homogénéiser.
  + Éprouvette : prélèvement imprécis $->$ pipette graduée. Bécher + 46 mL d'eau : volume final imprécis $->$ fiole jaugée de 50,0 mL complétée au trait de jauge.
  + $m = C_0 dot V dot M = "1,0" times 10^(-4) times "0,1000" times "792,8" approx "7,9" times 10^(-3)$ g $= "7,9"$ mg : inférieur à la précision de la balance (0,01 g), impossible à peser correctement. On prépare une solution 100 fois plus concentrée ($m approx "0,79"$ g dans 100,0 mL), puis on la dilue 100 fois.
]

#corr[Exercice 4][
  + Les points sont alignés sur une droite passant par l'origine : $A$ est proportionnelle à $C$, la loi est vérifiée.
  + $k approx "1,29" \/ ("10,0" times 10^(-6)) approx "1,3" times 10^5 "L" dot "mol"^(-1)$.
  + $C_d = A_d \/ k = "0,65" \/ ("1,3" times 10^5) = "5,0" times 10^(-6) "mol" dot "L"^(-1)$ (lecture : 5,0 µmol·L⁻¹).
  + $C_S = 10 times C_d = "5,0" times 10^(-5) "mol" dot "L"^(-1)$.
  + $A_S = k dot C_S approx "6,5"$ : hors du domaine de mesure du spectrophotomètre et de validité de la loi ($A lt.tilde 2$), d'où la dilution.
  + $C_m = C_S dot M = "5,0" times 10^(-5) times "792,8" approx "4,0" times 10^(-2) "g" dot "L"^(-1) = 40 "mg" dot "L"^(-1)$.
  + DJA : $6 times 60 = 360$ mg ; $V = 360 \/ 40 = 9$ L de sirop pur, soit $9 times 8 = 72$ L de boisson par jour : aucun risque dans une consommation normale.
]
