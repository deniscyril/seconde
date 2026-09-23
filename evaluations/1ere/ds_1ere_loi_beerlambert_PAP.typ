//#import "@preview/unify:0.7.1": num, unit, qty
#import "@preview/cetz:0.3.2": canvas, draw
#import "../../_assets/template_evaluation.typ": *

#show: conf

#identification()
#entete_eval("Devoir de Chimie - 1ère spé", "20")

#box(stroke: 0.5pt, inset: 8pt, width: 100%)[
  *Consignes et données:* 
  - Les #underline[résultats numériques seront soulignés]
  - Données: $N_A =qty("6.0e23","/mol")$ ; $M_C = qty("12,0","g/mol")$ ; $M_O = qty("16,0","g/mol")$ ; $M_H = qty("1,00","g/mol")$ 
]

#exercice(points: "5")[L'huile d'olive peut être considérée comme de l'acide oléique pur. L'acide oléique a pour formule brute $C_("18")H_("34")O_2$. On dispose d'une bouteille d'un litre d'huile d'olive.

La masse volumique de l'acide oléique vaut 0,898 g/mL.
+ Calculer la masse d'acide oléique contenue dans la bouteille.
+ Calculer la masse molaire de l'acide oléique.
+ Quel est le nombre de molécules d'acide oléique présentes dans la bouteille ?
+ Quelle est alors la masse d'une molécule d'acide oléique ? ]

#exercice(points: "4")[

  Parmi les 4 propositions ci-dessous à propos de dilutions, trouver celles qui sont vraies et corriger celles qui sont fausses:
  + Pour diluer deux fois une solution de 100,0 mL d'eau sucrée, il suffit de lui ajouter 100,0 mL d'eau.
  + Pour prélever précisément un volume de solution mère, on utilise une fiole jaugée.
  + Pour diluer 10 fois une solution d'eau sucrée d'un litre, il faut lui ajouter 10 litres d'eau.
  + Pour obtenir 5,0 L de solution fille après la dilution d'un facteur 20 d'une solution mère, il faut au départ 50,0 mL de solution mère.
]

#exercice(points: "11")[
  *Le Dakin® : un autre antiseptique coloré*

  Le Dakin® est une solution antiseptique colorée. Sa couleur est due aux ions permanganate $"MnO"_4^-$, apportés par du permanganate de potassium $"KMnO"_4$ dissous dans la solution. Sur le flacon, on lit : _« permanganate de potassium : 0,0010 g pour 100 mL »_.

  *Données :* $M_K = qty("39,1","g/mol")$ ; $M_("Mn") = qty("54,9","g/mol")$ ; $M_O = qty("16,0","g/mol")$. Dans le Dakin®, seuls les ions permanganate absorbent la lumière visible.

  #v(0.3em)
  *A. Préparation des solutions*

  *1.* Calculer la masse molaire du permanganate de potassium $"KMnO"_4$.

  *2.* On souhaite préparer un volume $V_0 = qty("100,0","mL")$ d'une solution mère $S_0$ de permanganate de potassium de concentration $C_0 = qty("1,00e-3","mol/L")$. Calculer la masse de permanganate de potassium à peser.

  *3.* À partir de $S_0$, on prépare un volume $V_1 = qty("50,0","mL")$ d'une solution fille $S_1$ de concentration $C_1 = qty("1,00e-4","mol/L")$. Calculer le facteur de dilution, puis le volume de solution mère à prélever. Nommer la verrerie utilisée pour le prélèvement et pour la préparation de $S_1$.

  #v(0.3em)
  *B. Dosage par spectrophotométrie*

  On donne ci-dessous le spectre d'absorption d'une solution aqueuse de permanganate de potassium (à gauche) et un cercle chromatique (à droite).

  #grid(
    columns: (1.7fr, 1fr),
    column-gutter: 8pt,
    align: horizon,
    figure(image("../figures/dakin_spectre_permanganate.png", width: 100%), caption: [Spectre d'absorption du permanganate de potassium]),
    figure(image("../figures/cercle_chromatique_6.png", width: 100%), caption: [Cercle chromatique]),
  )

  *4.* Relever la longueur d'onde $lambda_max$ pour laquelle l'absorbance est maximale. À l'aide du cercle chromatique, en déduire la couleur de la solution de Dakin®. Justifier.

  On règle le spectrophotomètre à la longueur d'onde $lambda_max$. On mesure alors l'absorbance de la solution $S_1$ : $A_1 =$ 0,24, puis celle du Dakin® commercial (non dilué) : $A_D =$ 0,15.

  *5.* En utilisant la loi de Beer-Lambert, montrer que la concentration en permanganate du Dakin® vérifie $C_D = C_1 times display(A_D / A_1)$, puis calculer $C_D$.

  *6.* En déduire la concentration en masse de permanganate de potassium dans le Dakin®, en $"mg" dot "L"^(-1)$. Est-elle en accord avec l'indication du flacon ?
]
