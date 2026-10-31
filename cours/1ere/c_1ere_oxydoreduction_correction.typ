#import "../../_assets/template_physique.typ": *

#show: conf

#chapitre[Oxydoréduction — Fiche résumé]

= Oxydant, réducteur, oxydation, réduction

#définition[
  #table(
    columns: (1fr, 1fr),
    align: left,
    stroke: (x, y) => if y == 0 { (bottom: 1pt) } else if x == 0 { (right: 0.5pt) } else { none },
    inset: (x: 0.5em, y: 0.45em),
    [*Des espèces chimiques…*], [*… et des transformations*],
    [Un *oxydant* est une espèce capable de *gagner* (capter) des électrons.],
    [Une *réduction* est un *gain* d'électrons. L'oxydant *se réduit* : $"Ox" + n e^- arrow.r "Red"$],
    [Un *réducteur* est une espèce capable de *perdre* (céder) des électrons.],
    [Une *oxydation* est une *perte* d'électrons. Le réducteur *s'oxyde* : $"Red" arrow.r "Ox" + n e^-$],
  )
]

#important[
  *Ne pas confondre :* l'*oxydant* est une espèce chimique, l'*oxydation* est une transformation.
  - L'oxydant *subit une réduction* (il gagne des électrons) : il *n'est pas* oxydé.
  - Le réducteur *subit une oxydation* (il perd des électrons) : il *n'est pas* réduit.

  Les électrons cédés par le réducteur sont captés par l'oxydant : oxydation et réduction ont toujours lieu *simultanément*.
]

#exemple[
  Arbre de Diane : $"Cu" + 2 "Ag"^+ arrow.r "Cu"^(2+) + 2 "Ag"$
  - Cu est le *réducteur* : il *s'oxyde* en $"Cu"^(2+)$ (oxydation : $"Cu" arrow.r "Cu"^(2+) + 2 e^-$).
  - $"Ag"^+$ est l'*oxydant* : il *se réduit* en Ag (réduction : $"Ag"^+ + e^- arrow.r "Ag"$).
]

= Couple oxydant/réducteur et demi-équation électronique

#définition[
  Un couple $"Ox"\/"Red"$ est relié par une *demi-équation électronique* : $quad "Ox" + n e^- = "Red"$

  Le signe $=$ indique que l'échange peut se faire dans les deux sens : gauche → droite = *réduction* ; droite → gauche = *oxydation*. Les électrons sont toujours du côté de l'oxydant.
]

= Méthodes

#grid(columns: (1fr, 1fr), column-gutter: 0.8em,
  important[
    *Écrire une demi-équation :*
    + Ox à gauche, Red à droite, séparés par $=$
    + Équilibrer les atomes autres que O et H
    + Équilibrer O avec des molécules $"H"_2"O"$
    + Équilibrer H avec des ions $"H"^+$
    + Équilibrer les charges avec des $e^-$ (côté oxydant)

    Ex. : $"MnO"_4^- + 8 "H"^+ + 5 e^- = "Mn"^(2+) + 4 "H"_2"O"$
  ],
  important[
    *Établir l'équation bilan :*
    + Identifier les couples et les *réactifs* (espèces qui disparaissent)
    + Écrire chaque demi-équation avec le *réactif à gauche*
    + Multiplier pour avoir le *même nombre d'électrons*
    + Additionner et simplifier : *aucun électron* dans le bilan ; simplifier les $"H"^+$ ou $"H"_2"O"$ présents des deux côtés
  ],
)

*Rappels :* #h(1em) $n = m / M$ #h(1.5em) $n = C times V$ #h(1.5em) $n = V_"gaz" / V_m$ #h(1.5em) $C_m = C times M$ #h(1.5em) dilution : $C_"mère" = F times C_"fille"$

// ─────────────────────────────────────────────────────────────────────────────
#chapitre[Oxydoréduction — Correction des exercices]

#exercice[
  *Identifier oxydant et réducteur*

  + Le dépôt rougeâtre est du cuivre Cu : les ions $"Cu"^(2+)$ ont *gagné* des électrons. $"Cu"^(2+)$ est donc l'*oxydant* (il se réduit). Les électrons ont été cédés par le fer : Fe est le *réducteur* (il s'oxyde en $"Fe"^(2+)$). La disparition de la teinte bleue confirme la consommation des ions $"Cu"^(2+)$.
  + Réactifs : $"Cu"^(2+)$ et Fe. #linebreak()
    $"Cu"^(2+) + 2 e^- = "Cu"$ (réduction) #h(2em) $"Fe" = "Fe"^(2+) + 2 e^-$ (oxydation)
  + Même nombre d'électrons (2) : on additionne directement.
    $ "Fe" + "Cu"^(2+) arrow.r "Fe"^(2+) + "Cu" $
]

