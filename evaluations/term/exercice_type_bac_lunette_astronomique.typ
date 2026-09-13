#import "../../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf
#chapitre[Exercice type bac : La lunette astronomique]

#underline[*Observation de l'astéroïde à l'œil nu*]

La taille de l'astéroïde est estimée à $d = 11$ m. Le 9 août 2024, il est passé au plus près de la Terre, à une distance $d_"A/T" = 5,67 times 10^5$ km.

*Données :*
- un objet $A B$ est vu sous un angle $theta$ par l'œil (figure 3). Le pouvoir séparateur de l'œil humain, noté $epsilon$, est la valeur minimale de l'angle $theta$ sous lequel les deux points $A$ et $B$ peuvent être vus séparément. L'objet $A B$ peut donc être vu distinctement par l'œil si $theta > epsilon$ ;
- pouvoir séparateur de l'œil de l'observateur : $epsilon = 3,0 times 10^(-4)$ rad ;
- pour des angles très petits, exprimés en radian : $tan theta approx theta$.

#image("../figures/observation_oeil_nu.pdf")

*Q1.* Montrer que la valeur de l'angle $theta$ est égale à $1,9 times 10^(-8)$ rad lorsque l'observateur cherche à observer à l'œil nu deux points diamétralement opposés de l'astéroïde situé à la distance $d_"A/T"$.

*Q2.* En ne tenant compte que du pouvoir séparateur de l'œil, commenter la phrase de l'article : « Une deuxième lune temporaire qu'on ne pourra malheureusement pas distinguer à l'œil nu ».

#underline[*Observation de l'astéroïde avec une lunette astronomique*]

Pour mieux discerner des objets distants, l'une des méthodes possibles est d'utiliser une lunette astronomique. Le grossissement de la lunette, noté $G$, correspond au rapport entre l'angle $theta'$ sous lequel est vu l'objet à travers la lunette et l'angle $theta$ .
On rappelle que $theta = 1,9 times 10^(-8)$ rad.

Le critère pour pouvoir distinguer deux points d'un objet éloigné au travers de la lunette devient alors $theta' > epsilon$, avec $epsilon$ le pouvoir séparateur de l'œil.

Dans cette partie, on s'appuie sur le schéma ci-dessous (annexe à rendre avec la copie). On note $F_1$, $F'_1$, $F_2$, et $F'_2$ respectivement les foyers objet et image des lentilles $L_1$ et $L_2$, ainsi que $f'_1$ et $f'_2$ les distances focales de ces lentilles.

La « Grande Lunette » de Meudon est encore aujourd'hui la plus grande lunette astronomique d'Europe. Elle est constituée de deux lentilles minces convergentes :
- une lentille $L_1$ de distance focale $f'_1 = 16$ m ;
- une lentille $L_2$ de distance focale $f'_2 = 4$ cm.

#block(breakable: false)[
  #align(center)[
    #image("../figures/construction_lunette_astronomique.pdf")

    Annexe. Schématisation de la lunette astronomique (le schéma n'est pas à l'échelle).
  ]
]

*Q3.* Sur le schéma ci-dessus, tracer la marche des deux rayons lumineux issus du point $B$, situé à l'infini, au travers de la lunette. Faire apparaître l'image intermédiaire $A_1 B_1$.

*Q4.* Montrer que le grossissement de la lunette astronomique s'exprime par la relation :
$ G = f'_1 / f'_2 $

*Q5.* Déterminer si la « Grande Lunette » de Meudon permet de distinguer deux points diamétralement opposés de l'astéroïde 2024 PT5.

*Q6.* En déduire le grossissement minimal $G_"min"$ que devrait avoir une lunette pour permettre de distinguer les deux points diamétralement opposés de l'astéroïde. En conservant l'oculaire $L_2$ de la « Grande Lunette », déterminer la distance focale $f'_1$ qu'il faudrait alors donner à l'objectif, et commenter la faisabilité d'une telle lunette.
