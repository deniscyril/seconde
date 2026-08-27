#import "../../_assets/template_physique.typ": *

// Boîte-trou : trait souligné à compléter
#let trou(w: 3cm) = box(
  width: w, height: 1.3em,
  stroke: (bottom: 0.5pt + black),
  baseline: 25%,
)

// Trou dans une formule mathématique (retourne un box utilisable en mode math)
#let mt(w: 1.8cm) = math.class("normal",
  box(width: w, height: 1.2em, stroke: (bottom: 0.5pt + black), baseline: 35%)
)

#show: conf

#chapitre[Détermination de la composition du système initial]

= Masse molaire

== Rappel : la mole et la constante d'Avogadro

#définition[
  La *mole* (symbole : *mol*) est l'unité de #trou(w: 3.5cm), notée $n$.

  Une mole contient exactement $N_A =$ #trou(w: 3cm) entités élémentaires. $N_A$ est la *constante d'Avogadro*.

  $ N = n times #mt() $

  - $N$ : #trou(w: 4cm) (sans unité)
  - $n$ : #trou(w: 4cm) (en mol)
  - $N_A =$ #trou(w: 3cm) mol⁻¹
]

== Masse molaire atomique

#définition[
  La *masse molaire atomique* $M$ d'un élément est #trou(w: 6cm) d'atomes de cet élément. Elle s'exprime en *g·mol⁻¹* et se lit dans le *#trou(w: 3.5cm)*.
]

#exemple[
  $M_"H" =$ #trou(w:1.5cm) g·mol⁻¹ ; $M_"C" =$ #trou(w:1.2cm) g·mol⁻¹ ; $M_"O" =$ #trou(w:1.2cm) g·mol⁻¹ ; $M_"N" =$ #trou(w:1.2cm) g·mol⁻¹ ; $M_"Fe" =$ #trou(w:1.2cm) g·mol⁻¹.
]

#application[
  Lire dans le tableau périodique la masse molaire atomique des éléments : Na, Cl, Cu, S, Ca.

  $M_"Na" =$ #trou(w:1.5cm) ; $M_"Cl" =$ #trou(w:1.5cm) ; $M_"Cu" =$ #trou(w:1.5cm) ; $M_"S" =$ #trou(w:1.5cm) ; $M_"Ca" =$ #trou(w:1.5cm) g·mol⁻¹.
]

== Masse molaire d'une espèce chimique

#définition[
  La *masse molaire moléculaire* d'une espèce chimique est la *#trou(w: 3cm)* des masses molaires atomiques de tous les atomes qui la composent :

  $ M_("A"_p "B"_q) = #mt(w: 2cm) times M_"A" + #mt(w: 2cm) times M_"B" $

  Elle s'exprime en *g·mol⁻¹*.
]

#exemple[
  Calculer la masse molaire de l'eau $"H"_2"O"$ :

  $ M_("H"_2"O") = #mt() times M_"H" + M_"O" = #mt() times 1,0 + 16 = #mt() "g.mol"^(-1) $
]

#application[
  + Calculer $M_("CO"_2)$. *Données :* $M_"C" = 12$ g·mol⁻¹ ; $M_"O" = 16$ g·mol⁻¹.

    $ M_("CO"_2) = #mt() + #mt() times #mt() = #mt() "g.mol"^(-1) $

  + Calculer $M_("C"_6"H"_12"O"_6)$ (glucose). *Données :* $M_"H" = 1,0$ ; $M_"C" = 12$ ; $M_"O" = 16$ g·mol⁻¹.

    $ M_("C"_6"H"_12"O"_6) = #mt() times 12 + #mt() times 1,0 + #mt() times 16 = #mt() "g.mol"^(-1) $
]

= Quantité de matière à partir de la masse

== La relation fondamentale

#définition[
  La quantité de matière $n$ (en mol), la masse $m$ (en g) et la masse molaire $M$ (en g·mol⁻¹) sont liées par :

  $ n = #mt(w:2cm) / #mt(w:2cm) $

  On en déduit : $m =$ #trou(w: 3cm) et $M =$ #trou(w: 3cm).
]

