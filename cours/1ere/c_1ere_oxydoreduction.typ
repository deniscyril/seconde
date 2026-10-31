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
  + $"H"^+\/"H"_2$
  + $"Fe"^(3+)\/"Fe"^(2+)$

  *Correction :*

  + $"Ag"^+ + e^- = "Ag"$
  + $"Cu"^(2+) + 2 e^- = "Cu"$
  + $"I"_2 + 2 e^- = 2 "I"^-$
  + $2 "H"^+ + 2 e^- = "H"_2$
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
      [Oxydant], [Espèce qui *gagne* des $e^-$], [1, 4],
      [Réducteur], [Espèce qui *perd* des $e^-$], [1, 4],
      [Couple Ox/Red], [$"Ox" + n e^- = "Red"$], [2, 3],
      [Demi-équation (sans O, H)], [Équilibrer atomes puis charges avec $e^-$], [2],
      [Demi-équation (avec O, H)], [O→$"H"_2"O"$ ; H→$"H"^+$ ; charges→$e^-$], [3, 6],
      [Équation bilan], [Égaliser les $e^-$, additionner, simplifier], [1, 4 à 7],
      [_Rappel :_ quantité de matière], [$n = m \/ M$ ; $n = C times V$ ; $n = V_"gaz" \/ V_m$], [5, 6, 7],
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

  #grid(columns: (1fr,)*4,
    [1. $"Zn"^(2+)\/"Zn"$], [2. $"I"_2\/"I"^-$], [3. $"Br"_2\/"Br"^-$], [4. $"Sn"^(4+)\/"Sn"^(2+)$])
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

  Établir l'équation bilan de chaque réaction et identifier l'oxydant et le réducteur.

  + On mélange des ions $"Fe"^(3+)$ (jaune-brun) et des ions iodure $"I"^-$ (incolores) : la solution devient brune (formation de diiode $"I"_2$). Couples : $"Fe"^(3+)\/"Fe"^(2+)$ et $"I"_2\/"I"^-$.
  + De l'aluminium Al réagit avec des ions $"Cu"^(2+)$. Couples : $"Al"^(3+)\/"Al"$ et $"Cu"^(2+)\/"Cu"$.
  + Les ions dichromate $"Cr"_2"O"_7^(2-)$ réagissent avec les ions $"Fe"^(2+)$ en milieu acide. Couples : $"Cr"_2"O"_7^(2-)\/"Cr"^(3+)$ (voir exercice 3) et $"Fe"^(3+)\/"Fe"^(2+)$.
]

#exercice[
  *La corrosion du fer* #h(1fr) _Rappel : $n = m \/ M$ et $n = V_"gaz" \/ V_m$_

  Un clou en fer Fe de masse $m = 3","5$ g est enfermé dans un flacon contenant $V_"air" = 0","50$ L d'air humide. Le fer se corrode en présence d'eau et de dioxygène.

  Couples : $"O"_2\/"H"_2"O"$ ($"O"_2 + 4 "H"^+ + 4 e^- = 2 "H"_2"O"$) et $"Fe"^(2+)\/"Fe"$.

  *Données :* $M_"Fe" = 55","8$ g·mol⁻¹ ; l'air contient 21 % de dioxygène en volume ; $V_m = 24$ L·mol⁻¹ à 20 °C.

  + Identifier l'oxydant et le réducteur, puis établir l'équation bilan de la corrosion.
  + Calculer la quantité de matière de fer $n_"Fe"$ contenue dans le clou.
  + Calculer le volume de dioxygène contenu dans le flacon, puis sa quantité de matière $n_("O"_2)$.
]

#exercice[
  *Permanganate et eau oxygénée* #h(1fr) _Rappel : $n = C times V$ et $C_m = C times M$_

  En milieu acide, une solution violette de permanganate de potassium ($"MnO"_4^-$) réagit avec l'eau oxygénée $"H"_2"O"_2$. On mélange :
  - $V_1 = 12","0$ mL de solution de permanganate de concentration $C_1 = 2","0 times 10^(-2)$ mol·L⁻¹ ;
  - $V_2 = 10","0$ mL d'eau oxygénée de concentration en masse $C_(m,2) = 1","7$ g·L⁻¹.

  Couples : $"MnO"_4^-\/"Mn"^(2+)$ et $"O"_2\/"H"_2"O"_2$ ($"O"_2 + 2 "H"^+ + 2 e^- = "H"_2"O"_2$). #h(1em) *Données :* $M_"H" = 1","0$ ; $M_"O" = 16","0$ g·mol⁻¹.

  + Établir l'équation bilan. Que peut-on observer au cours de la réaction ?
  + Calculer la quantité de matière d'ions permanganate $n_1$ introduite.
  + Calculer la masse molaire de $"H"_2"O"_2$, puis sa concentration molaire $C_2$. En déduire la quantité de matière $n_2$ introduite.
  + L'eau oxygénée utilisée a été obtenue en diluant 10 fois une solution commerciale. Quelle est la concentration molaire $C_0$ de la solution commerciale ?
]

#exercice[
  *Le zinc dans l'acide chlorhydrique* #h(1fr) _Tout ensemble !_

  On introduit $m = 0","65$ g de grenaille de zinc Zn dans $V = 50","0$ mL d'acide chlorhydrique ($"H"^+ + "Cl"^-$) de concentration $C = 1","0$ mol·L⁻¹. Un gaz se dégage ; on le recueille par déplacement d'eau. Quand tout le zinc a disparu, on a recueilli $V_"gaz" = 0","24$ L de gaz.

  Couples : $"Zn"^(2+)\/"Zn"$ et $"H"^+\/"H"_2$. #h(1em) *Données :* $M_"Zn" = 65","4$ g·mol⁻¹ ; $V_m = 24$ L·mol⁻¹.

  + Établir l'équation bilan. Quel est le gaz recueilli ?
  + Calculer les quantités de matière initiales de zinc $n_"Zn"$ et d'ions hydrogène $n_("H"^+)$.
  + Calculer la quantité de matière de gaz formé.
  + Comparer la quantité de gaz formé à la quantité de zinc consommé. Ce résultat est-il cohérent avec les nombres stœchiométriques de l'équation ?
]
