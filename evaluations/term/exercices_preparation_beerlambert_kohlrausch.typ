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

#align(center)[#text(size: 14pt, weight: "bold")[Exercices de préparation -- Spectrophotométrie et conductimétrie]]
#v(0.2cm)

#box(stroke: 0.5pt, inset: 8pt, width: 100%)[
  *Consignes :* ces exercices préparent le devoir sur la loi de Beer-Lambert et la loi de Kohlrausch. Rédigez vos réponses, donnez les résultats avec une unité et un nombre de chiffres significatifs adapté, et #underline[soulignez les résultats numériques].
]

#v(0.3em)

// ── EXERCICE 1 ────────────────────────────────────────────────────────
#exercice(points: "7")[
  *Une boisson énergisante bleue*

  Une boisson énergisante doit sa couleur bleue intense au colorant alimentaire *E133*, appelé « bleu brillant FCF ». On souhaite déterminer la concentration de ce colorant dans la boisson, puis vérifier qu'une consommation raisonnable ne présente pas de risque.

  *Données :*
  - masse molaire du colorant E133 : $M = "792,8" "g" dot "mol"^(-1)$ ;
  - dose journalière admissible (DJA) du E133 : 6 mg par kg de masse corporelle et par jour ;
  - volume d'une canette : 50 cL.

  #v(0.3em)
  *A. Couleur du colorant*

  #grid(
    columns: (1.8fr, 1fr),
    column-gutter: 6pt,
    align: horizon,
    figure(
      graphe(
        xmin: 400, xmax: 750, ymax: 1.2, xstep: 25, ystep: 0.1, xlab-every: 2, ylab-every: 2, w: 8.5, h: 4.5, d: 1,
        courbe: range(0, 71).map(i => {
          let l = 400 + 5 * i
          (l, 1.10 * calc.exp(-calc.pow((l - 630) / 32, 2)) + 0.12 * calc.exp(-calc.pow((l - 410) / 25, 2)) + 0.02)
        }),
        xlabel: [$lambda$ (nm)], ylabel: [$A$],
      ),
      caption: [Spectre d'absorption du colorant E133],
    ),
    figure(image("../figures/cercle_chromatique_6.png", width: 100%), caption: [Cercle chromatique]),
  )

  *1.* Relever la longueur d'onde $lambda_max$ du maximum d'absorption du colorant. À quelle couleur correspond-elle ?

  *2.* Expliquer pourquoi la boisson paraît bleue.

  #v(0.3em)
  *B. Courbe d'étalonnage*

  On mesure, à la longueur d'onde $lambda_max$, l'absorbance de solutions étalons de E133. On obtient la courbe ci-dessous.

  #align(center)[
    #graphe(
      xmax: 10, ymax: 1.2, xstep: 0.5, ystep: 0.05, xlab-every: 2, ylab-every: 4, w: 10, h: 6,
      pts: ((1, 0.13), (2, 0.27), (4, 0.51), (6, 0.79), (8, 1.03)), slope: 0.13, d: 1,
      xlabel: [$C$ ($mu"mol" dot "L"^(-1)$)], ylabel: [$A$],
    )
  ]

  *3.* Énoncer la loi de Beer-Lambert. Préciser les conditions dans lesquelles elle est valable.

  *4.* La courbe d'étalonnage est-elle en accord avec la loi de Beer-Lambert ? Justifier.

  *5.* Déterminer le coefficient directeur $k$ de la droite, en $"L" dot mu"mol"^(-1)$ puis en $"L" dot "mol"^(-1)$.

  #v(0.3em)
  *C. Dosage du colorant dans la boisson*

  L'absorbance de la boisson pure, mesurée dans les mêmes conditions, vaut environ 2,6. On dilue alors la boisson 5 fois : l'absorbance de la solution diluée vaut $A_d = "0,52"$.

  *6.* Pourquoi a-t-il été nécessaire de diluer la boisson avant d'exploiter la mesure ?

  *7.* Déterminer la concentration $C_d$ en colorant de la solution diluée, puis la concentration $C$ en colorant de la boisson, en $"mol" dot "L"^(-1)$.

  *8.* En déduire la concentration en masse $C_m$ de colorant dans la boisson, en $"mg" dot "L"^(-1)$.

  *9.* Un adolescent de 60 kg peut-il boire une canette par jour sans dépasser la DJA ? Combien de canettes faudrait-il pour l'atteindre ?
]