#important[
  Avant tout calcul, *convertir la masse en #trou(w: 2cm)* si elle est donnée en kg ou en mg.

  $1 "kg" = $ #trou(w: 1.5cm) g ; $quad 1 "mg" = $ #trou(w: 1.5cm) g
]

#exemple[
  On dispose d'un morceau d'aluminium de masse $m = 5,4$ g. Calculer la quantité de matière $n$ d'aluminium.

  *Donnée :* $M_"Al" = 27$ g·mol⁻¹.

  $ n = m / M = #mt() / #mt() = #mt() "mol" $
]

#application[
  + Un comprimé de paracétamol $"C"_8"H"_9"NO"_2$ contient $m = 500$ mg.

    *Données :* $M_"H" = 1,0$ ; $M_"C" = 12$ ; $M_"N" = 14$ ; $M_"O" = 16$ g·mol⁻¹.

    Calculer la quantité de matière $n$ de paracétamol contenu dans ce comprimé.

    a. $M_("C"_8"H"_9"NO"_2) = $ #trou(w: 7cm) $=$ #trou(w: 2cm) g·mol⁻¹

    b. *Conversion :* $m = 500 "mg" =$ #trou(w: 2cm) g

    c. $n = m / M =$ #trou(w: 6cm) $=$ #trou(w: 3cm) mol

  + On veut peser $n = 2,0$ mol de chlorure de sodium NaCl. Quelle masse faut-il prendre ?

    *Données :* $M_"Na" = 23$ g·mol⁻¹ ; $M_"Cl" = 35,5$ g·mol⁻¹.

    $M_"NaCl" =$ #trou(w: 4cm) $=$ #trou(w: 2cm) g·mol⁻¹

    $m = n times M =$ #trou(w: 5cm) $=$ #trou(w: 2cm) g
]

== Cas d'un liquide pur — masse volumique

#définition[
  Pour un *liquide pur* de masse volumique $rho$ (en g·mL⁻¹) prélevé en volume $V$ (en mL) :

  $ m = #mt() times #mt() quad "puis" quad n = m / M = (#mt() times #mt()) / #mt() $
]

#application[
  L'éthanol pur $"C"_2"H"_5"OH"$ a une masse volumique $rho = 0,79$ g·mL⁻¹. On prélève $V = 15$ mL.

  *Données :* $M_"H" = 1,0$ ; $M_"C" = 12$ ; $M_"O" = 16$ g·mol⁻¹.

  Calculer la quantité de matière d'éthanol prélevée.

  $M_("C"_2"H"_5"OH") =$ #trou(w: 6cm) $=$ #trou(w: 2cm) g·mol⁻¹

  $m = rho times V =$ #trou(w: 5cm) $=$ #trou(w: 2cm) g $quad arrow.r quad n =$ #trou(w: 3cm) $=$ #trou(w: 2cm) mol
]

= Volume molaire d'un gaz

#définition[
  À température et pression fixées, *tout gaz* occupe le même volume par mole : c'est le *#trou(w: 3cm)* $V_m$.

  $ n = #mt(w: 2.5cm) / #mt(w: 2cm) $

  - $n$ en mol ; $V_"gaz"$ en L ; $V_m$ en #trou(w: 2cm)
]

#important[
  Valeurs du volume molaire à connaître :
  - À *0 °C* et pression atmosphérique (CNTP) : $V_m =$ #trou(w: 2cm) L·mol⁻¹
  - À *20 °C* et pression atmosphérique : $V_m =$ #trou(w: 2cm) L·mol⁻¹
]

#application[
  + Un réservoir contient $V = 11,2$ L de dihydrogène $"H"_2$ dans les CNTP. Calculer $n$.

    $ n = V_"gaz" / V_m = #mt() / #mt() = #mt() "mol" $

  + *Conversion :* Un flacon contient $V = 500$ mL de dioxygène $"O"_2$ à 20 °C. Calculer $n$.

    *Conversion :* $V = 500 "mL" =$ #trou(w: 2cm) L

    $ n = V_"gaz" / V_m = #mt() / #mt() = #mt() "mol" $
]

