#import "@preview/cetz:0.3.2": canvas, draw
#import "../../_assets/template_evaluation.typ": *

#show: conf

// ── Outils locaux ─────────────────────────────────────────────────────
// Nombre avec virgule décimale
#let fr(v, d: 2) = str(calc.round(v, digits: d)).replace(".", ",")

// Graphique de données (points + droite modèle) dessiné avec cetz
// pts : tableau de (x, y) ; slope : coefficient directeur de la droite (none = pas de droite)
#let graphe(
  xmin: 0, xmax: 10, ymax: 1.2, xstep: 1, ystep: 0.1, xlab-every: 1, ylab-every: 2,
  w: 11, h: 6.5, pts: (), slope: none, xlabel: [], ylabel: [], d: 2,
  courbe: none,
) = canvas(length: 1cm, {
  import draw: *
  let sx = w / (xmax - xmin)
  let sy = h / ymax
  let nx = int(calc.round((xmax - xmin) / xstep))
  let ny = int(calc.round(ymax / ystep))
  // quadrillage
  for i in range(nx + 1) {
    line((i * xstep * sx, 0), (i * xstep * sx, h), stroke: 0.3pt + luma(200))
  }
  for j in range(ny + 1) {
    line((0, j * ystep * sy), (w, j * ystep * sy), stroke: 0.3pt + luma(200))
  }
  // axes
  line((0, 0), (w + 0.4, 0), stroke: 0.8pt, mark: (end: "stealth", fill: black))
  line((0, 0), (0, h + 0.4), stroke: 0.8pt, mark: (end: "stealth", fill: black))
  // graduations
  for i in range(nx + 1) {
    if calc.rem(i, xlab-every) == 0 {
      content((i * xstep * sx, -0.3), text(size: 8pt, fr(xmin + i * xstep, d: d)))
    }
  }
  for j in range(ny + 1) {
    if calc.rem(j, ylab-every) == 0 {
      content((-0.15, j * ystep * sy), anchor: "east", text(size: 8pt, fr(j * ystep, d: d)))
    }
  }
  content((w + 0.3, -0.75), anchor: "east", text(size: 9pt, xlabel))
  content((0.15, h + 0.65), anchor: "west", text(size: 9pt, ylabel))
  // courbe continue éventuelle (spectre)
  if courbe != none {
    line(..courbe.map(p => ((p.at(0) - xmin) * sx, p.at(1) * sy)), stroke: 1.3pt + rgb("#2c5f8a"))
  }
  // droite modèle
  if slope != none {
    let xend = calc.min(xmax, ymax / slope)
    line((0, 0), ((xend - xmin) * sx, slope * xend * sy), stroke: 0.9pt + rgb("#c0392b"))
  }
  // points de mesure
  for p in pts {
    let (x, y) = ((p.at(0) - xmin) * sx, p.at(1) * sy)
    line((x - 0.1, y - 0.1), (x + 0.1, y + 0.1), stroke: 1pt)
    line((x - 0.1, y + 0.1), (x + 0.1, y - 0.1), stroke: 1pt)
  }
})

// Bloc « Erreur fréquente » (même esprit que le bloc Important : jaune citron, liseré pointillé)
#let erreur(body) = block(
  width: 100%, inset: 8pt, radius: 2pt,
  fill: rgb("#FAF667").lighten(85%),
  stroke: (left: (thickness: 3pt, paint: rgb("#b5ae00"), dash: "dashed")),
)[#text(weight: "bold", fill: rgb("#8a8400"))[❗ Erreur fréquente] #h(0.4em) #body]

// Résultat souligné
#let res(x) = box(stroke: (bottom: 0.6pt), outset: (bottom: 2pt), x)

// ══════════════════════════════════════════════════════════════════════
//  ÉNONCÉS
// ══════════════════════════════════════════════════════════════════════

#align(center)[#text(size: 14pt, weight: "bold")[Exercices de préparation -- Quantité de matière, dilution, loi de Beer-Lambert]]
#v(0.2cm)

#box(stroke: 0.5pt, inset: 8pt, width: 100%)[
  *Consignes :* ces exercices préparent le devoir de chimie sur la quantité de matière, la dilution et la loi de Beer-Lambert. Rédigez vos réponses, donnez les résultats avec une unité et un nombre de chiffres significatifs adapté, et #underline[soulignez les résultats numériques].
]