#v(0.3em)

// ── EXERCICE 2 ────────────────────────────────────────────────────────
#exercice(points: "6")[
  *Le sulfate de cuivre du vigneron*

  Pour protéger sa vigne contre le mildiou, un champignon, un vigneron pulvérise une solution de sulfate de cuivre $("Cu"^(2+) + "SO"_4^(2-))$. Sa notice de préparation indique : _« 25 g de sulfate de cuivre anhydre par litre de solution »_. Au laboratoire du lycée, on souhaite contrôler la solution qu'il a préparée. La couleur bleue de la solution est due aux ions cuivre(II) $"Cu"^(2+)$.

  *Données :*
  - masse molaire du sulfate de cuivre anhydre : $M("CuSO"_4) = "159,6" "g" dot "mol"^(-1)$ ;
  - le spectre d'absorption des ions $"Cu"^(2+)$ présente un maximum vers $lambda = 800$ nm.

  #v(0.3em)
  *A. Préparation d'une solution étalon*

  On dispose d'une solution mère $S_0$ de sulfate de cuivre de concentration $C_0 = "0,500" "mol" dot "L"^(-1)$. On veut préparer $S_1$, de concentration $C_1 = "12,5" "mmol" dot "L"^(-1)$.

  Matériel disponible : pipettes jaugées de 2,0 ; 5,0 ; 10,0 et 25,0 mL -- fioles jaugées de 50,0 ; 100,0 et 200,0 mL -- éprouvettes graduées de 10 et 100 mL -- béchers -- pipette Pasteur -- eau distillée.

  *1.* Calculer le facteur de dilution $F$.

  *2.* Choisir, en justifiant par un calcul, la pipette jaugée et la fiole jaugée à utiliser. Pourquoi n'utilise-t-on pas d'éprouvette graduée ?

  *3.* Rédiger le protocole de préparation de $S_1$.

  #v(0.3em)
  *B. Contrôle de la solution du vigneron*

  On règle le spectrophotomètre à $lambda = 800$ nm. L'absorbance de la solution étalon $S_1$ vaut $A_1 = "0,150"$.

  *4.* Pourquoi choisit-on de travailler à la longueur d'onde du maximum d'absorption ?

  *5.* En admettant que la loi de Beer-Lambert est vérifiée, calculer le coefficient $k$ de la relation $A = k C$, en précisant son unité.

  La solution du vigneron est diluée 20 fois. L'absorbance de la solution diluée vaut $A_d = "0,094"$.

  *6.* Déterminer la concentration en ions cuivre(II) de la solution diluée, puis celle de la solution du vigneron.

  *7.* Le vigneron a-t-il respecté la notice ? Justifier par un calcul.
]

#v(0.3em)

