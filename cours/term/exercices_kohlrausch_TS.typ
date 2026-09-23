#import "../../_assets/template_physique.typ": *

#show: conf

#chapitre[Loi de Kohlrausch — Feuille d'exercices]

*Données (25 °C) :* conductivités molaires ioniques $lambda$ en $10^(-3) "S" dot "m"^2 dot "mol"^(-1)$.
#align(center)[
  #table(
    columns: 8,
    align: center + horizon,
    inset: 4pt,
    stroke: 0.5pt + gray,
    [Ion], [$"Na"^+$], [$"K"^+$], [$"Ca"^(2+)$], [$"H"_3"O"^+$], [$"Cl"^-$], [$"NO"_3^-$], [$"HO"^-$],
    [$lambda$], [5,01], [7,35], [11,9], [35,0], [7,63], [7,14], [19,9],
  )
]
#text(size: 10pt)[Rappel : $1 "mol" dot "L"^(-1) = 10^3 "mol" dot "m"^(-3)$ ; $M("NaCl") = "58,5" "g" dot "mol"^(-1)$.]

#exercice[
  *Application directe.* Calculer la conductivité $sigma$ d'une solution de chlorure de potassium $("K"^+ + "Cl"^-)$ de concentration $C = "2,0" times 10^(-3) "mol" dot "L"^(-1)$.
]

#exercice[
  *Un ion deux fois chargé.* On dissout du chlorure de calcium $"CaCl"_2$ : $C = "1,0" times 10^(-3) "mol" dot "L"^(-1)$.
  + Exprimer $["Ca"^(2+)]$ et $["Cl"^-]$ en fonction de $C$.
  + Calculer la conductivité $sigma$ de la solution.
]

#exercice[
  *Remonter à la concentration.* Une solution de chlorure de sodium a une conductivité $sigma = "1,9" times 10^(-2) "S" dot "m"^(-1)$.
  + Déterminer sa concentration $C$ en $"mol" dot "L"^(-1)$.
  + En déduire la masse de chlorure de sodium dissoute dans 250 mL de cette solution.
]

#exercice[
  *Comparer sans calculer.* Une solution d'acide chlorhydrique $("H"_3"O"^+ + "Cl"^-)$ et une solution de chlorure de sodium ont la même concentration. Laquelle est la plus conductrice ? Justifier.
]

#exercice[
  *Dosage par étalonnage.* On mesure la conductivité de solutions étalons de chlorure de potassium.
  #align(center)[
    #table(
      columns: 6,
      align: center + horizon,
      inset: 4pt,
      stroke: 0.5pt + gray,
      [$C$ ($"mmol" dot "L"^(-1)$)], [1,0], [2,0], [3,0], [4,0], [5,0],
      [$sigma$ ($"mS" dot "m"^(-1)$)], [15,0], [29,9], [45,1], [59,8], [75,0],
    )
  ]
  Une solution $S$ de chlorure de potassium est diluée 10 fois ; la solution diluée a une conductivité $sigma_d = "52,4" "mS" dot "m"^(-1)$.
  + Tracer $sigma = f(C)$. La loi de Kohlrausch est-elle vérifiée ?
  + Déterminer le coefficient directeur $k$ de la droite et le comparer à $lambda("K"^+) + lambda("Cl"^-)$.
  + Déterminer la concentration $C_S$ de la solution $S$.
  + Pourquoi a-t-on dilué la solution $S$ avant la mesure ?
]
