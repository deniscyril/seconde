#import "../_assets/template_physique.typ": *

#show: conf

#chapitre[Détermination de la composition du système initial]

= Masse molaire

== Rappel : la mole et la constante d'Avogadro

#définition[
  La *mole* (symbole : *mol*) est l'unité de *quantité de matière*, notée $n$.

  Une mole contient exactement $N_A = qty("6.02e23", "mol^-1")$ entités élémentaires (atomes, molécules, ions…). $N_A$ est la *constante d'Avogadro*.

  $ N = n times N_A $

  - $N$ : nombre d'entités (sans unité)
  - $n$ : quantité de matière (en mol)
  - $N_A = qty("6.02e23", "mol^-1")$
]

== Masse molaire atomique

#définition[
  La *masse molaire atomique* $M$ d'un élément est la masse d'une mole d'atomes de cet élément. Elle s'exprime en *g·mol⁻¹*.
]

#exemple[À connaître: 
  $M_"H" = 1,0$ g·mol⁻¹ ; $M_"C" = 12$ g·mol⁻¹ ; $M_"O" = 16$ g·mol⁻¹ ; $M_"N" = 14$ g·mol⁻¹ .
]


== Masse molaire d'une espèce chimique

#définition[
  La *masse molaire moléculaire* $M$ d'une espèce chimique est la *somme* des masses molaires atomiques de tous les atomes qui la composent.  Elle s'exprime en *g·mol⁻¹*.
]

#exemple[
  Calculer la masse molaire de l'eau $"H"_2"O"$ :

  $ M_("H"_2"O") = 2 times M_"H" + M_"O" = 2 times 1,0 + 16 = 18,0 "g.mol"^(-1) $
Signification: 1 mole d'eau pèse 18 g.
]

#application[
  + Calculer $M_("CO"_2)$.
  + Calculer $M_("C"_6"H"_12"O"_6)$ (glucose).

  *Correction :*

  + $ M_("CO"_2) = M_"C" + 2 times M_"O" = 12 + 2 times 16 = 44 "g.mol"^(-1) $
  + $ M_("C"_6"H"_12"O"_6) = 6 times 12 + 12 times 1,0 + 6 times 16 = 72 + 12 + 96 = 180 "g.mol"^(-1) $
]

= Quantité de matière à partir de la masse

== La relation fondamentale

#définition[
  La quantité de matière $n$ (en mol), la masse $m$ (en g) et la masse molaire $M$ (en g·mol⁻¹) sont liées par :

  $ n = m / M $

  On en déduit : $m = n times M$ et $M = m / n$.
]

#important[
  Avant tout calcul, *convertir la masse en grammes* (g) si elle est donnée en kg ou en mg.

  $1 "kg" = 1000 "g"$ ; $quad 1 "mg" = 10^(-3) "g"$ ; $quad 1 "µg" = 10^(-6) "g"$
]

#exemple[
  On dispose d'un morceau d'aluminium de masse $m = 5,4$ g. Calculer la quantité de matière $n$ d'aluminium.

  *Donnée :* $M_"Al" = 27$ g·mol⁻¹.

  $ n = m / M = (5,4) / 27 = 0,20 "mol" $
]

#application[
  + Un comprimé de paracétamol $"C"_8"H"_9"NO"_2$ contient $m = 500$ mg. Calculer la quantité de matière $n$ de paracétamol contenu dans ce comprimé.

  + On veut peser $n = 2,0$ mol de chlorure de sodium NaCl ($M_"Na" = 23$ g·mol⁻¹ ; $M_"Cl" = 35,5$ g·mol⁻¹). Quelle masse faut-il prendre ?

  *Correction :*

  + a. $M_("C"_8"H"_9"NO"_2) = 8 times 12 + 9 times 1,0 + 14 + 2 times 16 = 151$ g·mol⁻¹ #linebreak()
    b. Conversion : $m = 500 "mg" = 0,500$ g #linebreak()
    c. $n = m / M = (0,500) / 151 = 3,3 times 10^(-3)$ mol

  + $M_"NaCl" = 23 + 35,5 = 58,5$ g·mol⁻¹ $quad arrow.r quad m = n times M = 2,0 times 58,5 = 117$ g
]