// ── EXERCICE 3 ────────────────────────────────────────────────────────
#exercice(points: "7")[
  *La saumure de déneigement*

  En hiver, certaines routes de montagne sont traitées avec une saumure de chlorure de calcium $"CaCl"_2$, efficace même par grand froid. La fiche technique du produit indique : _« chlorure de calcium : 200 g par litre de solution »_. On contrôle cette indication par conductimétrie.

  *Données :*
  - conductivités molaires ioniques à 25 °C : $lambda("Ca"^(2+)) = "11,9" times 10^(-3) "S" dot "m"^2 dot "mol"^(-1)$ ; $lambda("Cl"^-) = "7,63" times 10^(-3) "S" dot "m"^2 dot "mol"^(-1)$ ;
  - masse molaire du chlorure de calcium : $M("CaCl"_2) = "111,0" "g" dot "mol"^(-1)$ ;
  - la loi de Kohlrausch n'est valable que pour des solutions diluées (concentration inférieure à 10 mmol·L#super[-1] environ).

  *1.* Écrire l'équation de dissolution du chlorure de calcium dans l'eau. Exprimer les concentrations $["Ca"^(2+)]$ et $["Cl"^-]$ en fonction de la concentration apportée $C$ en chlorure de calcium.

  *2.* Énoncer la loi de Kohlrausch, puis montrer que la conductivité d'une solution de chlorure de calcium s'écrit $sigma = (lambda("Ca"^(2+)) + 2 lambda("Cl"^-)) times C$.

  *3.* Calculer la conductivité attendue pour une solution de chlorure de calcium de concentration $C = "5,0" times 10^(-3) "mol" dot "L"^(-1)$. On veillera aux unités.

  On mesure la conductivité de solutions étalons de chlorure de calcium à 25 °C.

  #align(center)[
    #graphe(
      xmax: 10, ymax: 280, xstep: 0.5, ystep: 10, xlab-every: 2, ylab-every: 4, w: 10, h: 6,
      pts: ((1, 27), (2, 55), (4, 108), (6, 164), (8, 217)), slope: 27.2, d: 1,
      xlabel: [$C$ ($"mmol" dot "L"^(-1)$)], ylabel: [$sigma$ ($"mS" dot "m"^(-1)$)],
    )
  ]

  *4.* Déterminer le coefficient directeur $k$ de la droite d'étalonnage. Montrer que sa valeur est cohérente avec l'expression de la question 2.

  *5.* À partir de l'indication de la fiche technique, estimer l'ordre de grandeur de la concentration de la saumure. Expliquer pourquoi il faut la diluer avant de mesurer sa conductivité.

  On dilue la saumure 500 fois. La conductivité de la solution diluée vaut $sigma_d = "9,78" times 10^(-2) "S" dot "m"^(-1)$.

  *6.* Déterminer la concentration $C_d$ de la solution diluée, puis la concentration $C_S$ de la saumure.

  *7.* En déduire la concentration en masse $C_m$ de la saumure et conclure.
]

// ══════════════════════════════════════════════════════════════════════
//  CORRECTION
// ══════════════════════════════════════════════════════════════════════
#pagebreak()

#align(center)[#text(size: 14pt, weight: "bold")[Correction détaillée]]
#v(0.3cm)

// ── Correction exercice 1 ─────────────────────────────────────────────
#block(fill: rgb("#2c5f8a"), inset: 6pt, radius: 3pt, width: 100%)[#text(fill: white, weight: "bold")[Exercice 1 -- Une boisson énergisante bleue]]

*1.* Le maximum d'absorption est obtenu pour #res[$lambda_max approx 630$ nm]. Cette radiation correspond au #res[orange] (voisine de 620 nm sur le cercle chromatique).

*2.* Une solution absorbe certaines radiations et diffuse (transmet) les autres. La couleur perçue est la *couleur complémentaire* de la couleur absorbée, c'est-à-dire la couleur diamétralement opposée sur le cercle chromatique. L'opposée de l'orange est le #res[bleu] : la boisson paraît bleue.

*3.* *Loi de Beer-Lambert :* l'absorbance d'une solution est proportionnelle à la concentration de l'espèce colorée :
$ A = k times C $
- $A$ : absorbance (sans unité) ;
- $C$ : concentration en quantité de matière de l'espèce colorée (en $"mol" dot "L"^(-1)$) ;
- $k$ : coefficient de proportionnalité (en $"L" dot "mol"^(-1)$), qui dépend de l'espèce, de la longueur d'onde, de la largeur de la cuve et de la température.

Conditions : lumière monochromatique, solution suffisamment diluée (en pratique $A$ inférieure à 1,5 environ), une seule espèce absorbante à la longueur d'onde choisie.

