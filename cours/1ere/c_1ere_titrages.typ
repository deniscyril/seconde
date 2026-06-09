#import "../_assets/template_physique.typ": *

#show: conf

#chapitre[Titrage avec suivi colorimétrique]

= Principe d'un titrage

== Définitions

#définition[
  Un *dosage* consiste à déterminer la concentration (ou la quantité de matière) inconnue d'une espèce chimique en solution.

  Un *dosage par titrage* repose sur une réaction chimique entre l'espèce à doser et une espèce de concentration connue.

  - L'*espèce titrée* (notée A) est l'espèce dont la concentration $C_A$ est inconnue. On en prélève un volume $V_A$ précis à la *pipette jaugée* dans un bécher.
  - L'*espèce titrante* (notée B) est l'espèce dont la concentration $C_B$ est connue. On la verse progressivement depuis une *burette graduée*.
]

== Montage expérimental

#experience[
  *Réaliser un titrage colorimétrique*

  Le montage comporte :
  - un *bécher* contenant la solution titrée (volume $V_A$) et éventuellement quelques gouttes d'indicateur coloré ;
  - une *burette graduée* remplie de solution titrante ($C_B$ connue), fixée sur une potence ;
  - un *agitateur magnétique* (+ barreau aimanté) pour homogénéiser la solution en continu.

  *Protocole :* on verse la solution titrante *goutte à goutte* en agitant. On surveille la couleur de la solution et on repère le *changement de couleur permanent* : c'est l'équivalence.

  *Précautions :* lire la burette par le bas du ménisque ; rincer la burette avec la solution titrante avant remplissage ; approcher l'équivalence très lentement (demi-goutte).
]

= Réaction de titrage

#définition[
  La *réaction de titrage* est la réaction entre A (titrée) et B (titrante). Pour être exploitable, elle doit être :
  - *Totale* : elle va jusqu'à l'épuisement complet du réactif limitant ;
  - *Rapide* : pratiquement instantanée à chaque ajout de titrant ;
  - *Unique* : pas de réaction parasite qui fausse le résultat.
]

#important[
  Dans ce chapitre, la réaction de titrage est une *réaction d'oxydoréduction* : l'espèce titrante est l'oxydant (ou le réducteur) et l'espèce titrée est l'autre.
]

#exemple[
  Écrire la réaction de titrage des ions $"Fe"^(2+)$ (titrés) par les ions $"MnO"_4^-$ (titrants) en milieu acide.

  Couples : $"MnO"_4^-\/"Mn"^(2+)$ et $"Fe"^(3+)\/"Fe"^(2+)$. Réactifs : $"MnO"_4^-$ et $"Fe"^(2+)$.

  Demi-équations (réactifs à gauche) :

  $"MnO"_4^- + 8 "H"^+ + 5 e^- = "Mn"^(2+) + 4 "H"_2"O"$ #h(1em) (×1)

  $"Fe"^(2+) = "Fe"^(3+) + e^-$ #h(1em) (×5)

  $ "MnO"_4^- + 8 "H"^+ + 5 "Fe"^(2+) arrow.r "Mn"^(2+) + 4 "H"_2"O" + 5 "Fe"^(3+) $

  Cette réaction est totale, rapide et unique : elle convient pour un titrage.
]

= Équivalence et volume équivalent

== Définition

#définition[
  L'*équivalence* est le moment du titrage où les réactifs A et B ont été introduits exactement en *proportions stœchiométriques* : ils sont épuisés simultanément.

  Le *volume équivalent $V_E$* est le volume de solution titrante versé à l'équivalence.
]

== Lien avec le réactif limitant

#important[
  Pour la réaction $a A + b B arrow.r$ produits (A dans le bécher, B dans la burette) :

  #table(
    columns: (2fr, 2fr, 3fr),
    align: (center, center, left),
    stroke: (x, y) => if y == 0 { (bottom: 1pt) } else { none },
    inset: (x: 0.5em, y: 0.4em),
    [*Volume versé $V_B$*], [*Réactif limitant*], [*Ce qui se passe*],
    [$V_B < V_E$], [B (titrant)], [Tout B versé est consommé ; A est en excès],
    [$V_B = V_E$], [A et B simultanément], [Mélange stœchiométrique — *équivalence*],
    [$V_B > V_E$], [A (titré)], [A entièrement consommé ; B en excès],
  )

  *Avant $V_E$ :* B est le réactif limitant → tout le titrant ajouté réagit instantanément.

  *Après $V_E$ :* A est épuisé → le titrant s'accumule dans le bécher.
]