== Utilisation de la masse volumique

#définition[
  Pour un *corps pur* de masse volumique $rho$ (en g·mL⁻¹) prélevé en volume $V$ (en mL) :

  $ m = rho times V quad "puis" quad n = m / M = (rho times V) / M $
]

#application[
  L'éthanol pur $"C"_2"H"_5"OH"$ a une masse volumique $rho = 0,79$ g·mL⁻¹. On prélève $V = 15$ mL.

  *Données :* $M_"H" = 1,0$ ; $M_"C" = 12$ ; $M_"O" = 16$ g·mol⁻¹.

  Calculer la quantité de matière d'éthanol prélevée.

  $M_("C"_2"H"_5"OH") = 2 times 12 + 6 times 1,0 + 16 = 46$ g·mol⁻¹

  $m = rho times V = 0,79 times 15 = 11,85$ g $quad arrow.r quad n = m / M = (11,85) / 46 = 0,26 "mol"$
]

= Volume molaire d'un gaz

#définition[
  À température et pression fixées, *tout gaz* (quelle que soit sa nature chimique) occupe le même volume par mole : c'est le *volume molaire* $V_m$.

  $ n = V_"gaz" / V_m $

  - $n$ en mol ; $V_"gaz"$ en L ; $V_m$=24  L·mol⁻¹ à *20 °C* et à pression atmosphérique normale
]


#application[
  + Un réservoir contient $V = 12$ L de dihydrogène $"H"_2$. Calculer $n$.
  + Un flacon contient $V = 500$ mL de dioxygène $"O"_2$ à 20 °C. Calculer $n$.

  *Correction :*

  + $ n = V_"gaz" / V_m = (12) / 24 = 0,50 "mol" $
  + Conversion : $V = 500$ mL $= 0,500$ L $quad arrow.r quad n = V_"gaz" / V_m = (0,500) / 24 = 2,1 times 10^(-2)$ mol
]

= Concentration en quantité de matière

== Définition

#définition[
  La *concentration en quantité de matière* $C$ (ou *concentration molaire*) est la quantité de matière $n$ de soluté contenue dans un volume $V$ de solution :

  $ C = n / V $

  - $C$ en *mol·L⁻¹* ; $n$ en mol ; $V$ en L
  - On en déduit : $n = C times V$
]

// #important[
//   Avant tout calcul, *convertir le volume en litres* (L) si donné en mL.

//   $1 "L" = 1000 "mL"$ ; $quad V("L") = V("mL") / 1000$
// ]

#application[
  + Une solution de NaOH de volume $V = 200$ mL contient $n = 1,0 times 10^(-2)$ mol. Calculer la concentration molaire $C$ de cette solution.

  + On veut préparer $V = 250$ mL d'une solution de glucose à $C = 0,278$ mol·L⁻¹. Calculer la quantité de matière $n$ de glucose à dissoudre.

  *Correction :*

  + Conversion : $V = 200$ mL $= 0,200$ L $ C = n / V = (1,0 times 10^(-2)) / (0,200) = 5,0 times 10^(-2)$ mol·L⁻¹

  + Conversion : $V = 250$ mL $= 0,250$ L $ n = C times V = 0,278 times 0,250 = 6,95 times 10^(-2)$ mol
]

== Lien avec la concentration en masse

#définition[
  La *concentration en masse* $C_m$ est la masse $m$ de soluté par litre de solution :

  $ C_m = m / V quad ("en g.L"^(-1)) $

  Comme $m = n times M$ et $n = C times V$, on établit :

  $ C_m = C times M $

  Cette relation permet de passer de l'une à l'autre sans recalculer $n$ et $V$.
]