*4.* Les points sont alignés sur une *droite passant par l'origine* : $A$ est proportionnelle à $C$. La courbe est donc en accord avec la loi de Beer-Lambert.

*5.* On choisit un point de la droite éloigné de l'origine, par exemple $("8,0" ; "1,04")$ :
$ k = A / C = ("1,04") / ("8,0" " " mu"mol" dot "L"^(-1)) = "0,13" "L" dot mu"mol"^(-1) $
Comme $1 " " mu"mol" = 10^(-6)$ mol : #res[$k = "0,13" "L" dot mu"mol"^(-1) = "1,3" times 10^5 "L" dot "mol"^(-1)$]. Relation : $A = "0,13" times C$ (avec $C$ en $mu"mol" dot "L"^(-1)$).

*6.* L'absorbance de la boisson pure (2,6) est en dehors de la gamme d'étalonnage (absorbances comprises entre 0 et 1,04) et au-delà du domaine de validité de la loi de Beer-Lambert. On ne peut pas l'exploiter : on dilue pour ramener l'absorbance dans la gamme d'étalonnage.

*7.* $C_d = A_d / k = ("0,52") / ("0,13") = "4,0" " " mu"mol" dot "L"^(-1)$, soit #res[$C_d = "4,0" times 10^(-6) "mol" dot "L"^(-1)$].

La boisson a été diluée 5 fois, elle est donc 5 fois *plus concentrée* que la solution diluée :
$ C = 5 times C_d = 5 times "4,0" times 10^(-6) = "2,0" times 10^(-5) "mol" dot "L"^(-1) $
#res[$C = "2,0" times 10^(-5) "mol" dot "L"^(-1)$]

#erreur[Oublier de multiplier par le facteur de dilution, ou diviser au lieu de multiplier. On répond alors $C = "4,0" times 10^(-6) "mol" dot "L"^(-1)$ (concentration de la solution *diluée*, pas de la boisson) ou $"8,0" times 10^(-7) "mol" dot "L"^(-1)$. Pour vérifier : la boisson pure est plus foncée que la solution diluée, elle doit donc être *plus* concentrée.]

*8.* $C_m = C times M = "2,0" times 10^(-5) times "792,8" = "1,6" times 10^(-2) "g" dot "L"^(-1)$, soit #res[$C_m approx 16 "mg" dot "L"^(-1)$].

*9.* DJA pour un adolescent de 60 kg : $m_"DJA" = 6 times 60 = 360$ mg par jour.

Masse de colorant dans une canette : $m = C_m times V = 16 times "0,50" = "8,0"$ mg.