#v(0.3em)

// ── EXERCICE 1 ────────────────────────────────────────────────────────
#exercice(points: "4")[
  *Le flacon d'alcool isopropylique*

  Pour nettoyer les écrans et les claviers, on utilise de l'alcool isopropylique, que l'on considère comme du propan-2-ol pur, de formule brute $C_3 H_8 O$. Le flacon contient 250 mL de liquide.

  La masse volumique du propan-2-ol vaut 0,785 g/mL.

  *Données :* $N_A = "6,0" times 10^23 "mol"^(-1)$ ; $M_C = "12,0" "g" dot "mol"^(-1)$ ; $M_O = "16,0" "g" dot "mol"^(-1)$ ; $M_H = "1,00" "g" dot "mol"^(-1)$.

  + Calculer la masse de propan-2-ol contenue dans le flacon.
  + Calculer la masse molaire du propan-2-ol.
  + Calculer la quantité de matière de propan-2-ol, puis le nombre de molécules présentes dans le flacon.
  + Quelle est la masse d'une molécule de propan-2-ol ?
]

#v(0.3em)

// ── EXERCICE 2 ────────────────────────────────────────────────────────
#exercice(points: "3")[
  *Vrai ou faux ?*

  Parmi les 4 propositions ci-dessous à propos de dilutions, trouver celles qui sont vraies et corriger celles qui sont fausses :
  + Lors d'une dilution, la quantité de matière de soluté prélevée dans la solution mère se retrouve en totalité dans la solution fille.
  + Pour préparer 100,0 mL d'une solution diluée 4 fois, on prélève 25,0 mL de solution mère avec une éprouvette graduée, on les verse dans un bécher puis on ajoute 75 mL d'eau.
  + Un sirop de concentration en masse $12 "g" dot "L"^(-1)$ dilué 3 fois a une concentration en masse de $"4,0" "g" dot "L"^(-1)$.
  + Pour diluer 5 fois 50,0 mL d'une solution, il faut lui ajouter 250,0 mL d'eau.
]

#v(0.3em)

