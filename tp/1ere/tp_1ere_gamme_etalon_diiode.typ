#import "../../_assets/template_physique.typ": *

// ── Graphe "allure" du spectre d'absorption (dessin natif, sans dépendance) ──
#let plot-ox = 1.3cm
#let plot-oy = 0.3cm
#let plot-w = 15cm
#let plot-h = 7cm
#let lam0 = 400
#let lam1 = 700
#let Amax = 0.9

#let X(lam) = plot-ox + (lam - lam0) / (lam1 - lam0) * plot-w
#let Y(a) = plot-oy + plot-h - (a / Amax) * plot-h

#let seg(p, q, stroke: 1.1pt + c-primary) = place(top + left, dx: p.at(0), dy: p.at(1),
  line(end: (q.at(0) - p.at(0), q.at(1) - p.at(1)), stroke: stroke))

#let data-spectre = (
  (400,0.18), (420,0.42), (440,0.64), (460,0.75), (480,0.71), (500,0.60),
  (520,0.48), (540,0.37), (560,0.28), (580,0.21), (600,0.15), (620,0.11),
  (640,0.08), (660,0.06), (680,0.04), (700,0.03),
)

#let spectre-allure() = box(width: plot-ox + plot-w + 0.5cm, height: plot-oy + plot-h + 1.1cm)[
  // axes
  #place(top + left, dx: plot-ox, dy: Y(0), line(end: (plot-w, 0pt), stroke: 1pt))
  #place(top + left, dx: plot-ox, dy: plot-oy, line(end: (0pt, plot-h), stroke: 1pt))

  // graduations de l'axe des longueurs d'onde : tous les 10 nm (mineures), tous les 50 nm (majeures, étiquetées)
  #for i in range(0, 31) {
    let lam = lam0 + i * 10
    let x = X(lam)
    let major = calc.rem(i, 5) == 0
    place(top + left, dx: x, dy: Y(0), line(end: (0pt, if major { 0.22cm } else { 0.12cm }), stroke: 0.4pt))
    if major {
      place(top + left, dx: x - 0.5cm, dy: Y(0) + 0.28cm, text(size: 0.7em)[#lam])
    }
  }

  // graduations de l'axe des absorbances : tous les 0,1
  #let a-labels = ("0", "0,1", "0,2", "0,3", "0,4", "0,5", "0,6", "0,7", "0,8", "0,9")
  #for j in range(0, 10) {
    let a = j * 0.1
    let y = Y(a)
    place(top + left, dx: plot-ox - 0.15cm, dy: y, line(end: (0.15cm, 0pt), stroke: 0.4pt))
    place(top + left, dx: plot-ox - 1.05cm, dy: y - 0.15cm, text(size: 0.7em)[#a-labels.at(j)])
  }

  // courbe : allure du spectre de S4
  #let pts = data-spectre.map(p => (X(p.at(0)), Y(p.at(1))))
  #for i in range(0, pts.len() - 1) {
    seg(pts.at(i), pts.at(i + 1))
  }

  // titres des axes
  #place(top + left, dx: plot-ox + plot-w - 1.2cm, dy: Y(0) + 0.55cm, text(size: 0.8em)[$lambda$ (nm)])
  #place(top + left, dx: plot-ox - 1.25cm, dy: plot-oy - 0.25cm, text(size: 0.8em)[$A$])
]

// On applique le template à tout le document
#show: conf
#chapitre[TP — Contrôle qualité d'un antiseptique iodé - 1ère]

*Contexte* : le Lugol est une solution aqueuse de diiode $I_2$ (stabilisé par de l'iodure de potassium), de couleur brun-jaune, utilisée comme antiseptique. Un flacon de Lugol dilué reçu au laboratoire porte une concentration $C_"réf"$ annoncée par le fournisseur, que l'on doit vérifier par spectrophotométrie. On construira une gamme étalon pour tracer $A = k dot C$, puis on comparera la concentration mesurée $C_x$ à $C_"réf"$.

#important[
  Le diiode tache la peau et les tissus et est irritant : lunettes et blouse obligatoires, éviter tout contact cutané. Neutraliser les rejets avec une solution de thiosulfate de sodium avant évacuation.
]

