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

== Masse molaire atomique

#application[
  Lire dans le tableau périodique la masse molaire atomique des éléments : Na, Cl, Cu, S, Ca.

  $M_"Na" =$ #trou(w:1.5cm) ; $M_"Cl" =$ #trou(w:1.5cm) ; $M_"Cu" =$ #trou(w:1.5cm) ; $M_"S" =$ #trou(w:1.5cm) ; $M_"Ca" =$ #trou(w:1.5cm) g·mol⁻¹.
]

== Masse molaire d'une espèce chimique

#application[
  + Calculer $M_("CO"_2)$. *Données :* $M_"C" = 12$ g·mol⁻¹ ; $M_"O" = 16$ g·mol⁻¹.

    $ M_("CO"_2) = #mt() + #mt() times #mt() = #mt() "g.mol"^(-1) $

  + Calculer $M_("C"_6"H"_12"O"_6)$ (glucose). *Données :* $M_"H" = 1,0$ ; $M_"C" = 12$ ; $M_"O" = 16$ g·mol⁻¹.

    $ M_("C"_6"H"_12"O"_6) = #mt() times 12 + #mt() times 1,0 + #mt() times 16 = #mt() "g.mol"^(-1) $
]

= Quantité de matière à partir de la masse

== La relation fondamentale

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

#application[
  L'éthanol pur $"C"_2"H"_5"OH"$ a une masse volumique $rho = 0,79$ g·mL⁻¹. On prélève $V = 15$ mL.

  *Données :* $M_"H" = 1,0$ ; $M_"C" = 12$ ; $M_"O" = 16$ g·mol⁻¹.

  Calculer la quantité de matière d'éthanol prélevée.

  $M_("C"_2"H"_5"OH") =$ #trou(w: 6cm) $=$ #trou(w: 2cm) g·mol⁻¹

  $m = rho times V =$ #trou(w: 5cm) $=$ #trou(w: 2cm) g $quad arrow.r quad n =$ #trou(w: 3cm) $=$ #trou(w: 2cm) mol
]

= Volume molaire d'un gaz

#application[
  + Un réservoir contient $V = 11,2$ L de dihydrogène $"H"_2$ dans les CNTP. Calculer $n$.

    $ n = V_"gaz" / V_m = #mt() / #mt() = #mt() "mol" $

  + *Conversion :* Un flacon contient $V = 500$ mL de dioxygène $"O"_2$ à 20 °C. Calculer $n$.

    *Conversion :* $V = 500 "mL" =$ #trou(w: 2cm) L

    $ n = V_"gaz" / V_m = #mt() / #mt() = #mt() "mol" $
]

= Concentration en quantité de matière

== Définition

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

== Préparation par dilution

#application[
  À partir de la solution mère de NaCl ($C_"mère" = 0,154$ mol·L⁻¹), on veut préparer $V_"fiole" = 100$ mL d'une solution fille de concentration $C_"fille" = 0,0308$ mol·L⁻¹.

  Calculer $F$ puis $V_"pipette"$.

  $ F = C_"mère" / C_"fille" = #mt() / #mt() = #mt() $

  $ V_"pipette" = V_"fiole" / F = #mt() / #mt() = #mt() "mL" $

  On utilise une *pipette jaugée de* #trou(w: 2cm) mL et une *fiole jaugée de* #trou(w: 2cm) mL.
]

= Spectroscopie d'absorbance

== Spectre d'absorption et couleur d'une espèce en solution

#application[
  Une solution de $"KMnO"_4$ absorbe à $lambda_"max" = 528$ nm. Quelle est sa couleur ?

  $lambda_"max" = 528$ nm → couleur absorbée : #trou(w: 2cm) → couleur perçue : #trou(w: 3cm).
]

== Absorbance

== Loi de Beer-Lambert

#application[
  Une solution d'azorubine donne $A = 0,35$. Droite d'étalonnage : $k = 7,0 times 10^3$ L·mol⁻¹.

  Calculer $C$.

  $ C = A / k = #mt() / #mt() = #mt() "mol.L"^(-1) $
]

== Dosage par étalonnage (gamme étalon)

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