#application[
  + Une solution de NaOH a une concentration molaire $C = 5,0 times 10^(-2)$ mol·L⁻¹ ($M_"NaOH" = 40$ g·mol⁻¹). Calculer la concentration en masse $C_m$ de cette solution.

  + Une perfusion de glucose $"C"_6"H"_12"O"_6$ ($M_"H" = 1,0$ ; $M_"C" = 12$ ; $M_"O" = 16$ g·mol⁻¹) a une concentration $C = 278$ mmol·L⁻¹ et un volume $V = 500$ mL. Calculer la quantité de matière et la masse de glucose contenue dans la perfusion.

  *Correction :*

  + $C_m = C times M = 5,0 times 10^(-2) times 40 = 2,0$ g·L⁻¹

  + Conversions : $C = 0,278$ mol·L⁻¹ ; $V = 0,500$ L ; $M_("C"_6"H"_12"O"_6) = 180$ g·mol⁻¹ #linebreak()
    $n = C times V = 0,278 times 0,500 = 0,139$ mol $quad arrow.r quad m = n times M = 0,139 times 180 = 25,0$ g #linebreak()
    _Vérification :_ $C_m = C times M = 0,278 times 180 = 50,0$ g·L⁻¹ $arrow.r m = C_m times V = 50,0 times 0,500 = 25,0$ g ✓
]

= Préparation d'une solution

== Rappel : préparation par dissolution

#important[
  *Matériel nécessaire :*
  balance de précision — spatule — bécher — agitateur en verre — entonnoir — fiole jaugée (volume = volume de la solution fille) — pissette d'eau distillée.
]

#exemple[
  On veut préparer $V = 50$ mL d'une solution de chlorure de sodium NaCl de concentration molaire $C = 0,154$ mol·L⁻¹.

  *Donnée :* $M_"NaCl" = 58,5$ g·mol⁻¹.

  *Étape 1 — Calcul de la masse à peser :*

  $n = C times V = 0,154 times 0,050 = 7,7 times 10^(-3)$ mol

  $m = n times M_"NaCl" = 7,7 times 10^(-3) times 58,5 = 0,45$ g

  *Étape 2 — Protocole :*

  + Peser $m = 0,45$ g de NaCl à la balance de précision.
  + Dissoudre dans un bécher avec un peu d'eau distillée en agitant.
  + Transvaser quantitativement dans la fiole jaugée de 50 mL via l'entonnoir ; rincer le bécher plusieurs fois.
  + Compléter avec de l'eau distillée *jusqu'au trait de jauge* (les dernières gouttes à la pipette).
  + Boucher et retourner plusieurs fois pour homogénéiser.
]

== Préparation par dilution

#définition[
  *Diluer* une solution, c'est augmenter son volume en ajoutant du solvant. La quantité de matière de soluté est *conservée* :

  $ n_"mère prélevée" = n_"fille" quad arrow.r.double quad C_"mère" times V_"pipette" = C_"fille" times V_"fiole" $

  Le *facteur de dilution* $F$ est :

  $ F = C_"mère" / C_"fille" = V_"fiole" / V_"pipette" $

  - $C_"mère"$ : concentration de la *solution mère* (solution de départ, plus concentrée)
  - $C_"fille"$ : concentration de la *solution fille* (solution obtenue après dilution)
  - $V_"fiole"$ : volume de la fiole jaugée = volume de la *solution fille*
  - $V_"pipette"$ : volume de la pipette jaugée = volume de *solution mère prélevée*
]

#important[
  *Matériel nécessaire :*
  pipette jaugée de volume $V_"pipette"$ — propipette — fiole jaugée de volume $V_"fiole"$ — pissette d'eau distillée.

  *Protocole :*
  + Prélever $V_"pipette"$ de solution mère à la pipette jaugée.
  + Introduire dans la fiole jaugée de volume $V_"fiole"$.
  + Compléter avec de l'eau distillée jusqu'au trait de jauge.
  + Boucher et retourner plusieurs fois pour homogénéiser.
]