$"8,0" "mg" << 360 "mg"$ : une canette par jour ne présente pas de risque lié au colorant. Il faudrait $360 / "8,0" = 45$ canettes par jour pour atteindre la DJA. (D'autres constituants de la boisson, comme la caféine ou le sucre, imposent en revanche une consommation modérée.)

#v(0.4em)

// ── Correction exercice 2 ─────────────────────────────────────────────
#block(fill: rgb("#2c5f8a"), inset: 6pt, radius: 3pt, width: 100%)[#text(fill: white, weight: "bold")[Exercice 2 -- Le sulfate de cuivre du vigneron]]

*1.* On convertit d'abord : $C_1 = "12,5" "mmol" dot "L"^(-1) = "1,25" times 10^(-2) "mol" dot "L"^(-1)$.
$ F = C_0 / C_1 = ("0,500") / ("1,25" times 10^(-2)) = 40 $
#res[$F = 40$]

*2.* On a aussi $F = V_"fiole" / V_"pipette"$, donc $V_"fiole" = 40 times V_"pipette"$. On teste les pipettes disponibles :
- 2,0 mL → 80 mL (pas de fiole) ; 5,0 mL → #res[200 mL] (fiole disponible) ; 10,0 mL → 400 mL ; 25,0 mL → 1 000 mL.

On utilise donc #res[la pipette jaugée de 5,0 mL et la fiole jaugée de 200,0 mL].

L'éprouvette graduée est beaucoup moins précise que la verrerie jaugée : la concentration de la solution étalon serait connue avec une incertitude trop grande, ce qui fausserait tout le dosage.

*3.* Protocole :
- verser un peu de solution mère $S_0$ dans un bécher (on ne pipette jamais directement dans le flacon) ;
- prélever 5,0 mL de $S_0$ avec la pipette jaugée de 5,0 mL munie d'une propipette ;
- les verser dans la fiole jaugée de 200,0 mL ;
- ajouter de l'eau distillée jusqu'aux trois quarts environ, boucher et agiter ;
- compléter avec de l'eau distillée jusqu'au trait de jauge (pipette Pasteur pour la fin, bas du ménisque sur le trait) ;
- boucher et retourner plusieurs fois pour homogénéiser.

#erreur[Choisir une verrerie non jaugée (éprouvette, bécher) ou prélever directement dans le flacon de solution mère. Une dilution destinée à préparer une solution *étalon* exige une pipette jaugée *et* une fiole jaugée : c'est la précision de l'étalon qui fixe la précision du résultat final. Autre confusion courante : inverser la relation et écrire $V_"fiole" = V_"pipette" / F$.]

*4.* À $lambda_max$, l'absorbance est la plus grande possible : la mesure est plus *sensible* (une petite variation de concentration entraîne une variation d'absorbance plus importante) et plus précise. De plus, autour du maximum, le spectre est presque plat : une petite erreur sur le réglage de $lambda$ modifie peu l'absorbance.

*5.* $k = A_1 / C_1 = ("0,150") / ("1,25" times 10^(-2) "mol" dot "L"^(-1)) = "12,0" "L" dot "mol"^(-1)$
#res[$k = "12,0" "L" dot "mol"^(-1)$]

*6.* Solution diluée : $C_d = A_d / k = ("0,094") / ("12,0") = "7,8" times 10^(-3) "mol" dot "L"^(-1)$ (valeur bien comprise entre 0 et $C_1$ : on reste dans la zone étudiée).

Solution du vigneron, diluée 20 fois : $C_V = 20 times C_d = 20 times "7,83" times 10^(-3) = "0,157" "mol" dot "L"^(-1)$
#res[$C_V approx "0,157" "mol" dot "L"^(-1)$]

*7.* Concentration en masse mesurée : $C_m = C_V times M = "0,157" times "159,6" = "25,0" "g" dot "L"^(-1)$.