// ── EXERCICE 3 ────────────────────────────────────────────────────────
#exercice(points: "13")[
  *Le sirop de citron : contrôler la teneur en colorant*

  Un sirop de citron industriel doit sa couleur jaune à un colorant alimentaire, la *tartrazine* (E102). La fiche technique du fabricant indique : _« tartrazine : 40 mg par litre de sirop »_.

  *Objectif :* vérifier l'indication du fabricant à l'aide d'un spectrophotomètre.

  *Donnée :* masse molaire de la tartrazine : $M = "534,4" "g" dot "mol"^(-1)$.

  #v(0.3em)
  *A. Couleur de la tartrazine*

  On donne ci-dessous le spectre d'absorption d'une solution aqueuse de tartrazine (à gauche) et un cercle chromatique (à droite).

  #grid(
    columns: (1.8fr, 1fr),
    column-gutter: 6pt,
    align: horizon,
    figure(
      graphe(
        xmin: 350, xmax: 700, ymax: 1.0, xstep: 25, ystep: 0.1, xlab-every: 2, ylab-every: 2, w: 8.5, h: 4.5, d: 1,
        courbe: range(0, 71).map(i => {
          let l = 350 + 5 * i
          (l, 0.80 * calc.exp(-calc.pow((l - 430) / 45, 2)) + 0.18 * calc.exp(-calc.pow((l - 350) / 15, 2)) + 0.01)
        }),
        xlabel: [$lambda$ (nm)], ylabel: [$A$],
      ),
      caption: [Spectre d'absorption de la tartrazine],
    ),
    figure(image("../figures/cercle_chromatique_6.png", width: 100%), caption: [Cercle chromatique]),
  )

  *1.* Relever la longueur d'onde $lambda_max$ pour laquelle l'absorbance de la tartrazine est maximale. À quelle couleur (ou entre quelles couleurs) se situe-t-elle sur le cercle chromatique ?

  *2.* Expliquer pourquoi une solution de tartrazine est jaune.

  *3.* Les mesures d'absorbance seront réalisées à une seule longueur d'onde. Laquelle faut-il choisir ? Justifier.

  #v(0.3em)
  *B. Préparation d'une solution étalon par dilution*

  On dispose d'une solution mère $S_0$ de tartrazine de concentration $C_0 = "1,00" times 10^(-3) "mol" dot "L"^(-1)$. On souhaite préparer une solution fille $S_2$ de concentration $C_2 = 40 " " mu"mol" dot "L"^(-1)$.

  Matériel disponible : pipettes jaugées de 5,0 ; 10,0 ; 20,0 et 25,0 mL -- fioles jaugées de 50,0 ; 100,0 et 250,0 mL -- béchers -- pipette Pasteur -- eau distillée.

  *4.* Convertir $C_2$ en $"mol" dot "L"^(-1)$, puis calculer le facteur de dilution $F$.

  *5.* Choisir, en justifiant par un calcul, la pipette jaugée et la fiole jaugée à utiliser.

  *6.* Rédiger le protocole de préparation de la solution $S_2$.

  #v(0.3em)
  *C. Exploitation de la loi de Beer-Lambert*

  On prépare de la même façon plusieurs solutions étalons de tartrazine, puis on mesure leur absorbance à la longueur d'onde choisie à la question 3. On obtient la courbe d'étalonnage ci-dessous.

  #align(center)[
    #graphe(
      xmax: 50, ymax: 1.4, xstep: 2.5, ystep: 0.05, xlab-every: 2, ylab-every: 4, w: 10, h: 6,
      pts: ((5, 0.14), (10, 0.27), (20, 0.53), (30, 0.82), (40, 1.08)), slope: 0.027, d: 1,
      xlabel: [$C$ ($mu"mol" dot "L"^(-1)$)], ylabel: [$A$],
    )
  ]

  *7.* Énoncer la loi de Beer-Lambert en précisant la signification et l'unité de chaque grandeur.

  *8.* La courbe d'étalonnage est-elle en accord avec cette loi ? Justifier.

  *9.* Déterminer le coefficient directeur $k$ de la droite modélisée, en précisant son unité. Écrire la relation entre $A$ et $C$ correspondant à cette droite.

  #v(0.3em)
  *D. Retour au sirop*

  L'absorbance du sirop pur vaut environ 2 : elle est en dehors de la gamme d'étalonnage. On dilue donc le sirop 5 fois. L'absorbance de la solution diluée, mesurée dans les mêmes conditions, vaut $A_d = "0,40"$.

  *10.* À l'aide de la relation obtenue à la question 9, déterminer la concentration $C_d$ en tartrazine de la solution diluée.

  *11.* En déduire la concentration $C_S$ en tartrazine du sirop, en $"mol" dot "L"^(-1)$.

  *12.* À partir de l'indication du fabricant, calculer la concentration en quantité de matière $C_"fab"$ de tartrazine attendue dans le sirop. Comparer $C_"fab"$ à $C_S$ et conclure.
]

// ══════════════════════════════════════════════════════════════════════
//  CORRECTION
// ══════════════════════════════════════════════════════════════════════
#pagebreak()

#align(center)[#text(size: 14pt, weight: "bold")[Correction détaillée]]
#v(0.3cm)

// ── Correction exercice 1 ─────────────────────────────────────────────
#block(fill: rgb("#2c5f8a"), inset: 6pt, radius: 3pt, width: 100%)[#text(fill: white, weight: "bold")[Exercice 1 -- Le flacon d'alcool isopropylique]]

*1.* La masse volumique est donnée en g/mL : on garde le volume en mL.
$ m = rho times V = "0,785" "g" dot "mL"^(-1) times 250 "mL" = 196 "g" $
#res[$m approx 196 "g"$]

#erreur[Mélanger les unités : utiliser $rho$ en g/mL avec $V = "0,250"$ L donne $m = "0,196"$ g, mille fois trop petit. Avant de calculer, on vérifie que les unités de $rho$ et de $V$ sont compatibles (g/mL avec mL, ou g/L avec L : $rho = 785 "g" dot "L"^(-1)$). Un ordre de grandeur aide aussi : 250 mL de liquide ont une masse de l'ordre de 200 g, pas de 0,2 g.]