#application[
  À partir de la solution mère de NaCl préparée précédemment ($C_"mère" = 0,154$ mol·L⁻¹), on veut préparer $V_"fiole" = 100$ mL d'une solution fille de concentration $C_"fille" = 0,0308$ mol·L⁻¹.

  Calculer le facteur de dilution $F$ puis le volume de solution mère à prélever $V_"pipette"$.

  $ F = C_"mère" / C_"fille" = (0,154) / (0,0308) = 5 $

  $ V_"pipette" = V_"fiole" / F = 100 / 5 = 20 "mL" $

  On utilise donc une *pipette jaugée de 20 mL* et une *fiole jaugée de 100 mL*.
]

= Spectroscopie d'absorbance

== Spectre d'absorption et couleur d'une espèce en solution

#définition[
  Le *spectre d'absorption* d'une espèce en solution représente l'absorbance $A$ en fonction de la longueur d'onde $lambda$ de la lumière incidente. La longueur d'onde du pic d'absorption est notée $lambda_"max"$.
]

#définition[
  La *couleur perçue* d'une solution (éclairée par lumière blanche) est la *couleur complémentaire* de la couleur la plus absorbée.
]

#important[
  *Roue des couleurs complémentaires (à connaître) :*

  #align(center)[
    #table(
      columns: (1.6fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center,
      [*Couleur absorbée*], [Violet], [Bleu], [Vert], [Jaune], [Orange], [Rouge],
      [$lambda_"max"$ (nm)], [400–430], [430–490], [490–570], [570–600], [600–640], [640–750],
      [*Couleur perçue*], [Jaune-vert], [Orange], [Rouge-violet], [Violet], [Bleu-vert], [Bleu-vert],
    )
  ]
]

#application[
  Une solution de permanganate de potassium $"KMnO"_4$ présente un pic d'absorption à $lambda_"max" = 528$ nm.

  Quelle est la couleur de cette solution ? Justifier à partir du spectre.

  $lambda_"max" = 528$ nm correspond à la gamme du *vert* (490–570 nm) : c'est la couleur absorbée. La couleur perçue est la couleur complémentaire du vert : le *rouge-violet*. La solution est donc *violette* (mauve). ✓
]

== Absorbance

#définition[
  L'*absorbance* $A$ est une grandeur *sans unité* mesurée directement par le spectrophotomètre. Elle traduit la capacité d'une solution à absorber la lumière à la longueur d'onde $lambda_"max"$ :

  - $A = 0$ : la solution n'absorbe pas (transparente à cette longueur d'onde)
  - $A$ augmente quand la *concentration* augmente
  - $A$ augmente quand la *longueur de la cuve* $l$ augmente

  En pratique, les valeurs utiles mesurables vont de 0 à environ 3.
]

== Loi de Beer-Lambert

#définition[
  Pour une solution *suffisamment diluée*, l'absorbance $A$ est *proportionnelle* à la concentration molaire $C$ du soluté :

  $ A = epsilon times l times C = k times C $

  - $epsilon$ : coefficient d'extinction molaire (mol⁻¹·L·cm⁻¹)
  - $l$ : longueur de la cuve (cm)
  - $k = epsilon times l$ : coefficient de proportionnalité (L·mol⁻¹), pente de la droite d'étalonnage
]

#important[
  La loi de Beer-Lambert n'est valable que pour des solutions *suffisamment diluées*. Au-delà d'une certaine concentration, la droite $A = f(C)$ cesse d'être linéaire.

  Si $A > 1$ lors d'une mesure, il faut *diluer* la solution avant de l'analyser.
]

#application[
  Une solution d'azorubine donne $A = 0,35$ à $lambda_"max" = 520$ nm. La droite d'étalonnage a pour pente $k = 7,0 times 10^3$ L·mol⁻¹.

  Calculer la concentration $C$ de la solution.

  La loi de Beer-Lambert donne $A = k times C$ donc :

  $ C = A / k = (0,35) / (7,0 times 10^3) = 5,0 times 10^(-5) "mol.L"^(-1) = 50 "µmol.L"^(-1) $
]

