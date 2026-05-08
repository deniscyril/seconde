#import "../_assets/template_evaluation.typ": *

#show: conf

#identification()
#entete_eval("DS : Atomes, Ions et Entités Stables", "20")

#box(stroke: 0.5pt, inset: 8pt, width: 100%)[
  *Consignes :*
  - Si vous bénéficiez d'un PAP, vous ne traiterez pas les questions avec la mention *PAP*.
  - Le barème tient compte d'un demi-point de soin (symboles corrects, réponses rédigées).
]

// ─── Exercice 1 : Restitution de cours (5 pts) ─────────────────────────────
#exercice(points: "5")[

  *1. (1,5 pt)* Énoncer la règle de l'octet. Préciser le cas particulier de l'hydrogène.

  #lignes_reponse(3)

  *2. (1 pt)* Citer deux propriétés caractéristiques des gaz nobles.

  #lignes_reponse(2)

  *3. (0,5 pt)* Citer le nom d'une famille chimique autre que les gaz nobles et donner un exemple d'élément appartenant à cette famille.

  #lignes_reponse(2)

  *4. (2 pts)* Compléter le tableau suivant. Lorsque la case « Élément » est vide, retrouver le nom de l'élément correspondant.

  #v(0.3em)
  #align(center)[
    #table(
      columns: (2.6cm, 1.4cm, 0.9cm, 4.8cm, 2cm, 3.2cm),
      align: center + horizon,
      stroke: 0.5pt,
      inset: (x: 6pt, y: 16pt),
      [*Élément*], [*Symbole*], [*Z*], [*Structure électronique*], [$bold(e^-)$ *de valence*], [*Schéma de Lewis*],
      [],          [$"H"$],  [1],  [], [], [],
      [Carbone],   [$"C"$],  [6],  [], [], [],
      [],          [$"N"$],  [7],  [], [], [],
      [],          [$"O"$],  [8],  [], [], [],
    )
  ]
]

// ─── Exercice 2 : Formation d'ions monoatomiques (6 pts) ───────────────────
#exercice(points: "6")[

  #underline[Données — structures électroniques des gaz nobles de référence :]
  #table(
    columns: (auto, auto, auto),
    align: center + horizon,
    stroke: 0.5pt,
    inset: (x: 8pt, y: 6pt),
    [*Gaz noble*], [*Symbole*], [*Structure électronique*],
    [Hélium],  [$""_2"He"$],  [$1s^2$],
    [Néon],    [$""_10"Ne"$], [$1s^2 2s^2 2p^6$],
    [Argon],   [$""_18"Ar"$], [$1s^2 2s^2 2p^6 3s^2 3p^6$],
  )

  #v(0.5em)

  Pour chaque atome ci-dessous :
  - écrire la structure électronique ;
  - identifier le gaz noble de référence ;
  - préciser si l'atome gagne ou perd des électrons, et combien ;
  - écrire la formule de l'ion formé.

  #v(0.4em)

  *1. (2 pts)* Sodium $""_11"Na"$

  #lignes_reponse(4)

  *2. (2 pts)* Oxygène $""_8"O"$

  #lignes_reponse(4)

  *3. (2 pts) PAP* Soufre $""_16"S"$

  #lignes_reponse(4)
]

// ─── Exercice 3 : Schémas de Lewis de molécules (5 pts) ────────────────────
#exercice(points: "5")[

  Tracer le schéma de Lewis de chacune des molécules suivantes. Vérifier ensuite que chaque atome respecte la règle de l'octet (ou du duet pour H).

  #v(0.4em)

  *1. (1,5 pt)* Ammoniac $"NH"_3$

  #v(3cm)

  *2. (1,5 pt)* Chlorure d'hydrogène $"HCl"$

  #v(3cm)

  *3. (2 pts) PAP* Méthanal $"CH"_2"O"$ _(cette molécule contient une liaison double C=O)_

  #v(3cm)
]

// ─── Question difficile (4 pts) ────────────────────────────────────────────
#exercice(points: "4")[

  *Isomères de constitution*

  En chimie organique, deux molécules sont dites *isomères de constitution* lorsqu'elles possèdent la même formule brute mais des enchaînements d'atomes différents. Lors d'une synthèse, un chimiste obtient un mélange de deux substances liquides de formule brute $"C"_2"H"_4"O"$. Après analyse spectroscopique, il identifie :

  - une molécule *A* contenant une liaison double carbone-oxygène (C=O) ;
  - une molécule *B* contenant une liaison double carbone-carbone (C=C) et une liaison simple oxygène-hydrogène (O—H).

  Les deux molécules ont des points d'ébullition différents (20 °C pour A et 37 °C pour B), ce qui confirme qu'elles ont bien des structures distinctes malgré leur formule brute identique.

  #v(0.4em)

  *1. (0,5 pt)* Combien d'atomes de carbone, d'hydrogène et d'oxygène une molécule de formule $"C"_2"H"_4"O"$ contient-elle ?

  #lignes_reponse(1)

  *2. (1,5 pt)* Proposer le schéma de Lewis de la molécule *A*. Vérifier que chaque atome respecte la règle de l'octet (ou du duet pour H).

  #v(3.5cm)

  *3. (2 pts)* Proposer le schéma de Lewis de la molécule *B*. Vérifier que chaque atome respecte la règle de l'octet (ou du duet pour H).

  #v(3.5cm)
]