*2.* $M(C_3 H_8 O) = 3 M_C + 8 M_H + M_O = 3 times "12,0" + 8 times "1,00" + "16,0" = "60,0" "g" dot "mol"^(-1)$ #h(0.5em) #res[$M = "60,0" "g" dot "mol"^(-1)$]

*3.* $n = m / M = (196) / ("60,0") = "3,27" "mol"$ #h(0.5em) #res[$n approx "3,27" "mol"$]

$N = n times N_A = "3,27" times "6,0" times 10^23 = "2,0" times 10^24$ #h(0.5em) #res[$N approx "2,0" times 10^24$ molécules]

*4.* Une mole de molécules a une masse de 60,0 g et contient $N_A$ molécules :
$ m_"molécule" = M / N_A = ("60,0") / ("6,0" times 10^23) = "1,0" times 10^(-22) "g" $
#res[$m_"molécule" approx "1,0" times 10^(-22) "g"$] (on obtient la même valeur avec $m / N$).

#v(0.4em)

// ── Correction exercice 2 ─────────────────────────────────────────────
#block(fill: rgb("#2c5f8a"), inset: 6pt, radius: 3pt, width: 100%)[#text(fill: white, weight: "bold")[Exercice 2 -- Vrai ou faux ?]]

+ *Vrai.* On ajoute seulement du solvant : la quantité de matière de soluté se conserve, $n_0 = n_1$, d'où la relation $C_0 V_0 = C_1 V_1$.
+ *Faux.* Le calcul du volume est juste ($"100,0" / 4 = "25,0"$ mL) mais pas la verrerie : on prélève les 25,0 mL avec une *pipette jaugée*, on les verse dans une *fiole jaugée de 100,0 mL* et on complète avec de l'eau distillée *jusqu'au trait de jauge*. L'éprouvette et le bécher ne sont pas assez précis.
+ *Vrai.* Diluer 3 fois divise la concentration par 3 : $12 / 3 = "4,0" "g" dot "L"^(-1)$.
+ *Faux.* Diluer 5 fois signifie que le volume *final* est 5 fois plus grand : $V_1 = 5 times "50,0" = "250,0"$ mL. Il faut donc ajouter $"250,0" - "50,0" = "200,0"$ mL d'eau (en pratique, on complète une fiole jaugée de 250,0 mL).

#erreur[Confondre le volume d'eau *ajouté* et le volume *final* de solution fille. Le facteur de dilution compare les volumes de solution fille et de solution mère : $F = V_"fille" / V_"mère"$. Ajouter 250 mL d'eau à 50 mL donne 300 mL, donc une dilution par 6 et non par 5.]

#v(0.4em)

// ── Correction exercice 3 ─────────────────────────────────────────────
#block(fill: rgb("#2c5f8a"), inset: 6pt, radius: 3pt, width: 100%)[#text(fill: white, weight: "bold")[Exercice 3 -- Le sirop de citron]]

*1.* Le maximum d'absorption est obtenu pour #res[$lambda_max approx 430$ nm]. Cette longueur d'onde se situe entre le violet (400 nm) et le bleu (480 nm) : la tartrazine absorbe surtout le #res[violet-bleu].

*2.* La couleur perçue d'une solution est la *couleur complémentaire* de la couleur qu'elle absorbe le plus, c'est-à-dire la couleur diamétralement opposée sur le cercle chromatique. L'opposé du violet est le jaune : la solution de tartrazine est #res[jaune].

*3.* On choisit #res[$lambda = lambda_max approx 430$ nm] : c'est là que l'absorbance est la plus grande, donc que la mesure est la plus sensible et la plus précise (une petite variation de concentration donne une variation d'absorbance plus importante).

*4.* $C_2 = 40 " " mu"mol" dot "L"^(-1) = 40 times 10^(-6) "mol" dot "L"^(-1) = "4,0" times 10^(-5) "mol" dot "L"^(-1)$
$ F = C_0 / C_2 = ("1,00" times 10^(-3)) / ("4,0" times 10^(-5)) = 25 $
#res[$F = 25$]

*5.* $F = V_"fiole" / V_"pipette"$ donc $V_"fiole" = 25 times V_"pipette"$ :
- 5,0 mL → 125 mL (pas de fiole) ; 10,0 mL → #res[250 mL] (fiole disponible) ; 20,0 mL → 500 mL ; 25,0 mL → 625 mL.