== Dosage par étalonnage (gamme étalon)

#définition[
  Un *dosage spectrophotométrique par étalonnage* permet de déterminer la concentration inconnue d'une espèce colorée à partir d'une *courbe d'étalonnage* ($A$ en fonction de $C$).
]

#important[
  *Protocole du dosage par gamme étalon :*

  + *Identifier $lambda_"max"$* : lire le pic sur le spectre d'absorption de l'espèce.
  + *Régler* le spectrophotomètre à $lambda_"max"$.
  + *Faire le blanc* : mesurer l'absorbance du solvant pur → le spectrophotomètre affiche $A = 0$ (référence).
  + *Préparer la gamme étalon* : solutions de concentrations *connues* et *croissantes*, obtenues par dilutions d'une solution mère.
  + *Mesurer* $A$ de chaque solution étalon → tracer $A = f(C)$ → droite passant par l'origine si Beer-Lambert est vérifié.
  + *Mesurer* $A_"inc"$ de la solution inconnue → lire $C_"inc"$ sur la droite ou calculer $C_"inc" = A_"inc" \/ k$.

  *Limite :* si $A_"inc" > 1$, diluer la solution inconnue d'un facteur $F$ connu avant la mesure, puis multiplier la concentration lue par $F$.
]

#application[
  Un sirop de grenadine contenant de l'azorubine ($k = 7,0 times 10^3$ L·mol⁻¹) est dilué 5 fois avant la mesure. L'absorbance de la solution diluée est $A_"dil" = 0,15$.

  Déterminer la concentration $C$ en azorubine du sirop non dilué.

  + Concentration de la solution diluée :

    $C_"dil" = A_"dil" / k = (0,15) / (7,0 times 10^3) = 2,1 times 10^(-5)$ mol·L⁻¹

  + La dilution est un facteur 5, donc :

    $C = 5 times C_"dil" = 5 times 2,1 times 10^(-5) = 1,1 times 10^(-4)$ mol·L⁻¹
]

= Tableau récapitulatif — l'essentiel du chapitre

#important[
  #align(center)[
    #table(
      columns: (2.5fr, 2.2fr, 1.8fr, 1fr),
      align: (left, center, left, center),
      [*Notion*], [*Formule*], [*Unités*], [*Exos*],
      [Masse molaire d'une espèce], [$M = sum p_i times M_i$], [g·mol⁻¹], [1, 2, 3],
      [Quantité de matière (masse)], [$n = m \/ M$], [mol ; g ; g·mol⁻¹], [3, 4, 5],
      [Masse d'un liquide pur], [$m = rho times V$], [g ; g·mL⁻¹ ; mL], [5],
      [Quantité de matière (gaz)], [$n = V_"gaz" \/ V_m$], [mol ; L ; L·mol⁻¹], [9],
      [Concentration molaire], [$C = n \/ V$], [mol·L⁻¹ ; mol ; L], [6, 7, 8],
      [Lien concentrations], [$C_m = C times M$], [g·L⁻¹ ; mol·L⁻¹ ; g·mol⁻¹], [6, 8],
      [Facteur de dilution], [$F = C_"mère" \/ C_"fille" = V_"fiole" \/ V_"pipette"$], [sans unité], [10],
      [Loi de Beer-Lambert], [$A = k times C$], [sans unité ; L·mol⁻¹], [11],
      [Dosage par étalonnage], [$C_"inc" = A_"inc" \/ k$], [mol·L⁻¹], [11],
    )
  ]
]

// ─────────────────────────────────────────────────────────────────────────────
#chapitre[Exercices — Composition du système initial]