#exercice[
  *Demi-équations — couples simples*

  #grid(columns: (1fr, 1fr), row-gutter: 0.8em,
    [1. $"Zn"^(2+) + 2 e^- = "Zn"$], [2. $"I"_2 + 2 e^- = 2 "I"^-$],
    [3. $"Br"_2 + 2 e^- = 2 "Br"^-$], [4. $"Sn"^(4+) + 2 e^- = "Sn"^(2+)$],
  )
]

#exercice[
  *Demi-équations — couples avec oxygène*

  + O : 4 à gauche → $4 "H"_2"O"$ à droite ; H : 8 à droite → $8 "H"^+$ à gauche ; charges : $-1 + 8 = +7$ à gauche, $+2$ à droite → $5 e^-$.
    $ "MnO"_4^- + 8 "H"^+ + 5 e^- = "Mn"^(2+) + 4 "H"_2"O" $
  + Cr : 2 à gauche → $2 "Cr"^(3+)$ ; O : 7 → $7 "H"_2"O"$ à droite ; H : 14 → $14 "H"^+$ à gauche ; charges : $-2 + 14 = +12$ à gauche, $2 times (+3) = +6$ à droite → $6 e^-$.
    $ "Cr"_2"O"_7^(2-) + 14 "H"^+ + 6 e^- = 2 "Cr"^(3+) + 7 "H"_2"O" $
  + O : 2 à gauche → $2 "H"_2"O"$ à droite ; H : 2 à gauche, 4 à droite → $2 "H"^+$ à gauche ; charges : $+2$ à gauche, 0 à droite → $2 e^-$.
    $ "H"_2"O"_2 + 2 "H"^+ + 2 e^- = 2 "H"_2"O" $
  + O : 3 à gauche, 1 à droite → $2 "H"_2"O"$ à droite ; H : 4 à droite → $4 "H"^+$ à gauche ; charges : $-1 + 4 = +3$ à gauche, 0 à droite → $3 e^-$.
    $ "NO"_3^- + 4 "H"^+ + 3 e^- = "NO" + 2 "H"_2"O" $
]

#exercice[
  *Équations bilan — réactions directes*

  + Réactifs $"Fe"^(3+)$ et $"I"^-$ ($"I"_2$ se forme). #linebreak()
    $"Fe"^(3+) + e^- = "Fe"^(2+)$ (×2) #h(2em) $2 "I"^- = "I"_2 + 2 e^-$ (×1)
    $ 2 "Fe"^(3+) + 2 "I"^- arrow.r 2 "Fe"^(2+) + "I"_2 $
    Oxydant : $"Fe"^(3+)$ (il se réduit) ; réducteur : $"I"^-$ (il s'oxyde).

  + Réactifs Al et $"Cu"^(2+)$. #linebreak()
    $"Al" = "Al"^(3+) + 3 e^-$ (×2) #h(2em) $"Cu"^(2+) + 2 e^- = "Cu"$ (×3) #h(1em) → 6 électrons échangés
    $ 2 "Al" + 3 "Cu"^(2+) arrow.r 2 "Al"^(3+) + 3 "Cu" $
    Oxydant : $"Cu"^(2+)$ ; réducteur : Al.

  + Réactifs $"Cr"_2"O"_7^(2-)$ et $"Fe"^(2+)$. #linebreak()
    $"Cr"_2"O"_7^(2-) + 14 "H"^+ + 6 e^- = 2 "Cr"^(3+) + 7 "H"_2"O"$ (×1) #h(2em) $"Fe"^(2+) = "Fe"^(3+) + e^-$ (×6)
    $ "Cr"_2"O"_7^(2-) + 14 "H"^+ + 6 "Fe"^(2+) arrow.r 2 "Cr"^(3+) + 7 "H"_2"O" + 6 "Fe"^(3+) $
    Oxydant : $"Cr"_2"O"_7^(2-)$ ; réducteur : $"Fe"^(2+)$.
]

#exercice[
  *La corrosion du fer*

  + Le fer disparaît en formant des ions $"Fe"^(2+)$ : il perd des électrons, Fe est le *réducteur* (il s'oxyde). Ces électrons sont captés par $"O"_2$, qui est l'*oxydant* (il se réduit en $"H"_2"O"$). #linebreak()
    $"O"_2 + 4 "H"^+ + 4 e^- = 2 "H"_2"O"$ (×1) #h(2em) $"Fe" = "Fe"^(2+) + 2 e^-$ (×2)
    $ 2 "Fe" + "O"_2 + 4 "H"^+ arrow.r 2 "Fe"^(2+) + 2 "H"_2"O" $
  + $n_"Fe" = m / M_"Fe"$ #h(1em) A.N. : $n_"Fe" = (3","5) / (55","8) = qty("6,3e-2", "mol")$
  + L'air contient 21 % de dioxygène en volume : $V_("O"_2) = 0","21 times V_"air"$ #linebreak()
    A.N. : $V_("O"_2) = 0","21 times 0","50 = qty("0,105", "L")$ #linebreak()
    $n_("O"_2) = V_("O"_2) / V_m$ #h(1em) A.N. : $n_("O"_2) = (0","105) / 24 = qty("4,4e-3", "mol")$
]

