#import "@preview/cetz:0.3.2": canvas, draw
#import "../../_assets/template_evaluation.typ": *

#show: conf

#let nom_prenom() = {
  grid(
    columns: (1fr, 1fr),
    gutter: 15pt,
    align: bottom,
    grid(columns: (auto, 1fr), column-gutter: 4pt, align: bottom, [*NOM :*], line(length: 100%, stroke: 0.5pt)),
    grid(columns: (auto, 1fr), column-gutter: 4pt, align: bottom, [*Prénom :*], line(length: 100%, stroke: 0.5pt)),
  )
  v(0.5cm)
}

#nom_prenom()
#entete_eval("Devoir de Physique-Chimie - Terminale spé", "20")

#exercice(points: "7,5")[
  *Observer les cratères de la Lune*

  Le club d'astronomie du lycée organise une soirée d'observation de la Lune. Les élèves souhaitent observer deux cratères : *Copernic* et *Kepler*. Ils disposent d'une lunette astronomique d'initiation dont voici un extrait de la notice.

  #align(center)[
    #table(
      columns: (auto, auto),
      inset: 5pt,
      stroke: 0.5pt + gray,
      [Diamètre de l'objectif], [$D = 70$ mm],
      [Distance focale de l'objectif], [$f'_1 = 700$ mm],
      [Oculaires fournis (distances focales)], [$f'_2 = 25$ mm et $f'_2 = 10$ mm],
      [Grossissements annoncés], [$times 28$ et $times 70$],
    )
  ]

  *Données :*
  - distance Terre-Lune : $D_"TL" = "3,84" times 10^5$ km ;
  - diamètre du cratère Copernic : 93 km ; diamètre du cratère Kepler : 32 km ;
  - pouvoir séparateur de l'œil : $epsilon = "3,0" times 10^(-4)$ rad. Deux points vus sous un angle $theta$ sont distingués si $theta > epsilon$ ;
  - pour des angles petits exprimés en radian : $tan theta approx theta$.

  Le *diamètre apparent* $theta_C$ d'un cratère est l'*angle* sous lequel un observateur terrestre voit ce cratère (figure ci-dessous). Il s'exprime en radian et ne doit pas être confondu avec le diamètre $d$ du cratère, qui est une longueur.

  #figure(image("../figures/lune_diametre_apparent.png", width: 85%), caption: [Diamètre apparent $theta_C$ d'un cratère de diamètre $d$ (schéma non à l'échelle)])

  #v(0.3em)
  *A. Observation à l'œil nu*

  *1.* Calculer le diamètre apparent $theta_C$ du cratère Copernic vu depuis la Terre.

  *2.* Le cratère Copernic peut-il être distingué à l'œil nu ? Justifier.

  #v(0.3em)
  *B. La lunette afocale*

  La lunette est modélisée par deux lentilles minces convergentes : l'objectif $L_1$ et l'oculaire $L_2$ (schéma en annexe, qui n'est pas à l'échelle). On note $theta'$ l'angle sous lequel l'objet est vu à travers la lunette ; le grossissement est défini par $G = theta' / theta$.

  *3.* La lunette est réglée de façon *afocale*. Donner la signification de ce terme, puis indiquer comment doivent être placés le foyer image $F'_1$ de l'objectif et le foyer objet $F_2$ de l'oculaire.

  *4.* En déduire la distance $O_1 O_2$ entre les deux lentilles lorsque l'oculaire de 25 mm est utilisé.

  *5.* *Sur l'annexe à rendre avec la copie* :
  - placer les foyers $F'_1$ et $F_2$ ;
  - tracer la marche des deux rayons issus de $B_infinity$ à travers la lunette, en faisant apparaître l'image intermédiaire $A_1 B_1$ ;
  - repérer l'angle $theta'$.

  *6.* En exploitant le schéma, montrer que $G = f'_1 / f'_2$. Vérifier les grossissements annoncés par le fabricant.

  *7.* Les élèves veulent maintenant observer le cratère Kepler « confortablement », c'est-à-dire sous un angle $theta'$ au moins dix fois plus grand que le pouvoir séparateur de l'œil. Quel oculaire doivent-ils utiliser ? _Toute démarche, même non aboutie, sera valorisée._

  #v(0.3em)
  *C. Une limite due à la diffraction*

  À cause de la diffraction par l'objectif, deux points vus sous un angle $theta$ ne donnent des images séparées que si $theta > alpha_"lim" = "1,22" lambda / D$ (critère de Rayleigh), où $D$ est le diamètre de l'objectif. On prendra $lambda = 550$ nm.

  *8.* Calculer $alpha_"lim"$ pour cette lunette. La diffraction empêche-t-elle d'observer le cratère Kepler ? Justifier.
]