= Concentration en quantité de matière

== Définition

#définition[
  La *concentration en quantité de matière* $C$ (ou *concentration molaire*) est :

  $ C = #mt(w: 2cm) / #mt(w: 2cm) $

  - $C$ en *mol·L⁻¹* ; $n$ en mol ; $V$ en L
  - On en déduit : $n =$ #trou(w: 3cm)
]

#important[
  Avant tout calcul, *convertir le volume en #trou(w: 2cm)* si donné en mL.

  $V("L") = V("mL") \/ $ #trou(w: 1.5cm)
]

#application[
  + Une solution de NaOH de volume $V = 200$ mL contient $n = 1,0 times 10^(-2)$ mol.

    Calculer la concentration molaire $C$ de cette solution.

    *Conversion :* $V = 200 "mL" =$ #trou(w: 2cm) L

    $ C = n / V = #mt(w: 3cm) / #mt(w: 2cm) = #mt(w: 3cm) "mol.L"^(-1) $

  + On veut préparer $V = 250$ mL d'une solution de glucose à $C = 0,278$ mol·L⁻¹. Calculer la quantité de matière $n$ de glucose à dissoudre.

    *Conversion :* $V =$ #trou(w: 2cm) L

    $ n = C times V = #mt() times #mt() = #mt() "mol" $
]

== Lien avec la concentration en masse

#définition[
  La *concentration en masse* $C_m$ est la masse $m$ de soluté par litre de solution :

  $ C_m = #mt(w: 2cm) / #mt(w: 2cm) quad ("en g.L"^(-1)) $

  La relation entre $C_m$ et $C$ est :

  $ C_m = #mt() times #mt() $
]

#application[
  + Une solution de NaOH a $C = 5,0 times 10^(-2)$ mol·L⁻¹. *Donnée :* $M_"NaOH" = 40$ g·mol⁻¹.

    Calculer $C_m$.

    $C_m = C times M =$ #trou(w: 6cm) $=$ #trou(w: 2cm) g·L⁻¹

  + Perfusion de glucose $"C"_6"H"_12"O"_6$ : $C = 278$ mmol·L⁻¹, $V = 500$ mL.

    *Données :* $M_"H" = 1,0$ ; $M_"C" = 12$ ; $M_"O" = 16$ g·mol⁻¹.

    Calculer la quantité de matière et la masse de glucose dans la perfusion.

    *Conversions :* $C =$ #trou(w: 2cm) mol·L⁻¹ ; $V =$ #trou(w: 2cm) L ; $M_("C"_6"H"_12"O"_6) =$ #trou(w: 2cm) g·mol⁻¹

    $n = C times V =$ #trou(w: 6cm) $=$ #trou(w: 2cm) mol

    $m = n times M =$ #trou(w: 6cm) $=$ #trou(w: 2cm) g
]

= Préparation d'une solution

== Rappel : préparation par dissolution

#important[
  *Matériel nécessaire :* balance — spatule — bécher — agitateur — entonnoir — *fiole jaugée* de #trou(w: 2cm) mL — pissette d'eau distillée.
]

#exemple[
  On veut préparer $V = 50$ mL d'une solution de NaCl de concentration molaire $C = 0,154$ mol·L⁻¹.

  *Donnée :* $M_"NaCl" = 58,5$ g·mol⁻¹.

  *Calcul de la masse à peser :*

  $n = C times V =$ #trou(w: 6cm) $=$ #trou(w: 3cm) mol

  $m = n times M_"NaCl" =$ #trou(w: 6cm) $=$ #trou(w: 2cm) g

  *Protocole :*

  + #trou(w: 7cm) de NaCl à la balance.
  + Dissoudre dans un bécher avec #trou(w: 4cm) en agitant.
  + Transvaser dans la fiole jaugée de 50 mL ; rincer le bécher.
  + Compléter avec de l'eau distillée jusqu'au #trou(w: 3cm).
  + Boucher et #trou(w: 3cm).
]

