#import "../../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf
#chapitre[TP — Précision de la verrerie - Seconde]

*Contexte* : On souhaite prélever un volume d'exactement 25,0 mL d'eau distillée. Comme la masse volumique de l'eau vaut 1,00 g/mL, peser l'eau prélevée permet de connaître précisément le volume réellement obtenu. On compare ainsi la précision de trois verreries : bécher, éprouvette graduée et fiole jaugée.

*Matériel par binôme* : 1 bécher 50 mL (graduation à 25 mL), 1 éprouvette graduée 50 mL, 1 fiole jaugée 25 mL, balance électronique, pissette d'eau distillée.

#let tableau_releve() = table(
  columns: (2.1cm,) + (1fr,) * 18,
  rows: (auto, 1.4cm),
  align: center + horizon,
  inset: 4pt,
  [*Groupe*], ..range(1, 19).map(n => text(size: 0.7em)[#n]),
  [*Volume en mL*], ..range(1, 19).map(n => []),
)
// #Q vient désormais de template_physique.typ (numérotation continue des questions)

= Avant de commencer

#travail[
  #Q[Quelle masse d'eau attends-tu en pesant 25,0 mL d'eau ? Justifie ton calcul.]
]
#lignes_reponse(2)

= Protocole expérimental

#experience[
  Pour chacune des trois verreries (bécher, éprouvette graduée, fiole jaugée), tu vas réaliser *une seule mesure* du volume de 25 mL, en suivant les étapes su
  ivantes :
  + Poser la verrerie vide sur la balance et appuyer sur *TARE* (la balance doit afficher 0,00 g).
  + Prélever de l'eau distillée à la pissette jusqu'à atteindre le repère de 25 mL :
    - *Bécher* : remplir jusqu'au trait de graduation à 25 mL, en lisant au niveau des yeux.
    - *Éprouvette graduée* : remplir jusqu'au trait 25 mL, bas du ménisque au niveau des yeux.
    - *Fiole jaugée* : remplir jusqu'au trait de jauge, en ajoutant les dernières gouttes à la pissette pour ajuster précisément le bas du ménisque sur le trait.
  + Lire la masse affichée par la balance : la tare ayant été faite à vide, cette masse (en g) correspond directement au volume d'eau prélevé (en mL).
  + Noter ta mesure au tableau de la classe, dans la colonne correspondant à la verrerie utilisée.
  + Vider la verrerie (l'eau récupérée peut être reversée dans le bécher de service) avant de passer à la verrerie suivante.
]

#important[
  Ta classe compte 18 élèves : chacun réalise une seule mesure par verrerie, et c'est la mise en commun de ces 18 mesures individuelles qui permettra d'étudier la variabilité des résultats. Réalise ta mesure avec soin — elle compte pour toute la classe.
]

#travail[
  #Q[Sur ton compte-rendu, schématise les principales étapes qui t'ont permis de réaliser une mesure (choisis une verrerie).]
]
#lignes_reponse(6)

#travail[
  #Q[Compare le volume que tu as obtenu avec le bécher à la valeur attendue (25,0 mL). Comment expliques-tu l'écart ?]
]
#lignes_reponse(4)

= Relevé des mesures

Une fois que chaque élève de la classe a noté sa mesure au tableau, recopie ici l'ensemble des 18 mesures de la classe pour chaque verrerie (une valeur par élève).

== Bécher (50 mL)

#tableau_releve()

== Éprouvette graduée (50 mL)

#tableau_releve()

== Fiole jaugée (25 mL)

#tableau_releve()

= Traitement statistique

#important[
  Le traitement des mesures se fait avec Python, Code de l'activité Python: *6a46-4681040*. Une fois les calculs faits, reporte les résultats dans le tableau ci-dessous.

  Attention lors de la recopie de tes valeurs dans Python : remplace la virgule décimale par un *point* (ex. `47,0` s'écrit `47.0`), et sépare les valeurs par des virgules. Exemple pour le bécher :

  ```python
  volume_becher = [24.8, 25.3, 24.6]
  ```
]

#travail[
  #Q[ Reporte ici les résultats obtenus avec Python pour chaque verrerie.]
]

#align(center)[
  #table(
    columns: (1.4fr, 1fr, 1fr),
    align: center + horizon,
    rows: (auto, 1cm, 1cm, 1cm),
    [*Verrerie*], [*Moyenne (mL)*], [*Écart-type (mL)*],
    [Bécher], [], [],
    [Éprouvette graduée], [], [],
    [Fiole jaugée], [], [],
  )
]

= Observations

#travail[
  #Q[Comment évolue la *valeur moyenne* des mesures par rapport à la valeur attendue (25,0 mL) lorsque l'on passe du bécher à l'éprouvette graduée puis à la fiole jaugée ?]
]
#lignes_reponse(4)

#travail[
  #Q[Comment évolue *l'étendue des valeurs mesurées* (observe la largeur des histogrammes) lorsque l'on passe du bécher à l'éprouvette graduée puis à la fiole jaugée ?]
]
#lignes_reponse(4)

= Conclusion

#travail[
  #Q[Classe ces trois objets en verre par précision croissante.]
]
#lignes_reponse(2)

#travail[
  #Q[Explique pourquoi il est plus précis de faire une moyenne sur une série de mesures que d'effectuer une seule mesure.]
]
#lignes_reponse(4)
