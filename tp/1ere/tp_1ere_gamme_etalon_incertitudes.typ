#import "../../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf
#chapitre[TP — Gamme étalon et incertitudes - 1ère]

*Contexte* : le permanganate de potassium $"KMnO"_4$ colore une solution en violet et absorbe fortement vers $lambda = 525$ nm. On construit une gamme étalon pour vérifier la loi de Beer-Lambert ($A = k dot c$), où $k$ est une constante caractéristique de l'espèce étudiée et de la cuve), déterminer la concentration $C_x$ d'une solution inconnue, puis évaluer l'incertitude sur cette concentration.


*Matériel par binôme* : 2 fioles jaugées 50 mL, pipettes jaugées 5/10/20 mL + propipette, béchers, spectrophotomètre + cuves, ordinateur (tableur).

= Préparation de la gamme étalon

On dilue la solution mère $C_0 = 5,0 times 10^(-4)$ mol/L dans des fioles jaugées de 50 mL. 
- *Chaque binôme prépare* uniquement $S_4$ (commune à tous, utilisée aussi pour repérer $lambda_"max"$) et une seconde solution qui lui est propre, selon sa position dans la colonne de paillasses.

#table(
  columns: (1.3fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  [Colonne de 5], [P1], [P2], [P3], [P4], [P5],
  [Seconde solution], [$S_1$], [$S_2$], [$S_3$], [$S_5$], [$S_3$],
)

#table(
  columns: (1.3fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  [Colonne de 4], [P1], [P2], [P3], [P4],
  [Seconde solution], [$S_1$], [$S_2$], [$S_3$], [$S_5$],
)

//(P5 prépare de nouveau $S_3$ : de quoi comparer deux préparations indépendantes de la même concentration.)

Une fois les absorbances mesurées (partie III), chaque binôme reporte ses 2 valeurs ($S_4$ et sa solution) au tableau.

#travail[
  + Pour $S_4$ ($C_4 = 3,0 times 10^(-4)$ mol/L), montrer que le volume de $C_0$ à prélever est $V_4 = 30,0$ mL.
  + Calculer de même le volume à prélever pour la solution qui vous est attribuée, et compléter le tableau ci-dessous.
  + Schématiser la préparation de $S_4$.
]

#table(
  columns: (1.6fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  [], [$S_1$], [$S_2$], [$S_3$], [$S_4$], [$S_5$],
  [$C_i$ (mol/L)], [$0,50 times 10^(-4)$], [$1,0 times 10^(-4)$], [$2,0 times 10^(-4)$], [$3,0 times 10^(-4)$], [$4,0 times 10^(-4)$],
  [$V(C_0)$ prélevé (mL)], [], [], [], [$30,0$], [],
)

*Protocole* : rincer chaque fiole à l'eau distillée et chaque pipette avec la solution qu'elle prélève ; prélever $V_i$ de $C_0$, compléter à 50 mL avec de l'eau distillée, boucher et homogénéiser.

= Choix de la longueur d'onde de travail

#experience[
  Faire le blanc (avec de l'eau distillée) puis mesurer l'absorbance de $S_4$  tous les 25 nm entre 400 et 700 nm. Tracer $A = f(lambda)$ et relever $lambda_"max"$, longueur d'onde utilisée pour la suite du TP.
]

$lambda_"max" =$ .......... nm

#pagebreak()
= Droite d'étalonnage

#experience[
  - Étalonner le spectrophotomètre à $lambda_"max"$ avec le blanc. 
  - Mesurer l'absorbance de vos deux solutions ($S_4$ et celle qui vous est attribuée), puis de la solution inconnue $C_x$ (rincer la cuve avec la solution avant chaque mesure). 
  - Reporter vos valeurs sur le tableau commun de la colonne.
]

#table(
  columns: (1.6fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  [], [$S_1$], [$S_2$], [$S_3$], [$S_4$], [$S_5$], [$C_x$],
  [$C$ (mol/L)], [$0,50 times 10^(-4)$], [$1,0 times 10^(-4)$], [$2,0 times 10^(-4)$], [$3,0 times 10^(-4)$], [$4,0 times 10^(-4)$], [?],
  [$A$ mesurée], [], [], [], [], [], [],
  [$k_i = A \/ C$ (L·mol⁻¹)], [], [], [], [], [], [—],
)

#travail[
  + Calculer, pour chaque solution de la gamme, le rapport $k_i = A \/ C$ et compléter la dernière ligne du tableau.
  + Calculer la moyenne des valeurs de k notée $k_("moy")$
  + La grandeur $A$ est-elle proportionnelle à $C$ ? Justifier brièvement.
  + Tracer $A = f(C)$ au tableur ; ajouter la droite de régression passant par l'origine, et relever sa pente $k$. Vérifier que $k$ est très proche de $k_("moy")$
  + En déduire $ C_x = A_x / k_("moy") $
]

= Incertitude sur la concentration inconnue (évaluation de type A)

- Chaque binôme calcule sa propre valeur de $C_x = A_x \/ k_("moy")$ (partie III), à partir de sa mesure d'absorbance. 
- Chaque binôme mutualise au tableau sa valeur de $C_x$.

#travail[
  + Recopier au tableur les $n$ valeurs de $C_x$ obtenues par tous les binômes de la classe.
  + Calculer la moyenne $overline(C_x) = 1/n sum_i C_(x,i)$ et l'écart-type $s = sqrt(1/(n-1) sum_i (C_(x,i) - overline(C_x))^2)$.
  + En déduire l'incertitude-type de la moyenne : $ u(C_x) = s / sqrt(n) $
  
  + Écrire le résultat avec le bon nombre de chiffres significatifs : $C_x = overline(C_x) plus.minus u(C_x)$.
]

= Synthèse

#travail[
  + La loi de Beer-Lambert est-elle vérifiée par vos mesures ? Justifier.
  + Pourquoi une mesure isolée d'absorbance ne suffit-elle pas pour estimer une incertitude ?
  + Que devient $u(C_x)$ si on double le nombre de binômes de la classe ?
]
