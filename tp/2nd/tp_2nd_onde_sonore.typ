#import "../../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf
#chapitre[TP — Étude d'une onde sonore - Seconde]

*Contexte* : Une salve d'ultrasons émise par un émetteur peut être captée par des récepteurs reliés à un oscilloscope. Ce TP propose de mesurer l'amplitude, la période et la fréquence d'un signal ultrasonore, puis de déterminer expérimentalement la vitesse de propagation du son dans l'air.

*Matériel par binôme* : émetteur d'ultrasons, deux récepteurs d'ultrasons, oscilloscope, règle graduée, câbles de connexion.

= Amplitude et période d'un signal

== Mode opératoire

#experience[
  + Régler l'émetteur d'ultrasons sur le mode continu.
  + Relier un récepteur à l'oscilloscope, puis appuyer sur la touche AUTO de l'oscilloscope.
  + Ajuster le bouton SCALE de l'oscilloscope de manière à observer 2 motifs complets sur l'écran.
  + Demander au professeur de vérifier le signal visualisé sur l'oscilloscope.
]

#travail[
  + Recopier à *l'échelle* la figure observée à l'oscilloscope.
  + Recopier l'échelle horizontale et verticale indiquées par l'oscilloscope sur l'oscillogramme. On écrira ces échelles sous la forme: 

  - Echelle horizontale : 1 carreau $<->$ .....
  - Echelle verticale : 1 carreau $<->$ .....
]

== Mesure de l'amplitude

#travail[
  + Légender votre figure en faisant figurer l'amplitude du signal.
  + En utilisant l'échelle verticale de la figure, calculer en volt l'amplitude du signal.
]

== Mesure de la période

#travail[
  + Repérer et repasser en couleur un motif qui se répète sur votre figure représentant le signal.
  + Quelle est la taille du motif en nombre de carreaux ?
  + À l'aide de l'échelle horizontale, calculer la période du signal observé. On notera $T$ cette période.
  + En déduire par un calcul la valeur de la fréquence en Hz de l'onde ultrasonore.
]

= Mesure de la vitesse du son dans l'air

== Principe de l'expérience

#experience[
  Une salve très brève est émise par l'émetteur ultrasonore. Ce bruit bref se propage depuis l'émetteur et croise sur son chemin deux récepteurs éloignés d'une distance *d = 40 cm*. On observe un décalage temporel qui est le temps nécessaire à la salve pour voyager du premier récepteur au deuxième récepteur.

  Connaissant la distance séparant les récepteurs et la durée $Delta t$ nécessaire au son pour parcourir cette distance, on peut calculer la vitesse de l'onde sonore.
]

== Montage expérimental

#align(center)[
  #image("../figures/onde_sonore_principe.png", width: 45%)
  #h(1em)
  #image("../figures/onde_sonore_montage.png", width: 45%)
]

== Mesures

#travail[
  + À l'aide de l'oscilloscope, mesurer la durée $Delta t = t_2 - t_1$. Vous compterez les carreaux, puis utiliserez l'échelle horizontale (Time) affichée en blanc en bas de l'écran de l'oscilloscope.
  + À l'aide de $Delta t$ et de la distance $d$ entre les récepteurs, calculer la vitesse du son.
  + Comparer votre valeur à la valeur de référence qui est 340 m/s. Commenter.
]

== Améliorations

#travail[
  + Pour obtenir une mesure plus précise de la vitesse du son, recommencer l'expérience pour différentes distances $d$ entre les récepteurs (30 cm, 50 cm par exemple).
  + Effectuer une moyenne sur les différentes vitesses du son obtenues.
]