== Préparation par dilution

#définition[
  Lors d'une dilution, la quantité de matière de soluté est *#trou(w: 2.5cm)* :

  $ C_"mère" times #mt(w: 2.5cm) = C_"fille" times #mt(w: 2.5cm) $

  Le *facteur de dilution* $F$ est :

  $ F = #mt(w: 2.5cm) / #mt(w: 2.5cm) = #mt(w: 2.5cm) / #mt(w: 2.5cm) $

  - *Solution mère* : solution de départ, plus #trou(w: 2cm)
  - *Solution fille* : solution obtenue, plus #trou(w: 2cm)
  - $V_"fiole"$ = volume de la #trou(w: 3cm) = volume de la solution fille
  - $V_"pipette"$ = volume de la #trou(w: 3.5cm) = volume de solution mère prélevée
]

#important[
  *Matériel nécessaire :* #trou(w: 3cm) jaugée de volume $V_"pipette"$ — propipette — #trou(w: 2.5cm) jaugée de volume $V_"fiole"$ — pissette d'eau distillée.

  *Protocole :*
  + Prélever $V_"pipette"$ de solution mère à la #trou(w: 3cm).
  + Introduire dans la #trou(w: 3cm) de volume $V_"fiole"$.
  + Compléter avec de l'eau distillée jusqu'au #trou(w: 3cm).
  + Boucher et retourner plusieurs fois.
]

#application[
  À partir de la solution mère de NaCl ($C_"mère" = 0,154$ mol·L⁻¹), on veut préparer $V_"fiole" = 100$ mL d'une solution fille de concentration $C_"fille" = 0,0308$ mol·L⁻¹.

  Calculer $F$ puis $V_"pipette"$.

  $ F = C_"mère" / C_"fille" = #mt() / #mt() = #mt() $

  $ V_"pipette" = V_"fiole" / F = #mt() / #mt() = #mt() "mL" $

  On utilise une *pipette jaugée de* #trou(w: 2cm) mL et une *fiole jaugée de* #trou(w: 2cm) mL.
]

= Spectroscopie d'absorbance

== Spectre d'absorption et couleur d'une espèce en solution

#définition[
  Le *spectre d'absorption* représente l'absorbance $A$ en fonction de #trou(w: 4cm). La longueur d'onde du pic est notée #trou(w: 2cm).
]

#définition[
  La *couleur perçue* d'une solution est la *couleur #trou(w: 3cm)* de la couleur la plus absorbée.
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
  Une solution de $"KMnO"_4$ absorbe à $lambda_"max" = 528$ nm. Quelle est sa couleur ?

  $lambda_"max" = 528$ nm → couleur absorbée : #trou(w: 2cm) → couleur perçue : #trou(w: 3cm).
]

== Absorbance

#définition[
  L'*absorbance* $A$ est une grandeur #trou(w: 3cm) mesurée par le spectrophotomètre. Elle traduit la capacité d'une solution à #trou(w: 4cm) la lumière à $lambda_"max"$ :

  - $A = 0$ : la solution n'absorbe #trou(w: 2cm) (transparente)
  - $A$ augmente quand la #trou(w: 3cm) augmente
  - $A$ augmente quand la longueur de la #trou(w: 2cm) $l$ augmente

  Les valeurs utiles vont de #trou(w: 1cm) à environ #trou(w: 1cm).
]

== Loi de Beer-Lambert

#définition[
  Pour une solution *suffisamment diluée* :

  $ A = #mt() times #mt() times #mt() = #mt() times C $

  - $k = epsilon times l$ : #trou(w: 4cm) de la droite d'étalonnage (en L·mol⁻¹)
]

#important[
  Si $A > $ #trou(w: 1cm) lors d'une mesure, il faut *#trou(w: 2cm)* la solution avant de l'analyser.
]

#application[
  Une solution d'azorubine donne $A = 0,35$. Droite d'étalonnage : $k = 7,0 times 10^3$ L·mol⁻¹.

  Calculer $C$.

  $ C = A / k = #mt() / #mt() = #mt() "mol.L"^(-1) $
]

