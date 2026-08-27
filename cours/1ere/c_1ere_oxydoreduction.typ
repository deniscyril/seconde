#import "../../_assets/template_physique.typ": *

#show: conf

#chapitre[Oxydoréduction]

= Observation expérimentale : l'arbre de Diane

#experience[
  On plonge un fil de cuivre Cu dans une solution de nitrate d'argent contenant des ions $"Ag"^+$.

  *Observations :*
  - Un dépôt gris métallique (argent Ag) se forme sur le fil de cuivre.
  - La solution devient progressivement bleue : des ions $"Cu"^(2+)$ sont apparus.
  - Le fil de cuivre s'amincit : des atomes Cu ont *disparu*.

  *Interprétation :* des atomes Cu ont *cédé des électrons* aux ions $"Ag"^+$. Il y a eu *transfert d'électrons* entre les deux espèces chimiques.
]

= Oxydant, réducteur et couple oxydant/réducteur

== Définitions

#définition[
  - Un *oxydant* est une espèce chimique capable de *gagner* (capter) des électrons.
  - Un *réducteur* est une espèce chimique capable de *perdre* (céder) des électrons.

  Lors d'une réaction d'oxydoréduction, le réducteur *cède* ses électrons à l'oxydant :
  - l'oxydant *se réduit* (il gagne des électrons)
  - le réducteur *s'oxyde* (il perd des électrons)
]

#important[
  Il n'y a pas de transfert d'électrons « dans le vide » : les électrons cédés par le réducteur sont *immédiatement* captés par l'oxydant. Oxydation et réduction ont toujours lieu *simultanément*.
]

== Couple oxydant/réducteur et demi-équation électronique

#définition[
  Un *couple oxydant/réducteur*, noté $"Ox"\/"Red"$, regroupe un oxydant et un réducteur reliés par l'échange de $n$ électrons. La relation entre eux s'écrit sous forme d'une *demi-équation électronique* :

  $ "Ox" + n dot e^- = "Red" $

  - Le sens gauche → droite est une *réduction* (l'oxydant gagne des électrons)
  - Le sens droite → gauche est une *oxydation* (le réducteur perd des électrons)
]

#exemple[
  Couples mis en jeu dans l'arbre de Diane :

  - Couple $"Ag"^+\/"Ag"$ : $quad "Ag"^+ + e^- = "Ag"$
  - Couple $"Cu"^(2+)\/"Cu"$ : $quad "Cu"^(2+) + 2 e^- = "Cu"$

  Dans l'expérience, Cu est le *réducteur* (il s'oxyde en $"Cu"^(2+)$) et $"Ag"^+$ est l'*oxydant* (il se réduit en Ag).
]

= Écrire une demi-équation électronique

#important[
  *Méthode* — Pour écrire la demi-équation du couple $"Ox"\/"Red"$ :

  + Écrire Ox à gauche et Red à droite, séparés par un signe $=$
  + Équilibrer les atomes *autres que O et H*
  + Équilibrer les atomes *O* en ajoutant des molécules $"H"_2"O"$
  + Équilibrer les atomes *H* en ajoutant des ions $"H"^+$
  + Équilibrer les *charges électriques* en ajoutant des électrons $e^-$ du côté de l'oxydant (gauche)
]

#exemple[
  Écrire la demi-équation du couple $"MnO"_4^-\/"Mn"^(2+)$.

  + $"MnO"_4^-$ à gauche, $"Mn"^(2+)$ à droite. L'atome Mn est équilibré (1 de chaque côté).
  + 4 atomes O à gauche, 0 à droite → ajouter $4 "H"_2"O"$ à droite.
  + 8 atomes H à droite, 0 à gauche → ajouter $8 "H"^+$ à gauche.
  + Charges — gauche : $-1 + 8 = +7$ ; droite : $+2$. Différence $= 5$ → ajouter $5 e^-$ à gauche.

  $ "MnO"_4^- + 8 "H"^+ + 5 e^- = "Mn"^(2+) + 4 "H"_2"O" $
]

#application[
  Écrire les demi-équations électroniques des couples suivants :
  + $"Ag"^+\/"Ag"$
  + $"Cu"^(2+)\/"Cu"$
  + $"I"_2\/"I"^-$
  + $"H"_3"O"^+\/"H"_2$
  + $"Fe"^(3+)\/"Fe"^(2+)$

  *Correction :*

  + $"Ag"^+ + e^- = "Ag"$
  + $"Cu"^(2+) + 2 e^- = "Cu"$
  + $"I"_2 + 2 e^- = 2 "I"^-$
  + $2 "H"_3"O"^+ + 2 e^- = "H"_2 + 2 "H"_2"O"$
  + $"Fe"^(3+) + e^- = "Fe"^(2+)$
]

= Établir l'équation d'une réaction d'oxydoréduction

#important[
  *Méthode* — Pour écrire l'équation bilan d'une réaction d'oxydoréduction :

  + Identifier les *couples* présents et les *réactifs* (espèces qui disparaissent)
  + Écrire les demi-équations en plaçant les *réactifs à gauche* dans chaque demi-équation
  + *Multiplier* chaque demi-équation par un entier de façon à ce que le *nombre d'électrons soit identique* dans les deux demi-équations
  + *Additionner* membre à membre et simplifier (les électrons disparaissent)
]

