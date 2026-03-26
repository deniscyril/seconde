#import "../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf
#chapitre[Description du Mouvement]

= Le mouvement est relatif
== Activité Paul-Sophie-Émilie

== Système et Référentiel

#définition[
- On appelle *système* l'objet dont on étudie le mouvement.
- Un *référentiel* est un solide considéré immobile par rapport auquel on étudie le mouvement du *système*.
]

= Trajectoire et Vitesse
== Trajectoire

#définition[
- La trajectoire est le chemin suivi d'un système au cours de son mouvement.   
]

#exemple[
  - Si la trajectoire est droite, on parle de mouvement rectiligne.
    - Balle que l'on lâche
  - Si la trajectoire est une courbe, on parle de mouvement *curviligne*.
    - Mouvement de la Terre autour du Soleil
]

== Chronophotographie

C'est un document qui va "raconter le mouvement" il va donner des informations sur la trajectoire mais aussi sur la vitesse.

#définition[Une chronophotographie est un document qui représente les *positions* du système à *intervalle de temps régulier*
]
//$#qty[6.02e23][ mol^-1]$
//$M_O=#qty[16.0][ g mol^-1]$

#application[*Activité tracteur*

+ Comment évolue la vitesse du tracteur noir ?

  _La vitesse du tracteur noir diminue car la distance entre 2 images successives diminue pendant le mouvement_.

+ Nommer la trjectoire du tracteur noir et proposer un nom pour le mouvement.

  _La trajectoire est une droite. C'est un mouvement rectiligne ralenti_.

+ Même travail pour le tracteur blanc.

  _Le tracteur blanc se déplace à vitesse constante. Son mouvement est rectiligne uniforme_. 
]

= Vecteur Vitesse
== Vitesse moyenne

On parle de vitesse moyenne quand on considère la totalité d'un déplacement et la durée totale de ce déplacement.
#exemple[ Je prends le bus à St Marcel à 7h50 j'arrive vaut lycée à 8h05. La longueur de l'itinéraire est 4km.
+ Calculer la vitesse moyenne du bus.
+ Durant ce trajet, la vitesse du bus a-t-elle dépassée la valeur calculée précédement ? Justifier.
]

- Jusqu'ici la vitesse est un nombre suivi d'une unité: km/h ou m/s.
- Maintenant, on va utiliser un vecteur qui en plus va indiquer dans quelle direction et quel sens se fait le mouvement.

== Vecteur déplacement

Il indique le déplacement du système.
- *L'origine* est le point de départ
- *La point de la flèche* est l'arrivée.
- *La valeur* du vecteur $arrow(D A)$ est la longueur en mètre du segment $D A$

== Vecteur vitesse

#définition[Le système se déplace de D vers A pendant une durée $Delta t$. Son vecteur vitesse instantanée s'écrit: $ arrow(v) = arrow(D A) / (Delta t) $
- $arrow(v)$ est orienté de D ver A et tangent à la trajectoire.
- la valeur de la vitesse instantanée en D est

$ v = D / (Delta t) $

]

figure