La notice indique 25 g de sulfate de cuivre par litre : la valeur mesurée est égale à la valeur attendue, aux incertitudes de mesure près (l'absorbance n'est connue qu'à quelques millièmes près). #res[Le vigneron a respecté la notice.]

On peut aussi raisonner en concentration en quantité de matière : $C_"notice" = 25 / "159,6" = "0,157" "mol" dot "L"^(-1) = C_V$.

#v(0.4em)

// ── Correction exercice 3 ─────────────────────────────────────────────
#block(fill: rgb("#2c5f8a"), inset: 6pt, radius: 3pt, width: 100%)[#text(fill: white, weight: "bold")[Exercice 3 -- La saumure de déneigement]]

*1.* $ "CaCl"_2 "(s)" -> "Ca"^(2+) "(aq)" + 2 " Cl"^- "(aq)" $
Une mole de chlorure de calcium libère une mole d'ions calcium et *deux* moles d'ions chlorure : #res[$["Ca"^(2+)] = C$ et $["Cl"^-] = 2C$].

*2.* *Loi de Kohlrausch :* la conductivité d'une solution ionique diluée est la somme des contributions de chaque ion :
$ sigma = sum_i lambda_i [X_i] $
avec $sigma$ en $"S" dot "m"^(-1)$, $lambda_i$ en $"S" dot "m"^2 dot "mol"^(-1)$ et $[X_i]$ en $"mol" dot "m"^(-3)$.

Ici : $sigma = lambda("Ca"^(2+)) times C + lambda("Cl"^-) times 2C = (lambda("Ca"^(2+)) + 2 lambda("Cl"^-)) times C$.

*3.* Conversion indispensable : $C = "5,0" times 10^(-3) "mol" dot "L"^(-1) = "5,0" times 10^(-3) "mol" / (10^(-3) "m"^3) = "5,0" "mol" dot "m"^(-3)$.

$lambda("Ca"^(2+)) + 2 lambda("Cl"^-) = "11,9" times 10^(-3) + 2 times "7,63" times 10^(-3) = "27,2" times 10^(-3) "S" dot "m"^2 dot "mol"^(-1)$

$sigma = "27,2" times 10^(-3) times "5,0" = "0,136" "S" dot "m"^(-1)$, soit
#res[$sigma approx "0,14" "S" dot "m"^(-1)$] (soit 136 $"mS" dot "m"^(-1)$, valeur cohérente avec la courbe d'étalonnage).

#erreur[Laisser la concentration en $"mol" dot "L"^(-1)$ dans la loi de Kohlrausch. On obtient alors $sigma = "27,2" times 10^(-3) times "5,0" times 10^(-3) = "1,4" times 10^(-4) "S" dot "m"^(-1)$, mille fois trop petit. Avec des $lambda$ en $"S" dot "m"^2 dot "mol"^(-1)$, la concentration doit être en $"mol" dot "m"^(-3)$ : $1 "mol" dot "L"^(-1) = 1 000 "mol" dot "m"^(-3)$, et donc $1 "mmol" dot "L"^(-1) = 1 "mol" dot "m"^(-3)$. Spécifique à cet exercice : oublier le facteur 2 devant $lambda("Cl"^-)$.]

*4.* Point de la droite éloigné de l'origine : $("8,0" ; 217)$.
$ k = (217 "mS" dot "m"^(-1)) / ("8,0" "mmol" dot "L"^(-1)) = "27,1" "mS" dot "m"^(-1) \/ ("mmol" dot "L"^(-1)) $
Or $1 "mS" dot "m"^(-1) = 10^(-3) "S" dot "m"^(-1)$ et $1 "mmol" dot "L"^(-1) = 1 "mol" dot "m"^(-3)$, donc #res[$k approx 27 times 10^(-3) "S" dot "m"^2 dot "mol"^(-1)$].

D'après la question 2, le coefficient directeur théorique vaut $lambda("Ca"^(2+)) + 2 lambda("Cl"^-) = "27,2" times 10^(-3) "S" dot "m"^2 dot "mol"^(-1)$ : les deux valeurs sont *cohérentes*.

*5.* Ordre de grandeur : $C approx 200 / 111 approx "1,8" "mol" dot "L"^(-1) = 1 800 "mmol" dot "L"^(-1)$. C'est très supérieur à 10 $"mmol" dot "L"^(-1)$ : la loi de Kohlrausch ne s'applique pas, et la valeur sortirait largement de la gamme d'étalonnage (0 à 8 $"mmol" dot "L"^(-1)$). Il faut donc diluer.

*6.* $sigma_d = "9,78" times 10^(-2) "S" dot "m"^(-1) = "97,8" "mS" dot "m"^(-1)$.

$C_d = sigma_d / k = ("97,8") / ("27,2") = "3,60" "mmol" dot "L"^(-1)$ #h(0.5em) #res[$C_d = "3,60" times 10^(-3) "mol" dot "L"^(-1)$]

Dilution par 500 : $C_S = 500 times C_d = 500 times "3,60" times 10^(-3) = "1,80" "mol" dot "L"^(-1)$ #h(0.5em) #res[$C_S = "1,80" "mol" dot "L"^(-1)$]

*7.* $C_m = C_S times M = "1,80" times "111,0" = 200 "g" dot "L"^(-1)$ #h(0.5em) #res[$C_m approx 200 "g" dot "L"^(-1)$]

La valeur mesurée correspond à l'indication de la fiche technique (200 g par litre) : l'indication est vérifiée.
