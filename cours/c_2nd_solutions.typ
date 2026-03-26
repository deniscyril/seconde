#import "../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf
#chapitre[Solutions Aqueuses]

= Vocabulaire

#align(center)[#image("figures/solutions_schema_1.jpeg",width:70%)]

#définition[
- Le solvant est le liquide capable de dissoudre un soluté.
- On obtient une solution.]

*Remarque*  Si le solvant est l'eau, on parle de solution aqueuse.

= Solution ionique, Solution moléculaire
== Exemples

- Une solution ionique contient des *ions*.
- Une solution moléculaire contient des molécules.

*Exemple 1* Le sel de cuisine est un solide blanc qui s'appelle le *chlorure de sodium* sa formule est: $N a C ell_("(s)")$

schéma de la dissolution du sel

_Remarque_ L'eau salée comme toutes les solutions ioniques conduit l'électricité (grace aux ions).

*Exemple 2* Dissolution du glucose dans l'eau

schéma

Notation:
- Le glucose solide blanc introduit dans l'eau a pour formule: $C_6 H_12 O_("6" "(s)")$
- Le glucose dissout dans l'eau a pour formule: $C_6 H_12 O_("6" "(aq)")$

== Equation de dissolution

$ N a C ell_"(s)" arrow N a^+ + C ell^-_"(aq)" $
$ C_6 H_12 O_"6(s)" arrow  C_6 H_12 O_"6(aq)" $
$ C u S O_("4 (s)") arrow C u^"2+" _"(aq)" + S O_"4 (aq)"^"2-"  $

= Concentration massique
== Situation
On dissout du sulfate de cuivre dans de l'eau.
#figure(grid(columns: (6cm,1fr),align: (top,left) ,
[#image("figures/solutions_1.png",width:5cm)],
[ 1. Comment évolue la concentration quand on augmente la masse du soluté sans modifier le volume de d'eau ?
2. Comment évolue la concentration quand pour une même quantité de soluté on augmente le volume de la solution ?

3. Hachurer le contenu des béchers en fonction de sa concentration.]  
 ))

== Calcul de la concentration
#définition[La concentration d'une solution de volume V qui contient une masse m de soluté vaut : $ c = m / V $
Unités: Si m en g et V en L alors c est en g/L
]

#application[ 
  Calculer $m_1$, $V_2$ et $C_3$.
#align(center)[
  #table(columns: (5cm,1fr,1fr,1fr), align: center,
  [Masse de soluté dissous (g)],[$m_1$], [8,0], [0,15],
  [Volume de la solution (L)] , [0,50] , [$V_2$] , [0,020],
  [Concentration en masse en soluté (g/L)] , [20] , [4,0], [$C_3$])
 ] Ex 5 p42
#align(center)[#image("figures/solutions_exo1.jpeg",width:65%)]

]
*FAIRE EX 2 de la fiche*
= Préparation de solution
== Préparation par dissolution
#exemple[ On veut préparer *100 mL* d'une solution de serum physiologique à *9,0 g/L* de chlorure de sodium.]
*Liste du matériel nécessaire: *
- bécher
- Chlorure de sodium solide
- fiole jaugée de 100 mL
- balance
- eau distillée
*Calcul de la masse à peser:*
On sait que $C = m / V$ donc $m = C times V = 9,0 times 0,100 = 0,90$ g.
*Protocole*
1. On pèse 0,9 g de chlorure de sodium à l'aide d'une *balance*
2. On les introduit dans une *fiole jaugée* de 100 mL
3. On dissout avec de l'eau.
4. On remplie jusqu'au trait de jauge.

== Préparation de solution par dilution
=== Contexte

On ne dispose plus de sel mais on veut encore faire 100 mL de serum physiologique. On a une solution de chlorure de sodium déjà prête mais à une concentration de 45 g/L.

=== Vocabulaire
#définition[
  - La solution la plus concentrée est appelée solution mère. 
  - La solution obtenue par dilution est appelée solution fille.
  - Facteur de dilution: C'est le rapport $ F = C_("mère") / C_("fille") = V_("fiole") /  V_("pipette") $
]

*EX 13 p 43* "côté maths" pour apprendre à isoler un terme

*Liste du Matériel*
- Fiole jaugée de 100 mL 
- Eau distillée
- Pipette jaugée de 20 mL (à justifier par un calcul)

*Calcul et Méthode*

  + Identification:
    $C_("mère") = 45$ g/L ; $C_("fille") = 9,0$ g/L et $V_("fiole") = 100$ mL.
  + Calcul du facteur de dilution:
    $ F= C_("mère") / C_("fille") = 45 / 9 = 5,0 $
  + Calcul du volume de la pipette
    $V_("pipette") = V_("fiole") / F = 100 / 5 = 20$ mL

#pagebreak()
#chapitre[EXERCICES sur les Solutions Aqueuses]

*EXERCICE  1* Connais-tu le cours ?