#exercice[
  *Masse molaire — application directe*

  Calculer la masse molaire des espèces chimiques suivantes.

  *Données :* $M_"H" = 1,0$ ; $M_"C" = 12$ ; $M_"N" = 14$ ; $M_"O" = 16$ ; $M_"Na" = 23$ ; $M_"S" = 32$ ; $M_"Cl" = 35,5$ ; $M_"Ca" = 40$ ; $M_"I" = 127$ g·mol⁻¹.

  + Le paracétamol $"C"_8"H"_9"NO"_2$
  + Le diiode $"I"_2$
  + Le carbonate de calcium $"CaCO"_3$
  + La vitamine C $"C"_6"H"_8"O"_6$
  + Le sulfate de magnésium heptahydraté $"MgSO"_4 dot 7"H"_2"O"$ ($M_"Mg" = 24$ g·mol⁻¹ ; $M_"S" = 32$ g·mol⁻¹)
]

#exercice[
  *Masse molaire — deux méthodes*

  Une molécule d'eau $"H"_2"O"$ a une masse $m_"mol" = 2,99 times 10^(-23)$ g.

  *Données :* $N_A = qty("6.02e23", "mol^-1")$ ; $M_"H" = 1,0$ g·mol⁻¹ ; $M_"O" = 16$ g·mol⁻¹.

  + Calculer la masse molaire de l'eau à partir de $m_"mol"$ et $N_A$.
  + Calculer la masse molaire de l'eau à partir des masses molaires atomiques.
  + Comparer les deux résultats et conclure.
]

#exercice[
  *De la masse à la quantité de matière — tableau à compléter*

  Recopier et compléter le tableau suivant.

  *Données :* $M_"H" = 1,0$ ; $M_"C" = 12$ ; $M_"N" = 14$ ; $M_"O" = 16$ ; $M_"Cl" = 35,5$ g·mol⁻¹.

  #align(center)[
    #table(
      columns: (3fr, 2fr, 2fr, 2fr),
      align: center,
      [*Espèce*], [*M (g·mol⁻¹)*], [*n (mol)*], [*m (g)*],
      [Saccharose $"C"_12"H"_22"O"_11$], [...], [$2,0 times 10^(-2)$], [...],
      [Dioxyde d'azote $"NO"_2$], [...], [...], [$1,5 times 10^(-1)$],
      [Chloroforme $"CHCl"_3$], [...], [$5,0 times 10^(-2)$], [...],
    )
  ]
]

#exercice[
  *Aspirine — stratégie en plusieurs étapes*

  La posologie quotidienne maximale d'aspirine $"C"_9"H"_8"O"_4$ est de $m = 3,0$ g.

  *Données :* $M_"H" = 1,0$ ; $M_"C" = 12$ ; $M_"O" = 16$ g·mol⁻¹ ; $N_A = qty("6.02e23", "mol^-1")$.

  + Calculer la masse molaire $M$ de l'aspirine.
  + Calculer la quantité de matière maximale $n$ d'aspirine autorisée par jour.
  + En déduire le nombre maximal $N$ de molécules d'aspirine absorbées quotidiennement.
]

#exercice[
  *Liquides — masse volumique*

  Recopier et compléter le tableau.

  *Données :* $M_"H" = 1,0$ ; $M_"C" = 12$ ; $M_"O" = 16$ ; $M_"Cl" = 35,5$ g·mol⁻¹.

  #align(center)[
    #table(
      columns: (2.5fr, 1.2fr, 1.3fr, 1.2fr, 1.2fr, 1.2fr),
      align: center,
      [*Liquide*], [*M (g·mol⁻¹)*], [*ρ (g·mL⁻¹)*], [*n (mol)*], [*V (mL)*], [*m (g)*],
      [Éthanol $"C"_2"H"_5"OH"$], [...], [0,79], [...], [15], [...],
      [Dichlorométhane $"CH"_2"Cl"_2$], [...], [1,3], [$2,0 times 10^(-2)$], [...], [...],
    )
  ]
]