On utilise #res[la pipette jaugée de 10,0 mL et la fiole jaugée de 250,0 mL].

*6.* Protocole :
- verser un peu de solution mère $S_0$ dans un bécher ;
- prélever 10,0 mL de $S_0$ avec la pipette jaugée de 10,0 mL munie d'une propipette ;
- les verser dans la fiole jaugée de 250,0 mL ;
- ajouter de l'eau distillée jusqu'aux trois quarts environ, boucher et agiter ;
- compléter avec de l'eau distillée jusqu'au trait de jauge (pipette Pasteur pour la fin) ;
- boucher et retourner plusieurs fois pour homogénéiser.

*7.* *Loi de Beer-Lambert :* pour une solution diluée et à une longueur d'onde donnée, l'absorbance est proportionnelle à la concentration de l'espèce colorée :
$ A = k times C $
- $A$ : absorbance (sans unité) ;
- $C$ : concentration en quantité de matière de l'espèce colorée (en $"mol" dot "L"^(-1)$) ;
- $k$ : coefficient de proportionnalité (en $"L" dot "mol"^(-1)$), qui dépend de l'espèce, de la longueur d'onde et de la cuve.

*8.* Les points sont alignés sur une *droite passant par l'origine* : $A$ est proportionnelle à $C$, la courbe est en accord avec la loi de Beer-Lambert.

*9.* Avec un point de la droite éloigné de l'origine, par exemple $(40 ; "1,08")$ :
$ k = A / C = ("1,08") / (40 " " mu"mol" dot "L"^(-1)) = "0,027" "L" dot mu"mol"^(-1) $
Comme $1 " " mu"mol" = 10^(-6)$ mol : $k = "0,027" / 10^(-6) = "2,7" times 10^4 "L" dot "mol"^(-1)$.

#res[$k = "2,7" times 10^4 "L" dot "mol"^(-1)$] et la relation s'écrit #res[$A = "2,7" times 10^4 times C$] (avec $C$ en $"mol" dot "L"^(-1)$).

#erreur[Se tromper dans la conversion des µmol. Le préfixe micro (µ) vaut $10^(-6)$, pas $10^(-3)$ (qui correspond au milli, m). Erreur typique : $k = "0,027" "L" dot mu"mol"^(-1) = 27 "L" dot "mol"^(-1)$ au lieu de $"2,7" times 10^4 "L" dot "mol"^(-1)$. Pour s'en sortir : $1 "mol" = 10^6 " " mu"mol"$, donc un coefficient « par µmol » devient $10^6$ fois plus grand « par mol ». On peut aussi garder les µmol/L dans tout le calcul et ne convertir qu'à la fin.]

*10.* $C_d = A_d / k = ("0,40") / ("0,027") = 15 " " mu"mol" dot "L"^(-1)$ #h(0.5em) #res[$C_d approx "1,5" times 10^(-5) "mol" dot "L"^(-1)$]

(La valeur est bien comprise dans la gamme d'étalonnage, entre 5 et 40 µmol/L.)

*11.* Le sirop a été dilué 5 fois : il est 5 fois plus concentré que la solution diluée.
$ C_S = 5 times C_d = 5 times "1,48" times 10^(-5) = "7,4" times 10^(-5) "mol" dot "L"^(-1) $
#res[$C_S approx "7,4" times 10^(-5) "mol" dot "L"^(-1)$]

*12.* Concentration en masse annoncée : $C_m = 40 "mg" dot "L"^(-1) = "4,0" times 10^(-2) "g" dot "L"^(-1)$.
$ C_"fab" = C_m / M = ("4,0" times 10^(-2)) / ("534,4") = "7,5" times 10^(-5) "mol" dot "L"^(-1) $
#res[$C_"fab" approx "7,5" times 10^(-5) "mol" dot "L"^(-1)$]

$C_S approx "7,4" times 10^(-5) "mol" dot "L"^(-1)$ et $C_"fab" approx "7,5" times 10^(-5) "mol" dot "L"^(-1)$ : les deux valeurs sont très proches, compte tenu de la précision de la lecture graphique et de la mesure d'absorbance. #res[L'indication du fabricant est vérifiée.]