== Relation quantitative à l'équivalence

#important[
  À l'équivalence, les réactifs A et B ont été introduits en proportions stœchiométriques :

  $ n_A / a = n_B / b $

  Or $n_A = C_A V_A$ (solution titrée) et $n_B = C_B V_E$ (solution titrante versée), donc :

  $ (C_A V_A) / a = (C_B V_E) / b $

  D'où la concentration de l'espèce titrée :

  $ C_A = a/b times (C_B V_E) / V_A $
]

#application[
  On titre $V_A = qty("10,0", "mL")$ d'une solution d'ions $"Fe"^(2+)$ de concentration inconnue $C_A$ avec une solution de permanganate de potassium à $C_B = qty("1,0e-2", "mol/L")$. L'équivalence est atteinte pour $V_E = qty("12,5", "mL")$.

  Réaction : $"MnO"_4^- + 8 "H"^+ + 5 "Fe"^(2+) arrow.r "Mn"^(2+) + 4 "H"_2"O" + 5 "Fe"^(3+)$

  + Identifier A et B. Donner les coefficients stœchiométriques $a$ (pour $"Fe"^(2+)$) et $b$ (pour $"MnO"_4^-$).
  + Appliquer la relation à l'équivalence et calculer $C_A$.

  *Correction :*

  + A = $"Fe"^(2+)$ (titré, $a = 5$) ; B = $"MnO"_4^-$ (titrant, $b = 1$).

  + $ (C_A V_A) / 5 = (C_B V_E) / 1 arrow.r C_A = 5 times (C_B V_E) / V_A $

    A.N. : $C_A = 5 times (1,0 times 10^(-2) times 12,5 times 10^(-3)) / (10,0 times 10^(-3)) = qty("6,3e-2", "mol/L")$
]

= Repérage colorimétrique de l'équivalence

== Permanganate de potassium — titrant auto-indicateur

#important[
  Le permanganate de potassium $"KMnO"_4$ est souvent utilisé comme titrant car il est *auto-indicateur* :

  #table(
    columns: (2fr, 3fr),
    align: (left, left),
    stroke: none,
    inset: (x: 0.5em, y: 0.3em),
    [Ions $"MnO"_4^-$], [couleur *violette* intense],
    [Ions $"Mn"^(2+)$ (produit)], [*incolores* (quasi-transparents)],
  )

  - *Avant $V_E$ :* B est le réactif limitant → tout $"MnO"_4^-$ versé est consommé. La solution *reste incolore* (ou garde la couleur de A s'il est coloré).
  - *À $V_E$ :* la première goutte de $"MnO"_4^-$ en excès n'est plus consommée → la solution prend une *teinte rose pâle persistante* : c'est le repère de l'équivalence.
  - *Après $V_E$ :* la couleur violette s'intensifie progressivement.
]

== Indicateurs colorés

#définition[
  Un *indicateur coloré* est une espèce chimique ajoutée en très faible quantité à la solution titrée. Sa couleur change brusquement au voisinage de l'équivalence.

  *Empois d'amidon* — utilisé pour les titrages faisant intervenir le diiode $"I"_2$ :

  #table(
    columns: (2fr, 3fr),
    align: (left, left),
    stroke: none,
    inset: (x: 0.5em, y: 0.3em),
    [En présence de $"I"_2$], [couleur *bleu-noir* intense],
    [En absence de $"I"_2$], [*incolore*],
  )

  À l'équivalence, quand tout $"I"_2$ est consommé (ou qu'il apparaît selon le sens), la solution passe brusquement de bleu-noir à incolore (ou inversement).
]