#exercice[
  *Concentration molaire — calculs directs*

  + Une solution de volume $V = 200$ mL contient $n = 1,0 times 10^(-2)$ mol de NaOH.

    *Donnée :* $M_"NaOH" = 40$ g·mol⁻¹.

    a. Calculer la concentration molaire $C$ de la solution.
    b. En déduire la concentration en masse $C_m$.

  + On veut préparer $V = 500$ mL d'une solution de NaCl à $C = 0,154$ mol·L⁻¹.

    *Donnée :* $M_"NaCl" = 58,5$ g·mol⁻¹.

    a. Calculer la quantité de matière de NaCl à dissoudre.
    b. En déduire la masse de NaCl à peser.
]

#exercice[
  *Perfusion de glucose — enchaîner plusieurs formules*

  En cas de déshydratation, on administre une perfusion de glucose $"C"_6"H"_12"O"_6$ de concentration $C = 278$ mmol·L⁻¹ et de volume $V = 500$ mL.

  *Données :* $M_"H" = 1,0$ ; $M_"C" = 12$ ; $M_"O" = 16$ g·mol⁻¹.

  + Calculer la masse molaire $M_("C"_6"H"_12"O"_6)$ du glucose.
  + Convertir la concentration $C$ en mol·L⁻¹.
  + Calculer la quantité de matière $n$ de glucose dans la perfusion.
  + En déduire la masse $m$ de glucose contenue dans la perfusion.
]

#exercice[
  *Bicarbonate de sodium — relier $C$ et $C_m$*

  On dissout $m = 10$ g de bicarbonate de sodium $"NaHCO"_3$ dans de l'eau pour obtenir $V = 1,0$ L de solution.

  *Données :* $M_"H" = 1,0$ ; $M_"C" = 12$ ; $M_"Na" = 23$ ; $M_"O" = 16$ g·mol⁻¹.

  + Calculer la masse molaire du bicarbonate de sodium.
  + Calculer la concentration en masse $C_m$ de la solution.
  + Calculer la concentration molaire $C$ à partir de $C_m$ et $M$ (sans recalculer $n$).
  + Retrouver $C$ directement à partir de $n$ et $V$. Comparer les deux valeurs.
]

#exercice[
  *Gaz — tableau et calcul de volume*

  + Un ballon sphérique de diamètre $d = 28$ cm est gonflé avec de l'hélium He à 20 °C.

    _Rappel :_ volume d'une sphère $V = (4 pi r^3) \/ 3$ ; $1 "dm"^3 = 1 "L"$.

    a. Calculer le volume d'hélium contenu dans le ballon en litres.
    b. En déduire la quantité de matière d'hélium. ($V_m = 24$ L·mol⁻¹ à 20 °C)

  + Recopier et compléter le tableau pour des gaz à 20 °C ($V_m = 24$ L·mol⁻¹).

    *Données :* $M_"H" = 1,0$ ; $M_"C" = 12$ ; $M_"N" = 14$ ; $M_"O" = 16$ g·mol⁻¹.

    #align(center)[
      #table(
        columns: (2.5fr, 1.3fr, 1.3fr, 1.8fr, 1.3fr),
        align: center,
        [*Gaz*], [*M (g·mol⁻¹)*], [*n (mol)*], [*V*], [*m (g)*],
        [Méthane $"CH"_4$], [...], [...], [...], [5,0 g],
        [Dioxyde de carbone $"CO"_2$], [...], [...], [$3,5 times 10^4$ mL], [...],
        [Diazote $"N"_2$], [...], [$2,0 times 10^(-2)$ mol], [...], [...],
      )
    ]
]

#exercice[
  *Préparation par dilution — permanganate de potassium*

  On dispose d'une solution mère de permanganate de potassium $"KMnO"_4$ de concentration $C_"mère" = 0,15$ mol·L⁻¹. On souhaite préparer $V_"fiole" = 100$ mL d'une solution fille de concentration $C_"fille" = 3,0 times 10^(-2)$ mol·L⁻¹.

  + Calculer le facteur de dilution $F$.
  + En déduire le volume $V_"pipette"$ de solution mère à prélever.
  + Identifier le matériel nécessaire et décrire le protocole de préparation.
  + Vérifier que la quantité de matière de soluté est conservée en calculant $n_"prélevée" = C_"mère" times V_"pipette"$ et $n_"fille" = C_"fille" times V_"fiole"$. Conclure.
]