#exemple[
  Retrouver l'équation de la réaction de l'arbre de Diane.

  Couples donnés : $"Ag"^+\/"Ag"$ et $"Cu"^(2+)\/"Cu"$. Réactifs : $"Ag"^+$ et Cu.

  Demi-équations avec réactifs à gauche, multipliées pour égaliser les électrons :

  $"Ag"^+ + e^- = "Ag"$ (×2) $quad arrow.r quad 2 "Ag"^+ + 2 e^- = 2 "Ag"$

  $"Cu" = "Cu"^(2+) + 2 e^-$ (×1)

  Addition membre à membre ($2 e^-$ se simplifient) :

  $ "Cu" + 2 "Ag"^+ arrow.r "Cu"^(2+) + 2 "Ag" $
]

#application[
  + Établir l'équation de la réaction entre les ions permanganate $"MnO"_4^-$ et les ions fer(II) $"Fe"^(2+)$ en milieu acide. Couples : $"MnO"_4^-\/"Mn"^(2+)$ et $"Fe"^(3+)\/"Fe"^(2+)$.

  + Dans une pile, le zinc métallique Zn réagit avec des ions $"Cu"^(2+)$. Établir l'équation bilan et identifier oxydant et réducteur. Couples : $"Cu"^(2+)\/"Cu"$ et $"Zn"^(2+)\/"Zn"$.

  *Correction :*

  + Réactifs : $"MnO"_4^-$ (oxydant) et $"Fe"^(2+)$ (réducteur). #linebreak()
    $"MnO"_4^- + 8 "H"^+ + 5 e^- = "Mn"^(2+) + 4 "H"_2"O"$ (×1) #linebreak()
    $"Fe"^(2+) = "Fe"^(3+) + e^-$ (×5) #linebreak()
    $ "MnO"_4^- + 8 "H"^+ + 5 "Fe"^(2+) arrow.r "Mn"^(2+) + 4 "H"_2"O" + 5 "Fe"^(3+) $

  + $"Cu"^(2+) + 2 e^- = "Cu"$ (×1) $quad$; $quad "Zn" = "Zn"^(2+) + 2 e^-$ (×1) #linebreak()
    $ "Zn" + "Cu"^(2+) arrow.r "Zn"^(2+) + "Cu" $ #linebreak()
    Zn est le *réducteur* ; $"Cu"^(2+)$ est l'*oxydant*.
]

= Tableau récapitulatif

#important[
  #align(center)[
    #table(
      columns: (2fr, 3fr, 1fr),
      align: (left, left, center),
      stroke: (x, y) => if y == 0 { (bottom: 1pt) } else { none },
      inset: (x: 0.5em, y: 0.4em),
      [*Notion*], [*À retenir*], [*Exos*],
      [Oxydant], [Espèce qui *gagne* des $e^-$], [1, 2],
      [Réducteur], [Espèce qui *perd* des $e^-$], [1, 2],
      [Couple Ox/Red], [$"Ox" + n e^- = "Red"$], [2, 3],
      [Demi-équation (sans O, H)], [Équilibrer atomes puis charges avec $e^-$], [2, 3],
      [Demi-équation (avec O, H)], [O→$"H"_2"O"$ ; H→$"H"^+$ ; charges→$e^-$], [3, 4],
      [Équation bilan], [Égaliser les $e^-$, additionner, simplifier], [4, 5, 6, 7],
    )
  ]
]

// ─────────────────────────────────────────────────────────────────────────────
#chapitre[Exercices — Oxydoréduction]

#exercice[
  *Identifier oxydant et réducteur*

  On plonge un clou en fer Fe dans une solution contenant des ions $"Cu"^(2+)$. Le clou se recouvre d'un dépôt rougeâtre de cuivre et la solution perd sa teinte bleue.

  Couples : $"Fe"^(2+)\/"Fe"$ et $"Cu"^(2+)\/"Cu"$.

  + Identifier l'oxydant et le réducteur dans cette transformation.
  + Écrire les demi-équations électroniques de chaque couple en plaçant les réactifs à gauche.
  + En déduire l'équation bilan de la réaction.
]

#exercice[
  *Demi-équations — couples simples*

  Écrire les demi-équations électroniques des couples suivants (pas d'oxygène à équilibrer) :

  + $"Ag"^+\/"Ag"$
  + $"Zn"^(2+)\/"Zn"$
  + $"Fe"^(3+)\/"Fe"^(2+)$
  + $"I"_2\/"I"^-$
  + $"Br"_2\/"Br"^-$
  + $"Sn"^(4+)\/"Sn"^(2+)$
]

#exercice[
  *Demi-équations — couples avec oxygène*

  Écrire les demi-équations électroniques des couples suivants. Les réactions ont lieu en milieu aqueux acide.

  + $"MnO"_4^-\/"Mn"^(2+)$
  + $"Cr"_2"O"_7^(2-)\/"Cr"^(3+)$ #h(1em) _(Attention : 2 atomes Cr)_
  + $"H"_2"O"_2\/"H"_2"O"$
  + $"NO"_3^-\/"NO"$
]