#application[
  *Dosage d'un antiseptique au diiode*

  Un antiseptique contient du diiode $"I"_2$ dissous. On titre $V_A = qty("20,0", "mL")$ de cet antiseptique (concentration $C_A$ inconnue) avec du thiosulfate de sodium à $C_B = qty("5,0e-2", "mol/L")$, en présence d'empois d'amidon. L'équivalence est atteinte pour $V_E = qty("12,0", "mL")$.

  Réaction : $"I"_2 + 2 "S"_2"O"_3^(2-) arrow.r 2 "I"^- + "S"_4"O"_6^(2-)$

  Couples : $"I"_2\/"I"^-$ et $"S"_4"O"_6^(2-)\/"S"_2"O"_3^(2-)$.

  + Identifier A et B. Donner $a$ et $b$.
  + Décrire la couleur de la solution *avant* et *à* l'équivalence.
  + Calculer la concentration $C_A$ en diiode.

  *Correction :*

  + A = $"I"_2$ (titré, $a = 1$) ; B = $"S"_2"O"_3^(2-)$ (titrant, $b = 2$).

  + *Avant $V_E$ :* la solution contient $"I"_2$ en excès → l'amidon la colore en *bleu-noir*. *À $V_E$ :* tout $"I"_2$ est consommé → la solution passe brusquement à l'*incolore* de façon persistante.

  + $ (C_A V_A) / 1 = (C_B V_E) / 2 arrow.r C_A = 1/2 times (C_B V_E) / V_A $

    A.N. : $C_A = 1/2 times (5,0 times 10^(-2) times 12,0 times 10^(-3)) / (20,0 times 10^(-3)) = qty("1,5e-2", "mol/L")$
]

= Tableau récapitulatif

#important[
  #align(center)[
    #table(
      columns: (2fr, 3.5fr, 1fr),
      align: (left, left, center),
      stroke: (x, y) => if y == 0 { (bottom: 1pt) } else { none },
      inset: (x: 0.5em, y: 0.4em),
      [*Notion*], [*À retenir*], [*Exos*],
      [Espèce titrée A], [Concentration $C_A$ inconnue — prélevée à la pipette jaugée ($V_A$)], [1, 2],
      [Espèce titrante B], [Concentration $C_B$ connue — versée par la burette], [1, 2],
      [Réaction de titrage], [Totale, rapide, unique (redox ici)], [1, 2, 3],
      [Volume équivalent $V_E$], [Volume de titrant versé à l'équivalence], [3, 4, 5, 6],
      [Équivalence], [Mélange stœchiométrique : $n_A\/a = n_B\/b$], [2, 3, 4, 5],
      [Relation à l'équivalence], [$C_A V_A \/ a = C_B V_E \/ b$], [3, 4, 5, 6, 7],
      [Permanganate auto-indicateur], [$"MnO"_4^-$ violet ; rose pâle persistant à $V_E$], [3, 4, 5],
      [Empois d'amidon], [Bleu-noir en présence de $"I"_2$ ; incolore sans $"I"_2$], [6, 7],
    )
  ]
]

// ─────────────────────────────────────────────────────────────────────────────
#chapitre[Exercices — Titrage avec suivi colorimétrique]

#exercice[
  *Identifier les espèces et le montage*

  On souhaite titrer une solution de permanganate de potassium ($"MnO"_4^-$, violet) de concentration inconnue, avec une solution d'acide oxalique $("H"_2"C"_2"O"_4)$ de concentration $C_B = qty("5,0e-2", "mol/L")$.

  Réaction : $2 "MnO"_4^- + 5 "H"_2"C"_2"O"_4 + 6 "H"^+ arrow.r 2 "Mn"^(2+) + 10 "CO"_2 + 8 "H"_2"O"$

  + Identifier l'espèce titrée A et l'espèce titrante B.
  + Indiquer dans quel récipient verse-t-on chaque solution et quel matériel volumétrique utilise-t-on pour les prélever ou les verser.
  + Décrire la couleur de la solution dans le bécher *avant*, *à* et *après* l'équivalence. (Remarque : $"H"_2"C"_2"O"_4$ et $"Mn"^(2+)$ sont incolores.)
]