#exercice(points: "6,5")[
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

  #v(0.3em)
  *B. Préparation d'une solution étalon par dilution*

  On dispose d'une solution mère $S_0$ de diiode de concentration $C_0 = qty("2,00e-2","mol/L")$. On souhaite préparer une solution fille $S_3$ de concentration $C_3 = qty("0,40","mmol/L")$.

  Matériel disponible : pipettes jaugées de 5,0 ; 10,0 ; 20,0 et 25,0 mL -- fioles jaugées de 50,0 ; 100,0 et 250,0 mL -- béchers -- pipette Pasteur -- eau distillée.

  *3.* Convertir $C_3$ en $"mol" dot "L"^(-1)$, puis calculer le facteur de dilution $F$.

  *4.* Choisir, en justifiant par un calcul, la pipette jaugée et la fiole jaugée à utiliser.

  *5.* Rédiger le protocole de préparation de la solution $S_3$.

  #v(0.3em)
  *C. Exploitation de la loi de Beer-Lambert*

  On prépare de la même façon plusieurs solutions étalons de diiode, puis on mesure leur absorbance à la longueur d'onde $lambda_max$. On obtient la courbe d'étalonnage ci-dessous.

  #align(center)[#image("../figures/betadine_etalonnage.png", width: 75%)]

  *6.* Énoncer la loi de Beer-Lambert en précisant la signification et l'unité de chaque grandeur.

  *7.* Déterminer le coefficient directeur $k$ de la droite modélisée, en précisant son unité. Écrire la relation entre $A$ et $C$ correspondant à cette droite.

  #v(0.3em)
  *D. Retour au produit commercial*

  La Bétadine® est trop concentrée pour que son absorbance soit mesurée directement : on la dilue 200 fois. L'absorbance de la solution diluée, mesurée dans les mêmes conditions, vaut $A_d =$ 0,30.

  *8.* À l'aide de la relation obtenue à la question 7, déterminer la concentration $C_d$ en diiode de la solution diluée.

  *9.* En déduire la concentration $C_B$ en diiode de la Bétadine® commerciale, en $"mol" dot "L"^(-1)$.

  *10.* À partir de l'indication du fabricant, calculer la concentration en masse $C_m$ de polyvidone iodée dans la Bétadine®, puis sa concentration en quantité de matière $C_"fab"$. Comparer $C_"fab"$ à $C_B$ et conclure.

]

#exercice(points: "6")[
  *Le sérum physiologique : un dosage par conductimétrie*

  Le sérum physiologique est une solution aqueuse de chlorure de sodium $("Na"^+ + "Cl"^-)$ utilisée pour nettoyer le nez ou les yeux. Son étiquette indique : _« chlorure de sodium 0,9 % »_, c'est-à-dire 0,9 g de chlorure de sodium pour 100 mL de solution. On souhaite vérifier cette indication par conductimétrie.

  *Données :*
  - conductivités molaires ioniques à 25 °C : $lambda("Na"^+) = "5,01" times 10^(-3) "S" dot "m"^2 dot "mol"^(-1)$ ; $lambda("Cl"^-) = "7,63" times 10^(-3) "S" dot "m"^2 dot "mol"^(-1)$ ;
  - masse molaire du chlorure de sodium : $M("NaCl") = qty("58,5","g/mol")$ ;
  - la loi de Kohlrausch n'est valable que pour des solutions diluées (concentration inférieure à 10 mmol·L#super[-1] environ).

  *1.* Énoncer la loi de Kohlrausch. En déduire l'expression de la conductivité $sigma$ d'une solution de chlorure de sodium de concentration $C$ en fonction de $C$, $lambda("Na"^+)$ et $lambda("Cl"^-)$.

  *2.* Calculer la conductivité attendue pour une solution de chlorure de sodium de concentration $C = "2,0" times 10^(-3) "mol" dot "L"^(-1)$. On veillera aux unités.

  On mesure la conductivité de plusieurs solutions étalons de chlorure de sodium à 25 °C. On obtient la courbe d'étalonnage ci-dessous.

  #align(center)[#image("../figures/serum_etalonnage_conductimetrie.png", width: 72%)]

  *3.* Déterminer le coefficient directeur $k$ de la droite d'étalonnage. Montrer que sa valeur est cohérente avec la loi de Kohlrausch.

  *4.* Expliquer pourquoi il est nécessaire de diluer le sérum physiologique avant de mesurer sa conductivité.

  On dilue 50 fois le sérum physiologique. La conductivité de la solution diluée vaut $sigma_d = "3,85" times 10^(-2) "S" dot "m"^(-1)$.

  *5.* Déterminer la concentration $C_d$ de la solution diluée, puis la concentration $C_S$ en chlorure de sodium du sérum physiologique.

  *6.* En déduire la concentration en masse $C_m$ en chlorure de sodium du sérum.
]

#pagebreak()
#align(center)[#text(size: 13pt, weight: "bold")[Annexe à rendre avec la copie]]
#v(0.3cm)
#nom_prenom()
#align(center)[
  #image("../figures/lunette_annexe_lune.png", width: 100%)
  Schéma de la lunette astronomique (exercice 1, question 5 ; le schéma n'est pas à l'échelle).
]