== Dosage par étalonnage (gamme étalon)

#important[
  *Protocole du dosage par gamme étalon :*

  + Identifier $lambda_"max"$ : #trou(w: 6cm).
  + Régler le spectrophotomètre à #trou(w: 2cm).
  + Faire le #trou(w: 2cm) : mesurer avec le solvant pur → $A = 0$.
  + Préparer la gamme étalon : solutions de concentrations #trou(w: 3cm) connues.
  + Mesurer $A$ de chaque étalon → tracer #trou(w: 4cm) → droite par l'#trou(w: 2cm).
  + Mesurer $A_"inc"$ → lire ou calculer $C_"inc" =$ #trou(w: 3cm).
  + *Limite :* si $A_"inc" > 1$, #trou(w: 5cm) avant de mesurer.
]

#application[
  Sirop de grenadine (azorubine, $k = 7,0 times 10^3$ L·mol⁻¹) dilué 5 fois, $A_"dil" = 0,15$.

  Déterminer la concentration $C$ du sirop non dilué.

  $C_"dil" = A_"dil" / k =$ #trou(w: 6cm) $=$ #trou(w: 3cm) mol·L⁻¹

  $C = #mt() times C_"dil" =$ #trou(w: 6cm) $=$ #trou(w: 3cm) mol·L⁻¹
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
      [Facteur de dilution], [$F = C_"mère" \/ C_"fille" = V_"fiole" \/ V_"pipette"$], [sans unité], [—],
      [Loi de Beer-Lambert], [$A = k times C$], [sans unité ; L·mol⁻¹], [10],
      [Dosage par étalonnage], [$C_"inc" = A_"inc" \/ k$], [mol·L⁻¹], [10],
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
  *Dosage spectrophotométrique — l'azorubine*

  L'azorubine (E122) est un colorant alimentaire rouge de masse molaire $M = 502$ g·mol⁻¹. La DJA est fixée à $4$ mg·kg⁻¹·jour⁻¹. La droite d'étalonnage a pour pente $k = 7,0 times 10^3$ L·mol⁻¹.

  + Le spectre présente un pic à $lambda_"max" = 520$ nm. Justifier la couleur rouge de la solution.
  + Indiquer la longueur d'onde à laquelle régler le spectrophotomètre et décrire les étapes du dosage.
  + Sirop de grenadine dilué 5 fois, $A_"dil" = 0,15$.
    a. Calculer $C_"dil"$.
    b. En déduire $C$ du sirop non dilué.
  + Un enfant de $m = 30$ kg boit des verres de 200 mL du sirop non dilué. Combien de verres par jour sans dépasser la DJA ?
]

#exercice[
  *Défi — Le sulfate de cuivre hydraté*

  #text(style: "italic")[
    Un élève dissout $m = 2,50$ g de sulfate de cuivre pentahydraté $"CuSO"_4 dot 5"H"_2"O"$ dans une fiole jaugée de 200 mL. La solution bleue donne $A_"mes" = 0,45$ au spectrophotomètre ($lambda = 640$ nm).
  ]

  *Données :* $M_"H" = 1,0$ ; $M_"O" = 16$ ; $M_"S" = 32$ ; $M_"Cu" = 63,5$ g·mol⁻¹. Droite d'étalonnage : $k = 12,0$ L·mol⁻¹.

  + Calculer $M_("CuSO"_4 dot 5"H"_2"O")$. _(Les 5 molécules d'eau contribuent à la masse molaire.)_
  + En déduire $n$ puis la concentration théorique $C_"th"$ de la solution.
  + Calculer l'absorbance théorique $A_"th"$.
  + Comparer $A_"th"$ et $A_"mes" = 0,45$.
    a. Calculer la concentration réelle $C_"reel"$ à partir de la mesure.
    b. Retrouver le volume réel $V_"reel"$ de la solution préparée.
    c. L'élève a-t-il mis trop ou pas assez d'eau ?
  + La solution est bleue et $lambda = 640$ nm (rouge-orange). Vérifier la cohérence avec la roue chromatique.
]