#exercice[
  *Lien avec le tableau d'avancement*

  On titre $n_A^0 = qty("2,5e-3", "mol")$ d'ions $"Fe"^(2+)$ (dans le bécher) avec une solution de $"MnO"_4^-$ à $C_B = qty("2,0e-2", "mol/L")$.

  Réaction : $"MnO"_4^- + 8 "H"^+ + 5 "Fe"^(2+) arrow.r "Mn"^(2+) + 4 "H"_2"O" + 5 "Fe"^(3+)$ #h(1em) ($a=5$, $b=1$)

  + Calculer le volume équivalent $V_E$ (utiliser la relation à l'équivalence).
  + Dresser un tableau d'avancement pour $V_B = qty("10,0", "mL")$. Calculer les quantités de matière à l'état final. Quel est le réactif limitant ?
  + Même question pour $V_B = qty("30,0", "mL")$.
  + Comment s'appellent les situations décrites en 2. et 3. par rapport à l'équivalence ?
]

#exercice[
  *Contrôle qualité d'un médicament à base de fer*

  Un comprimé de sulfate ferreux ($"FeSO"_4$, $M = qty("152", "g/mol")$) est dissous dans de l'acide sulfurique dilué, puis la solution est complétée à $qty("100", "mL")$. On titre $V_A = qty("20,0", "mL")$ de cette solution avec du permanganate de potassium à $C_B = qty("2,0e-2", "mol/L")$. L'équivalence est atteinte pour $V_E = qty("8,2", "mL")$.

  Réaction : $"MnO"_4^- + 8 "H"^+ + 5 "Fe"^(2+) arrow.r "Mn"^(2+) + 4 "H"_2"O" + 5 "Fe"^(3+)$

  + Calculer la concentration $C_A$ en ions $"Fe"^(2+)$ dans la solution titrée ($a=5$, $b=1$).
  + En déduire la quantité de matière totale de $"FeSO"_4$ dans les $qty("100", "mL")$.
  + Calculer la masse de $"FeSO"_4$ dans le comprimé. Comparer à la valeur affichée sur la boîte : $m_"annoncée" = qty("200", "mg")$. Conclure.
]

#exercice[
  *Eau oxygénée à 10 volumes*

  Une solution commerciale d'eau oxygénée « à 10 volumes » produit, lors de sa décomposition, 10 fois son volume en dioxygène $"O"_2$. Pour vérifier ce titre, on dilue la solution commerciale 10 fois, puis on titre $V_A = qty("10,0", "mL")$ de cette solution diluée avec du permanganate de potassium à $C_B = qty("1,0e-2", "mol/L")$. L'équivalence est atteinte pour $V_E = qty("9,8", "mL")$.

  Réaction : $2 "MnO"_4^- + 5 "H"_2"O"_2 + 6 "H"^+ arrow.r 2 "Mn"^(2+) + 5 "O"_2 + 8 "H"_2"O"$

  ($a = 5$ pour $"H"_2"O"_2$, $b = 2$ pour $"MnO"_4^-$)

  + Quelle observation expérimentale permet de repérer l'équivalence ?
  + Calculer $C_A$, la concentration en $"H"_2"O"_2$ dans la solution *diluée*.
  + En déduire la concentration $C_0$ de la solution commerciale.
  + La décomposition de $"H"_2"O"_2$ suit : $2 "H"_2"O"_2 arrow.r 2 "H"_2"O" + "O"_2$. Calculer le volume de $"O"_2$ (en L, à température ambiante) produit par 1 L de solution commerciale. Conclure sur le titre « 10 volumes ». On donne $V_m = qty("24", "L/mol")$.
]

#exercice[
  *Vitamine C*

  L'acide ascorbique (vitamine C, $"C"_6"H"_8"O"_6$, $M = qty("176", "g/mol")$) est un réducteur. On dissout un comprimé de vitamine C dans de l'eau distillée et on complète à $qty("100", "mL")$. On titre $V_A = qty("10,0", "mL")$ de cette solution avec du diiode à $C_B = qty("5,0e-2", "mol/L")$, en présence d'empois d'amidon. L'équivalence est atteinte pour $V_E = qty("11,4", "mL")$.

  Réaction : $"C"_6"H"_8"O"_6 + "I"_2 arrow.r "C"_6"H"_6"O"_6 + 2 "H"^+ + 2 "I"^-$

  + Identifier A et B. Donner $a$ et $b$.
  + Décrire le changement de couleur à l'équivalence.
  + Calculer la concentration $C_A$ en acide ascorbique.
  + En déduire la masse de vitamine C dans le comprimé. Comparer à la valeur indiquée : $qty("500", "mg")$.
]

