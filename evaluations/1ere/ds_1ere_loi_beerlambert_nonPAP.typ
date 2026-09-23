//#import "@preview/unify:0.7.1": num, unit, qty
#import "@preview/cetz:0.3.2": canvas, draw
#import "../../_assets/template_evaluation.typ": *

#show: conf

// Identification sans case PAP (sujet standard)
#grid(
  columns: (1fr, 1fr),
  gutter: 15pt,
  align: bottom,
  grid(columns: (auto, 1fr), column-gutter: 4pt, align: bottom, [*NOM :*], line(length: 100%, stroke: 0.5pt)),
  grid(columns: (auto, 1fr), column-gutter: 4pt, align: bottom, [*Prénom :*], line(length: 100%, stroke: 0.5pt)),
)
#v(0.5cm)
#entete_eval("Devoir de Chimie - 1ère spé", "20")


#exercice(points: "4")[L'huile d'olive peut être considérée comme de l'acide oléique pur. L'acide oléique a pour formule brute $C_("18")H_("34")O_2$. On dispose d'une bouteille d'un litre d'huile d'olive.

La masse volumique de l'acide oléique vaut 0,898 g/mL.

*Données :* $N_A = qty("6.0e23","/mol")$ ; $M_C = qty("12,0","g/mol")$ ; $M_O = qty("16,0","g/mol")$ ; $M_H = qty("1,00","g/mol")$.

+ Calculer la masse d'acide oléique contenue dans la bouteille.
+ Calculer la masse molaire de l'acide oléique.
+ Quel est le nombre de molécules d'acide oléique présentes dans la bouteille ?
+ Quelle est alors la masse d'une molécule d'acide oléique ? ]

#exercice(points: "3")[

  Parmi les 4 propositions ci-dessous à propos de dilutions, trouver celles qui sont vraies et corriger celles qui sont fausses:
  + Pour diluer deux fois une solution de 100,0 mL d'eau sucrée, il suffit de lui ajouter 100,0 mL d'eau.
  + Pour prélever précisément un volume de solution mère, on utilise une fiole jaugée.
  + Pour diluer 10 fois une solution d'eau sucrée d'un litre, il faut lui ajouter 10 litres d'eau.
  + Pour obtenir 5,0 L de solution fille après la dilution d'un facteur 20 d'une solution mère, il faut au départ 50,0 mL de solution mère.
]

#exercice(points: "13")[
  *La Bétadine® : vérifier l'étiquette par spectrophotométrie*

  La Bétadine® est un antiseptique utilisé pour désinfecter les plaies. Son principe actif est le *diiode* $I_2$ : c'est lui qui tue les microbes et qui donne à la solution sa couleur.

  Sur le flacon, le fabricant indique : _« polyvidone iodée : 10 g pour 100 mL »_. On admet qu'une molécule de polyvidone iodée apporte une molécule de diiode : la concentration en diiode de la Bétadine® est donc égale à sa concentration en polyvidone iodée.

  *Objectif :* vérifier l'indication du fabricant à l'aide d'un spectrophotomètre.

  *Donnée :* masse molaire de la polyvidone iodée : $M = qty("2362,8","g/mol")$.

  #v(0.3em)
  *A. Couleur de la solution de diiode*

  On donne ci-dessous le spectre d'absorption d'une solution aqueuse de diiode (à gauche) et un cercle chromatique (à droite).

  #grid(
    columns: (1.7fr, 1fr),
    column-gutter: 8pt,
    align: horizon,
    figure(image("../figures/betadine_spectre_diiode.png", width: 100%), caption: [Spectre d'absorption du diiode]),
    figure(image("../figures/cercle_chromatique_6.png", width: 100%), caption: [Cercle chromatique]),
  )

  *1.* Relever la longueur d'onde $lambda_max$ pour laquelle l'absorbance de la solution de diiode est maximale. À quelle couleur correspond-elle ?

  *2.* À l'aide du cercle chromatique, en déduire la couleur de la solution de diiode. Justifier.

  *3.* Les mesures d'absorbance seront réalisées à une seule longueur d'onde. Laquelle faut-il choisir ? Justifier.

  #v(0.3em)
  *B. Préparation d'une solution étalon par dilution*

  On dispose d'une solution mère $S_0$ de diiode de concentration $C_0 = qty("2,00e-2","mol/L")$. On souhaite préparer une solution fille $S_3$ de concentration $C_3 = qty("0,40","mmol/L")$.

  Matériel disponible : pipettes jaugées de 5,0 ; 10,0 ; 20,0 et 25,0 mL -- fioles jaugées de 50,0 ; 100,0 et 250,0 mL -- béchers -- pipette Pasteur -- eau distillée.

  *4.* Convertir $C_3$ en $"mol" dot "L"^(-1)$, puis calculer le facteur de dilution $F$.

  *5.* Choisir, en justifiant par un calcul, la pipette jaugée et la fiole jaugée à utiliser.

  *6.* Rédiger le protocole de préparation de la solution $S_3$.

  #v(0.3em)
  *C. Exploitation de la loi de Beer-Lambert*

  On prépare de la même façon plusieurs solutions étalons de diiode, puis on mesure leur absorbance à la longueur d'onde choisie à la question 3. On obtient la courbe d'étalonnage ci-dessous.

  #align(center)[#image("../figures/betadine_etalonnage.png", width: 75%)]

  *7.* Énoncer la loi de Beer-Lambert en précisant la signification et l'unité de chaque grandeur.

  *8.* La courbe d'étalonnage est-elle en accord avec cette loi ? Justifier.

  *9.* Déterminer le coefficient directeur $k$ de la droite modélisée, en précisant son unité. Écrire la relation entre $A$ et $C$ correspondant à cette droite.

  #v(0.3em)
  *D. Retour au produit commercial*

  La Bétadine® est trop concentrée pour que son absorbance soit mesurée directement : on la dilue 200 fois. L'absorbance de la solution diluée, mesurée dans les mêmes conditions, vaut $A_d =$ 0,30.

  *10.* À l'aide de la relation obtenue à la question 9, déterminer la concentration $C_d$ en diiode de la solution diluée.

  *11.* En déduire la concentration $C_B$ en diiode de la Bétadine® commerciale, en $"mol" dot "L"^(-1)$.

  *12.* À partir de l'indication du fabricant, calculer la concentration en masse $C_m$ de polyvidone iodée dans la Bétadine®, puis sa concentration en quantité de matière $C_"fab"$. Comparer $C_"fab"$ à $C_B$ et conclure.

]