#exercice[
  *Dosage spectrophotométrique — l'azorubine*

  L'azorubine (E122) est un colorant alimentaire rouge de masse molaire $M = 502$ g·mol⁻¹. La dose journalière admissible (DJA) est fixée à $4$ mg·kg⁻¹·jour⁻¹. La courbe d'étalonnage est une droite passant par l'origine de pente $k = 7,0 times 10^3$ L·mol⁻¹.

  + Le spectre d'absorption de l'azorubine présente un pic à $lambda_"max" = 520$ nm. Justifier la couleur rouge de la solution.

  + Indiquer la longueur d'onde à laquelle régler le spectrophotomètre et décrire les étapes du dosage par gamme étalon.

  + Un sirop de grenadine est dilué 5 fois avant la mesure. L'absorbance de la solution diluée est $A_"dil" = 0,15$.

    a. Calculer la concentration $C_"dil"$ de la solution diluée.
    b. En déduire la concentration $C$ du sirop non dilué.

  + Un enfant de masse $m_"enfant" = 30$ kg boit des verres de 200 mL du sirop non dilué.

    _Aide :_ calculer d'abord la masse maximale d'azorubine autorisée par jour, puis la masse contenue dans un verre.

    Combien de verres peut-il boire par jour sans dépasser la DJA ?
]

#exercice[
  *Défi — Le sulfate de cuivre hydraté*

  #text(style: "italic")[
    Un élève souhaite préparer une solution de sulfate de cuivre. Il pèse une masse $m = 2,50$ g de sulfate de cuivre pentahydraté $"CuSO"_4 dot 5"H"_2"O"$, l'introduit dans une fiole jaugée et complète avec de l'eau distillée. La solution obtenue est bleue. Il mesure ensuite l'absorbance au spectrophotomètre réglé à $lambda = 640$ nm et obtient $A_"mes" = 0,45$.
  ]

  *Données :* $M_"H" = 1,0$ ; $M_"O" = 16$ ; $M_"S" = 32$ ; $M_"Cu" = 63,5$ g·mol⁻¹. Droite d'étalonnage : $k = 12,0$ L·mol⁻¹. Fiole jaugée utilisée : $V_"fiole" = 200$ mL.

  + Calculer la masse molaire de $"CuSO"_4 dot 5"H"_2"O"$.

    _Attention :_ les 5 molécules d'eau de cristallisation font partie de la formule et contribuent à la masse molaire.

  + En déduire la quantité de matière $n$ de sulfate de cuivre dissoute, puis la concentration molaire théorique $C_"th"$ de la solution.

    _Rappel :_ une mole de $"CuSO"_4$ libère une mole d'ions $"Cu"^(2+)$ en solution.

  + À l'aide de la loi de Beer-Lambert, calculer l'absorbance théorique $A_"th"$ attendue pour cette solution.

  + Comparer $A_"th"$ et $A_"mes" = 0,45$.

    a. Calculer la concentration réelle $C_"reel"$ à partir de la mesure d'absorbance.
    b. En utilisant $n$ calculé à la question 2, retrouver le volume réel $V_"reel"$ de la solution effectivement préparée.
    c. L'élève a-t-il mis trop ou pas assez d'eau dans sa fiole ? Quelle erreur expérimentale cela suggère-t-il ?

  + La solution est bleue et le spectrophotomètre est réglé à $lambda = 640$ nm (rouge-orange). Vérifier, à l'aide du tableau de la roue chromatique, que ce choix de longueur d'onde est cohérent avec la couleur bleue de la solution.
]