#exercice[
  *Équations bilan — réactions directes*

  Établir l'équation bilan de chaque réaction. Les couples sont donnés.

  + Réaction entre Fe et $"Cu"^(2+)$. Couples : $"Cu"^(2+)\/"Cu"$ et $"Fe"^(2+)\/"Fe"$.
  + Réaction entre Zn et $"H"_3"O"^+$. Couples : $"Zn"^(2+)\/"Zn"$ et $"H"_3"O"^+\/"H"_2$.
  + Réaction entre $"I"_2$ et $"Fe"^(2+)$. Couples : $"I"_2\/"I"^-$ et $"Fe"^(3+)\/"Fe"^(2+)$.
]

#exercice[
  *La corrosion du fer*

  Le fer Fe se corrode en présence d'eau et de dioxygène selon une réaction d'oxydoréduction.

  Couples : $"O"_2\/"H"_2"O"$ (demi-équation : $"O"_2 + 4 "H"^+ + 4 e^- = 2 "H"_2"O"$) et $"Fe"^(2+)\/"Fe"$.

  + Identifier l'oxydant et le réducteur.
  + Écrire la demi-équation du couple $"Fe"^(2+)\/"Fe"$ avec Fe comme réactif.
  + Établir l'équation bilan de la corrosion.
  + Les ions $"Fe"^(2+)$ formés s'oxydent ensuite en $"Fe"^(3+)$ (rouille) par le dioxygène. Écrire l'équation de cette seconde réaction. Couple supplémentaire : $"Fe"^(3+)\/"Fe"^(2+)$.
]

#exercice[
  *Permanganate et eau oxygénée*

  En milieu acide, une solution de permanganate de potassium ($"MnO"_4^-$, violet) réagit avec l'eau oxygénée $"H"_2"O"_2$.

  Couples : $"MnO"_4^-\/"Mn"^(2+)$ et $"O"_2\/"H"_2"O"_2$ ($"O"_2 + 2 "H"^+ + 2 e^- = "H"_2"O"_2$).

  + Parmi $"MnO"_4^-$ et $"H"_2"O"_2$, lequel est l'oxydant ? Justifier.
  + Écrire les deux demi-équations en plaçant les réactifs à gauche.
  + Établir l'équation bilan. Que peut-on observer au cours de la réaction ?
]

#exercice[
  *Reconnaître une réaction d'oxydoréduction*

  On mélange une solution contenant des ions $"Fe"^(3+)$ (jaune-brun) avec une solution d'iodure de potassium contenant des ions $"I"^-$ (incolore). La solution obtenue prend une couleur brune caractéristique du diiode $"I"_2$.

  Couples : $"Fe"^(3+)\/"Fe"^(2+)$ et $"I"_2\/"I"^-$.

  + Identifier, à partir de l'observation, l'oxydant et le réducteur.
  + Écrire les demi-équations avec les réactifs à gauche.
  + Établir l'équation bilan de la réaction.
  + La réaction inverse (faire réagir $"Fe"^(2+)$ avec $"I"_2$) peut-elle se produire ? Justifier qualitativement.
]

#exercice[
  *Défi — Métaux et solutions acides*

  #text(style: "italic")[
    On dispose de trois métaux : zinc Zn, cuivre Cu et argent Ag, ainsi que de deux solutions acides : acide chlorhydrique ($"H"_3"O"^+$) et acide nitrique dilué (contenant $"NO"_3^-$ et $"H"^+$). On réalise des tests de réactivité et on observe :
    - Zn réagit avec l'acide chlorhydrique (dégagement gazeux).
    - Cu ne réagit pas avec l'acide chlorhydrique.
    - Cu réagit avec l'acide nitrique dilué (dégagement gazeux brun de NO).
    - Ag ne réagit pas avec l'acide chlorhydrique.
  ]

  Couples disponibles : $"Zn"^(2+)\/"Zn"$ ; $"Cu"^(2+)\/"Cu"$ ; $"Ag"^+\/"Ag"$ ; $"H"_3"O"^+\/"H"_2$ ; $"NO"_3^-\/"NO"$ ($"NO"_3^- + 4 "H"^+ + 3 e^- = "NO" + 2 "H"_2"O"$).

  + Écrire l'équation de la réaction entre Zn et $"H"_3"O"^+$. Qu'est-ce que le dégagement gazeux observé ?
  + Expliquer pourquoi Cu ne réagit pas avec $"H"_3"O"^+$ alors qu'il réagit avec $"NO"_3^-$. Écrire l'équation de la réaction de Cu avec l'acide nitrique.
  + À partir des observations, proposer un classement des couples par *pouvoir oxydant croissant* de l'oxydant : $"H"_3"O"^+$, $"NO"_3^-$, $"Cu"^(2+)$, $"Zn"^(2+)$.
  + Prédire si Ag peut réagir avec l'acide nitrique. Justifier.
]