*Matériel par binôme* : 5 fioles jaugées 50 mL, pipettes jaugées 5/10/20 mL + propipette, béchers, spectrophotomètre + cuves, ordinateur (tableur).

= Préparation de la gamme étalon

On dilue la solution mère $C_0 = 2,0 times 10^(-3)$ mol/L dans des fioles jaugées de 50 mL.

#travail[
  + Pour $S_4$ ($C_4 = 1,0 times 10^(-3)$ mol/L), montrer que le volume de $C_0$ à prélever est $V_4 = 25,0$ mL.
  + Calculer de même le volume à prélever pour $S_1$, $S_2$, $S_3$ et $S_5$, et compléter le tableau.
  + Schématiser (verrerie utilisée, volumes, légendes) les étapes de préparation de la solution $S_4$.
]

#table(
  columns: (1.6fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  [], [$S_1$], [$S_2$], [$S_3$], [$S_4$], [$S_5$],
  [$C_i$ (mol/L)], [$2,0 times 10^(-4)$], [$4,0 times 10^(-4)$], [$6,0 times 10^(-4)$], [$1,0 times 10^(-3)$], [$1,4 times 10^(-3)$],
  [$V(C_0)$ prélevé (mL)], [], [], [], [$25,0$], [],
)

*Protocole* : rincer chaque fiole à l'eau distillée et chaque pipette avec la solution qu'elle prélève ; prélever $V_i$ de $C_0$, compléter à 50 mL avec de l'eau distillée, boucher et homogénéiser.

= Choix de la longueur d'onde de travail

Le spectre d'absorption ci-dessous a été enregistré pour la solution $S_4$ entre 400 et 700 nm.

#align(center)[#spectre-allure()]

#travail[
  + Déterminer graphiquement $lambda_"max"$, la longueur d'onde du maximum d'absorption (précision attendue : $plus.minus 10$ nm).
]

$lambda_"max" =$ .......... nm

= Droite d'étalonnage

#experience[
  Étalonner le spectrophotomètre à $lambda_"max"$ avec le blanc. Mesurer l'absorbance de $S_1$ à $S_5$, puis de la solution inconnue $C_x$ (le flacon de Lugol dilué à contrôler), en rinçant la cuve avec la solution avant chaque mesure.
]

#table(
  columns: (1.6fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  [], [$S_1$], [$S_2$], [$S_3$], [$S_4$], [$S_5$], [$C_x$],
  [$C$ (mol/L)], [$2,0 times 10^(-4)$], [$4,0 times 10^(-4)$], [$6,0 times 10^(-4)$], [$1,0 times 10^(-3)$], [$1,4 times 10^(-3)$], [?],
  [$A$ mesurée], [], [], [], [], [], [],
  [$k_i = A \/ C$ (L·mol⁻¹)], [], [], [], [], [], [—],
)

#travail[
  + Calculer, pour chaque solution de la gamme, le rapport $k_i = A \/ C$ et compléter la dernière ligne du tableau.
  + La grandeur $A$ est-elle proportionnelle à $C$ ? Justifier brièvement.
  + Tracer $A = f(C)$ au tableur ; ajouter la droite de régression passant par l'origine.
  + Déterminer $k$ de deux façons : graphiquement (pente de la droite), et en calculant la moyenne des $k_i$. Comparer les deux valeurs obtenues.
  + En déduire $C_x = A_x \/ k$.
]

= Conclusion : le flacon est-il conforme ?

#définition[
  Pour comparer une valeur mesurée $C_x$ (d'incertitude-type $u(C_x)$) à une valeur de référence $C_"réf"$, on calcule le z-score :
  $ z = abs(C_x - C_"réf") / u(C_x) $
  Si $z lt.eq 2$, les deux valeurs sont compatibles ; sinon, elles sont incompatibles.
]

*Données fournies* : $C_"réf" = 3,0 times 10^(-4)$ mol/L (étiquette du fournisseur) ; $u(C_x) = 0,2 times 10^(-4)$ mol/L.

#travail[
  + Calculer le z-score entre votre valeur mesurée $C_x$ et $C_"réf"$.
  + Le flacon de Lugol est-il conforme à l'étiquette ? Conclure sur la problématique initiale.
]
