#import "../../_assets/template_evaluation.typ": *

#show: conf

//#identification()
#eval_titre("DS : La mole et la quantité de matière")

#box(stroke: 0.5pt, inset: 8pt, width: 100%)[
  *Consignes :*
  - Les réponses sont rédigées sur une copie à part.
  - Les résultats numériques seront #underline[soulignés] et accompagnés de l'unité qui convient.
  - Le nombre de chiffres significatifs du résultat doit être cohérent avec celui des données utilisées.
  - Dans tout le devoir, le nombre d'Avogadro vaut $N_A = qty("6.02e23", "mol^-1")$.
]

#exercice[
  *Conversions et chiffres significatifs*

  *1.* Convertir les grandeurs suivantes dans l'unité demandée :

  + 500 mg = #h(1fr) g
  + 2,5 L = #h(1fr) mL
  + 120 cm³ = #h(1fr) L
  + 0,075 kg = #h(1fr) g

  *2.* Le volume d'une fiole jaugée vaut V = 100,0 mL. Combien ce nombre comporte-t-il de chiffres significatifs ?

  *3.* Une élève calcule à la calculatrice une quantité de matière et obtient, sans arrondir, n = 0,158823529 mol. Les données utilisées dans son calcul comportaient toutes 3 chiffres significatifs. Réécrire le résultat de l'élève avec le nombre de chiffres significatifs adapté.
]

#exercice[
  *Quantité de matière : masse molaire, masse volumique et nombre d'entités*

  *Données :* $M_(C) = qty("12,0","g/mol")$, $M_(H) = qty("1,0","g/mol")$, $M_(O) = qty("16,0","g/mol")$, masse volumique de l'éthanol $rho_("éthanol") = qty("0,79","g/mL")$, $M_("éthanol") = qty("46,0","g/mol")$.

  #v(0.3em)
  *A. Le sucre*

  Le saccharose (sucre) a pour formule brute $C_12 H_22 O_11$.

  *1.* Calculer la masse molaire du saccharose.

  *2.* Rappeler la relation entre la quantité de matière $n$, la masse $m$ et la masse molaire $M$ d'une espèce chimique. Préciser l'unité de chaque grandeur.

  *3.* On dissout un échantillon de sucre (saccharose) de masse m = 17,1 g dans de 250 mL d'eau. Calculer la quantité de matière de saccharose contenue dans cet échantillon.

  *4.* En déduire le nombre de molécules de saccharose présentes dans l'échantillon.

  #v(0.3em)
  *B. L'éthanol*

  On prélève un volume V = 25,0 mL d'éthanol liquide, de masse volumique $rho_("éthanol")$.

  *5.* Rappeler la relation entre la masse volumique $rho$, la masse $m$ et le volume $V$.

  *6.* Calculer la masse d'éthanol contenue dans l'échantillon prélevé.

  *7.* Calculer la quantité de matière d'éthanol correspondante.
]

#exercice[
  *Un gaz et une solution*

  #v(0.3em)
  *A. Le dioxygène*

  *Donnée :* $V_m = qty("24,0","L/mol")$

  On remplit un ballon avec un volume V = 2,40 L de dioxygène gazeux, dans les conditions où le volume molaire vaut $V_m$.

  *1.* Rappeler la relation entre la quantité de matière $n$ d'un gaz, son volume $V$ et le volume molaire $V_m$.

  *2.* Calculer la quantité de matière de dioxygène contenue dans le ballon.

  *3.* En déduire la masse de dioxygène correspondante.

  #v(0.3em)
  *B. Une solution de glucose*

  On dissout une masse m = 6,0 g de glucose dans de l'eau de façon à obtenir un volume V = 250 mL de solution.

  *4.* Rappeler la définition et la relation de la concentration massique $c_m$ d'une espèce dissoute. Préciser son unité usuelle.

  *5.* Calculer la concentration massique en glucose de la solution obtenue.

  *6.* On prélève un volume V' = 50 mL de cette solution. Quelle masse de glucose ce prélèvement contient-il ?
]