#exercice[
  *Évolution des quantités de matière au cours d'un titrage*

  On titre $V_A = qty("20,0", "mL")$ d'une solution d'ions $"Fe"^(2+)$ à $C_A = qty("4,0e-2", "mol/L")$, avec du permanganate de potassium à $C_B = qty("2,0e-2", "mol/L")$.

  Réaction : $"MnO"_4^- + 8 "H"^+ + 5 "Fe"^(2+) arrow.r "Mn"^(2+) + 4 "H"_2"O" + 5 "Fe"^(3+)$ #h(1em) ($a=5$, $b=1$)

  + Calculer $n_A^0 = n("Fe"^(2+))_"initial"$ et le volume équivalent $V_E$.
  + Pour les volumes versés $V_B$ = 0 ; 5,0 ; 10,0 ; $V_E$ ; 20,0 mL, calculer $n("Fe"^(2+))_"restant"$ à chaque étape.
  + Tracer qualitativement $n("Fe"^(2+))$ en fonction de $V_B$ entre 0 et 20 mL. Quelle est la forme de la courbe ?
  + Que vaut $n("Fe"^(2+))$ après l'équivalence ? Expliquer.
]

#exercice[
  *Teneur en fer d'une eau minérale*

  L'étiquette d'une eau minérale indique une teneur en fer de $qty("0,10", "mg/L")$. Pour vérifier, on prélève $V_A = qty("100", "mL")$ de cette eau et on titre les ions $"Fe"^(2+)$ avec du permanganate de potassium à $C_B = qty("5,0e-4", "mol/L")$. L'équivalence est atteinte pour $V_E = qty("1,20", "mL")$.

  Réaction : $"MnO"_4^- + 8 "H"^+ + 5 "Fe"^(2+) arrow.r "Mn"^(2+) + 4 "H"_2"O" + 5 "Fe"^(3+)$

  Masse molaire : $M_"Fe" = qty("56", "g/mol")$.

  + Calculer la concentration $C_A$ en mol/L de $"Fe"^(2+)$ dans l'eau ($a=5$, $b=1$).
  + Convertir $C_A$ en mg/L. Comparer à la valeur de l'étiquette.
  + On sait que l'OMS fixe la limite acceptable de fer dans l'eau de boisson à $qty("0,30", "mg/L")$. Conclure.
]

#exercice[
  *Défi — Dosage indirect de l'eau de Javel*

  #text(style: "italic")[
    L'eau de Javel contient des ions hypochlorite $"ClO"^-$, un oxydant fort. On ne peut pas les titrer directement, car ils oxydent le titrant avant même d'être dans le bécher. On utilise un *titrage indirect* en deux étapes.
  ]

  *Protocole :* on dilue 20 fois l'eau de Javel commerciale. On prélève $V_0 = qty("10,0", "mL")$ de cette solution diluée dans un bécher. On ajoute un excès d'ions iodure $"I"^-$ (incolores) et on acidifie.

  *Étape 1 — Réaction de préparation :*
  $ "ClO"^- + 2 "I"^- + 2 "H"^+ arrow.r "Cl"^- + "I"_2 + "H"_2"O" $
  Tout le $"ClO"^-$ réagit avec l'excès d'$"I"^-$ pour produire du $"I"_2$.

  *Étape 2 — Titrage du $"I"_2$ formé :*

  On titre le $"I"_2$ produit avec du thiosulfate de sodium à $C_B = qty("0,10", "mol/L")$, en présence d'empois d'amidon. $V_E = qty("7,6", "mL")$.

  $ "I"_2 + 2 "S"_2"O"_3^(2-) arrow.r 2 "I"^- + "S"_4"O"_6^(2-) $

  + Décrire le changement de couleur à l'équivalence de l'étape 2.
  + Calculer la quantité de matière $n("I"_2)$ dosée à l'étape 2 ($a=1$, $b=2$ pour le thiosulfate).
  + D'après l'étape 1, en déduire la quantité de $"ClO"^-$ dans le prélèvement $V_0$.
  + Calculer la concentration en $"ClO"^-$ de la solution commerciale.
  + L'étiquette indique une concentration de $qty("0,38", "mol/L")$. Comparer et commenter.
]