1. Fais la liste de la verrerie dont on a besoin pour préparer une solution à partir d'un soluté solide.
2. Donne la formule qui permet de calculer la concentration d'une solution contenant une masse m de soluté et occupant un volume V. Précise les unités de chaque grandeur.


*EXERCICE 2* Le café...

On dispose d'un thermos contenant du café occupant un volume de 2,0 L dans laquelle on a dissout 40 g de sucre en poudre. 

+ Quel est le soluté ? Quel est le solvant ?
+ Faire un schéma et calculer la concentration en sucre dans le café. 
+ On verse dans une tasse un peu de café. La concentration en sucre de la solution de café dans la tasse est-elle la même que dans le thermos. Le gout du café est il le même dans la tasse et dans le thermos ?
+ Le volume de café versé dans la tasse est 20 cL. Quelle est la quantité de sucre dissous dans le café contenu dans la tasse ?
+ Vous trouvez le café un peu trop sucré et vous ajoutez 20 cL d'eau. Quelle est la nouvelle concentration de la solution ? 

*EXERCICE 3* Préparation d'un solution par dissolution

Le serum physiologique est une solution de chlorure de sodium dont la concentration est 9,0 g/L. On vous demande de préparer 100 mL de serum physiologique.

1. Expliquez en quelques phrases comment réaliser la solution demandée. (liste du matériel, quantité à peser, étapes à réaliser)
2. Malheureusement, vous avez versé trop d'eau. Le volume obtenu est de 110 mL au lieu de 100 mL. Quelle est la concentration de la solution que vous avez obtenu ? 
3. _Facultatif_: En supposant que le sel se dissout sans faire varier le volume de la solution. Calculer la masse de sel à ajouter afin que la concentration obtenue soit à nouveau correcte.
 
*EXERCICE 4* Préparation d'un solution par dilution

On dispose d'une solution mère de sulfate de cuivre de concentration $c_1=20$ g/L. A partir de cette solution, on souhaite préparer une solution fille de volume $V_2=50$ mL et de concentration $c_2$. Pour cela on effectuera une dilution. 

1. Justifier que $c_2<c_1$.
2. La solution diluée a pour concentration $c_2=15$ g/L. Calculer le facteur de dilution entre les deux solutions.
3. En déduire une relation mathématique entre $c_1$, $c_2$, $V_2$ et le volume de solution mère à prélever.
4. Donner le protocole permettant de préparer la solution fille.

*EXERCICE 5*

 Sur la notice d'une solution buvable (sirop) préconisée en cas de bronchite, on constate la présence de 2,00 g de carbocistéine pour 100 mL de solution.

 1. Calculer la concentration en carbocistéine du sirop.
 2. Le fabricant fournit avec le sirop une cuillière mesure de volume V=5,0 mL. Quelle est la masse de carbocistéine que l'on ingère à chaque cuillère de sirop consommée ?
 3. Pour effectuer une analyse du sirop, un chimiste prélève 2,0 mL de sirop et l'introduit dans une fiole jaugée de 25 mL, puis complète ce volume avec de l'eau distillée. Calculer la concentration de la solution obtenue.

#chapitre("TP Préparation de solutions")

*Contexte*

La bouillie bordelaise est un fongicide dont la couleur bleue est due à la présence de sulfate de cuivre dissous en solution aqueuse. L'utilisation de la bouillie bordelaise est utilisée en agriculture à condition que la concentration en masse ne dépasse pas 25 g/L.

Un agriculteur a trouvé plusieurs "recettes" de solutions de bouillie bordelaise: 

#align(center)[
  #table(columns: (5cm,1fr,1fr,1fr,1fr), align: center,
  [Solutions n°],[1], [2], [3],[4] , 
  [masse de sulfate de cuivre dissous en g] , [2,0] , [1,0] , [1,25], [....],
  [Volume de la solution en mL] , [20] , [20],[50], [50],
  [Concentration massique en g/L],[...],[...],[...],[5,0] )
]

+ Nommer le soluté et le solvant de cette solution.
+ Calculer la concentration en masse de soluté dans des solutions 1, 2 et 3.
+ Calculer la masse du sulfate de cuivre à peser pour préparer la solution 4.
+ Quelles sont les solutions qui peuvent être utilisées en agriculture ?
+ Réaliser chacune des solutions et en verser  un échantillon par tube à essai.
+ Schématiser en détail la préparation de la solution 2. On représentera la pesée et l'usage de la fiole jaugée.

*Détermination de la concentration d'une solution inconnue par échelle de teinte*

Une solution de bouillie bordelaise de concentration  inconnue est disponible sur la paillasse du professeur. 

- Prélever un échantillon de bouillie bordelaise à l'aide d'un tube à essai.
-  Déterminer, par comparaison avec les solutions réalisées précédemment,une estimation de sa concentration en masse. En déduire si elle peut être utilisée en agriculture biologique ? 



// $#qty[6.02e23][ mol^-1]$
// $M_O=#qty[16.0][ g mol^-1]$