#exercice[
  *Permanganate et eau oxygénée*

  + Réactifs $"MnO"_4^-$ (oxydant) et $"H"_2"O"_2$ (réducteur). #linebreak()
    $"MnO"_4^- + 8 "H"^+ + 5 e^- = "Mn"^(2+) + 4 "H"_2"O"$ (×2) #h(2em) $"H"_2"O"_2 = "O"_2 + 2 "H"^+ + 2 e^-$ (×5) #linebreak()
    Addition, puis simplification des $"H"^+$ ($16 "H"^+$ à gauche, $10 "H"^+$ à droite → il reste $6 "H"^+$ à gauche) :
    $ 2 "MnO"_4^- + 6 "H"^+ + 5 "H"_2"O"_2 arrow.r 2 "Mn"^(2+) + 5 "O"_2 + 8 "H"_2"O" $
    *Observations :* un *dégagement gazeux* (dioxygène $"O"_2$) et une *décoloration* de la solution violette, car les ions $"MnO"_4^-$ (violets) sont consommés et remplacés par des ions $"Mn"^(2+)$ (incolores).
  + $n_1 = C_1 times V_1$ #h(1em) A.N. : $n_1 = 2","0 times 10^(-2) times 12","0 times 10^(-3) = qty("2,4e-4", "mol")$
  + $M_("H"_2"O"_2) = 2 M_"H" + 2 M_"O" = 2 times 1","0 + 2 times 16","0 = qty("34,0", "g/mol")$ #linebreak()
    $C_2 = C_(m,2) / M_("H"_2"O"_2)$ #h(1em) A.N. : $C_2 = (1","7) / (34","0) = qty("5,0e-2", "mol/L")$ #linebreak()
    $n_2 = C_2 times V_2$ #h(1em) A.N. : $n_2 = 5","0 times 10^(-2) times 10","0 times 10^(-3) = qty("5,0e-4", "mol")$
  + Diluer 10 fois signifie que le facteur de dilution vaut $F = C_0 / C_2 = 10$, donc $C_0 = F times C_2$. #linebreak()
    A.N. : $C_0 = 10 times 5","0 times 10^(-2) = qty("0,50", "mol/L")$

  _Remarque :_ si $"MnO"_4^-$ était limitant, #box($x_f = n_1 / 2 = qty("1,2e-4", "mol")$) ; si $"H"_2"O"_2$ était limitant, #box($x_f = n_2 / 5 = qty("1,0e-4", "mol")$). La plus petite valeur l'emporte : #box($x_f = qty("1,0e-4", "mol")$) et c'est $"H"_2"O"_2$ qui est limitant. Il reste des ions $"MnO"_4^-$ en fin de réaction : la teinte violette s'atténue mais *ne disparaît pas* complètement.
]

#exercice[
  *Le zinc dans l'acide chlorhydrique*

  + Réactifs Zn (réducteur) et $"H"^+$ (oxydant). #linebreak()
    $"Zn" = "Zn"^(2+) + 2 e^-$ (×1) #h(2em) $2 "H"^+ + 2 e^- = "H"_2$ (×1)
    $ "Zn" + 2 "H"^+ arrow.r "Zn"^(2+) + "H"_2 $
    Le gaz recueilli est le *dihydrogène* $"H"_2$.
  + $n_"Zn" = m / M_"Zn"$ #h(1em) A.N. : $n_"Zn" = (0","65) / (65","4) = qty("9,9e-3", "mol")$ #linebreak()
    $n_("H"^+) = C times V$ #h(1em) A.N. : $n_("H"^+) = 1","0 times 50","0 times 10^(-3) = qty("5,0e-2", "mol")$
  + $n_("H"_2) = V_"gaz" / V_m$ #h(1em) A.N. : $n_("H"_2) = (0","24) / 24 = qty("1,0e-2", "mol")$
  + D'après l'équation, *1 mol* de Zn consommée produit *1 mol* de $"H"_2$ (nombres stœchiométriques égaux à 1). Tout le zinc a disparu, on attend donc $n_("H"_2) = n_"Zn" = qty("9,9e-3", "mol")$. On mesure $qty("1,0e-2", "mol")$ : égalité aux arrondis près, le résultat est *cohérent*. (Le zinc peut bien disparaître entièrement : il faut $2 n_"Zn" = qty("2,0e-2", "mol")$ de $"H"^+$, on en a introduit $qty("5,0e-2", "mol")$.)
]
