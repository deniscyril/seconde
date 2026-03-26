#import "../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf
#chapitre[Rappels]

= Conversions
== Unités Légales

#définition[
Une *mesure* est constituée d'un nombre ET d'un unité.
]
Parfois il y a plusieurs écritures pour une même mesure. 

Exemple: 

21,0 cm = 210 mm = 0,210 m 

La grandeur physique mesurée est une longueur mais elle peut s'exprimer avec différentes unités.

#important[- A chaque grandeur physique, il y a 1 unité de référence, c'est l'unité légale.
- #table(
  columns: 6,
  align: center,
  [ Grandeur] , [Longueur] , [Temps] , [Masse] , [Force] , [Courant électrique] ,
  [Unité] , [Mètre] , [Seconde] , [kilogramme] , [Newton], [Ampère],
  [Symbole de l'unité], [m],[s],[kg],[N],[A]  
)
]
== Préfixes usuels à connaître:

#table(
  columns: (1fr, 1fr,1fr,1fr,1fr,1fr,1fr),
  align: center,
  [Préfixe] , [Mega] , [kilo] , [centi] , [milli] , [micro] , [nano] ,
  [Symbole] , [M] , [k] , [c] , [m], [$mu$], [n],
  [Facteur], $times 10^6$,  $times 10^3$, $times 10^"-2"$, $times 10^"-3"$, $times 10^"-6"$,$times 10^"-9"$
)

== Conversion vers l'unité légale

Pour convertir une mesure, on utilisera le plus souvent les préfixes. 
#exemple[Convertir les mesures suivantes en mètres: 

- 5 km = 
- 9 cm = 
- 3 mm = 
- 7,8 mm = 
- 50 $mu$m = ]

$->$ Exercice 1
= Ecriture scientifique
== Définition
#définition[L'écriture d'un nombre est scientifique si elle est de la forme $a times 10^n$ avec a un nombre entre 0 et 9,999... n est un entier relatif (avec un signe)]

L'écriture scientifique permet d'écrire de très grands nombres ou  de très petits nombres avec peu de chiffres.

#exemple[Mettre en écriture scientifique les mesures suivantes: 
- hauteur du Mont-blanc: 4807 m =..............................
- longueur d'une règle: 0,2 m = ..............................
- 0,0036 m = ..............................
- Rayon de la Terre: $qty("6380e3","m")$ = ..............................
- $qty("630e-9","m")$ = ..............................
] 
$->$ Exercice 2 et Exercice 3

= Les chiffres significatifs

Quand on effectue une mesure, le résultat n’est jamais parfaitement exact : il contient toujours une incertitude.  
#définition[
- Les *chiffres significatifs* sont les chiffres qui apportent une information fiable sur la valeur mesurée.  
- Il est important de ne pas garder trop de chiffres significatifs, sinon on donne une impression de précision qui n’existe pas vraiment.]

Les chiffres significatifs donnent une indication sur la précision d'une mesure.

Exemple

Soir L la lageur d'une feuille. 
- L = 21 cm 2 chiffres significatifs
- L = 21,0 cm 3 chiffres significatifs, mesure plus précise

#table(
  columns: (1fr, 1fr,1fr,1fr,1fr,1fr),
  align: center,
  [Mesure] , [31 000 cm] , [0,0250 s] , [$qty("6380e3","m")$] , [0,034] , [$qty("3.00e8","m")$]  ,
  [Nb de chiffres significatifs] ,[...] , [...], [...], [...], [...]
)

= Réaliser un calcul
#exemple[
Un élève mesure la durée d’un sprint de 50 m avec un chronomètre manuel. Il obtient :

$t = 7$ s (1 chiffre significatif)

La distance du sprint est connue :

$d = 50,0$ m (3 chiffres significatifs)

On calcule la vitesse :

$v = d / t = 50,0 / 7 approx 7,14 $ m/s

Mais comme le temps n’a été mesuré qu’avec *un seul chiffre significatif*,  
la vitesse doit aussi être donnée avec *un seul chiffre significatif* :

$v approx 7$ m/s 👉 Écrire 7,14 m/s laisserait croire que la vitesse a été mesurée avec une précision au centième de mètre par seconde, ce qui est impossible avec un chronomètre manuel.

]


#pagebreak()
#chapitre[Rappels - Exercices]

#exercice[Convertir vers l'unité légale en utilisant les préfixes:
#grid(
columns: (1fr,1fr,1fr),
gutter: 10pt,

[3 km =............], [5 mm = ..........] , [12 kg = ..........],
[21 cm =............], [5 min = ..........] , [0,4 $mu$m = ..........],
[42 km =............], [10 mm = ..........] , [0,09 GN = ..........]

)
]

#exercice[Mettre les nombres suivants en écritures scientifiques: 
#grid(
columns: (1fr,1fr,1fr),
gutter: 10pt,
[1500 = ..................], [ 42 500 =.................. ], [60 000 100 =..................],
[0,2 = ..................], [ 0,314=.................. ], [0,0025 =..................],
[$25 times 10^3$ = ..................], [$153,7 times 10^3$ =.................. ], [$630 times 10^(-9)$ =..................],
)
]

#exercice[Effectuer les conversions suivantes et donner chaque résultat en écriture scientifique:
#grid(
columns: (1fr,1fr),
gutter: 10pt,

[2,5 km = .................. m],
[4 200 g = .................. kg],

[7,5 mm = .................. m],
[360 000 ms = .................. s],

[840 mL = .................. L],
[0,0000012 m = .................. µm],
)
]
#exercice[Un coureur participe à un marathon (42,195 km). On s’intéresse à ses performances et aux mesures associées.

1. La longueur officielle du marathon est de 42,195 km.
Convertis cette distance en mètres.
2. Son temps est mesuré avec une montre GPS : 2 h 37 min.
Convertis ce temps en secondes.
3. Donne en écriture scientifique avec 4 chiffres significatifs le temps en secondes trouvé à la question précédente.
4. Calcule sa vitesse moyenne en m/s. Exprime le résultat avec le bon nombre de chiffres significatifs. ]
