#import "../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf


#chapitre[Principe d'inertie]

= Mobile sur coussin d'air
== Expérience

On lance le mobile à la main en le poussant jusqu'à une ligne après quoi on l'abandonne.
- Phase 1: La main est en contact : le mouvement est accéléré
- Phase 2: La main n'est pas en contact: le mouvement est *rectiligne uniforme*.

#align(center)[#image("figures/taca_1.png",width:80%)] 
== Bilan des forces

#align(center)[#image("figures/taca.png",width:80%)] 

_Conclusion_

- Pendant la phase 1: Les forces ne se compensent pas: $ arrow(P) + arrow(R)+ arrow(F) != arrow(0)$
- Pendant la phase 2: Les forces se compensent : $ arrow(P) + arrow(R)+ arrow(F) = arrow(0)$

= Principe d'inertie
== Un peu de logique...

Deux propositions sont *équivalentes* si l'une est vraie alors l'autre aussi et réciproquement.

#exemple[ "Être majeur" et  "avoir un âge supérieur ou égal à 18" sont deux propositions. 
- Ces 2 propositions sont elles équivalentes ? Justifier soigneusement.
- Expliquez pourquoi "Avoir 4 côtés égaux", "Etre un carré" ne sont pas deux équivalences]

== Enoncé du principe d'inertie

#définition[
Lorsqu'un système subit des forces qui se compensent alors son mouvement est rectiligne uniforme. Réciproquement, si un système est en mouvement rectiligne uniforme alors les forces qui agissent sur lui se compensent.
]

 *Remarque*: L'immobilité d'un système est un MRU de vitesse nulle, le principe d'inertie s'applique encore.
#align(center)[#image("figures/principe_inertie.png",width:75%)]
#exemple[Un palet de hockey glisse sur la glace après avoir été frappé par un joueur.
+ Faire un DOI où le système étudié est le palet
+ On admet que l'action de la glace sur le palet est verticale. Faire un schéma représentant les forces qui agissent sur le palet.
+ En déduire le mouvement du palet en utilisant le principe d'inertie.]

== Contraposée du principe d'inertie

#définition[Si le mouvement du système n'est pas rectiligne uniforme alors les forces qu'il subit ne se compensent pas. Et réciproquement.]
_Exercice 12, 14, 19 et 21 p 193_
// #pagebreak(weak:true)

#exercice[
#figure(grid(columns: (6cm,1fr),align: (top,left) ,
[#image("figures/skateur.png",width:6cm)],
[Un skateur roule tout droit. Le système étudié et le skateur + le skate. Le sol agit sur chacune des 4 roues. Cette action est modélisée par une seule force verticale, vers le haut de valeur: 650 N.
 
+ Faire un DOI appliqué au système "skateur"
+ Sachant que la masse du skateur et de son skate est 65 kg. Calculer son poids. On prendra g=10 N/kg.
+ Représenter sur un schéma les forces qui s'appliquent au système.
+ Appliquer le principe d'inertie pour prédire et nommer le mouvement du système.
]  
))
]
