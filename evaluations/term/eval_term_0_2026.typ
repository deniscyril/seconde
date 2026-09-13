//#import "@preview/unify:0.7.1": num, unit, qty
#import "@preview/cetz:0.3.2": canvas, draw
#import "../../_assets/template_evaluation.typ": *

#show: conf

#identification()
//#entete_eval("DS: Forces & Principe d'inertie", "15")

#box(stroke: 0.5pt, inset: 8pt, width: 100%)[
  *Consignes :* 
  - L'exercice 1 n'est pas à traiter *si vous êtes concerné par un PAP*.
  - Les résultats numériques seront #underline[soulignés] et accompagnés de l'unité qui convient. 
  - Dans ce devoir, le nombre d'Avogadro vaut  $N_A= qty("6.02e23", "mol^-1") $
]
#exercice[Données pour l'exercice: $V_m = qty("24,0","L/mol")$ , $M_("Fe")=qty("56","g/mol")$, la densité de l'éthanol est d=0,79, l'éthanol a une masse molaire qui vaut $M_("ethanol")=qty("46,0","g/mol")$

 La masse d'un clou en fer est 3,0 g. 
+ Calculer la quantité de matière contenu dans un clou. En déduire le nombre d'atomes de fer présents dans ce clou.
+ On dispose d'un échantillon de 10 mL d'éthanol liquide. Calculer la quantité de matière en éthanol contenu dans l'échantillon.  En déduire sa masse.
//  On fait réagir le clou avec une solution d'ion hydrogène $H^+_("(aq)")$. Les ions hydrogènes sont en large excès. L'équation de la tranformation chimique s'écrit:
//  $  F e_("(s)")+ 2 H^+_("(aq)") arrow.r.long F e^("2+")_("(aq)") + H_(2("g"))   $
// +  Calculer le volume de dihydrogène produit.

// + L'éthanol $C_2H_6O$ est un liquide 
   ]

#exercice[#figure(grid(columns: (9cm,1fr),align: (top,left) ,
[#image("../figures/schema_magnesium.png",width:8cm)],
[ On introduit dans un erlenmeyer un morceau de
ruban de magnésium $ M g_("(s)")$, de masse m= 40 mg et un volume Va = 100 mL d’acide
chlorhydrique. 
- L'acide chlorhydrique est une solution contenant des ions  $H ^+$
- La solution d'acide  chlorhydrique a une concentration en ions $H^+$ égale à $C_a = qty("0,50","mol/L") $
]
 ))
En réalisant cette expérience, on recueuille à l'aide du tube à dégagement du dihydrogène gazeux dont on peut mesurer le volume à l' aide de l'éprouvette graduée. D'autre part, il se forme des ions $M g^("2+")$ dans l'erlenmeyer.

*Données*: Volume molaire d'un gaz: $V_m = qty("24,0","L/mol")$ , $M_("Mg")=qty("24,3","g/mol")$, $M_("H")=qty("1,0","g/mol")$

+ Identifier et nommer les réactifs et les produits de cette transformation chimique.
+ Calculer les quantités de matières initiales de magnésium et d'ions $H^+$.
+ Compléter le tableau d'avancement et déterminer $x_("max")$. #align(center)[#image("../figures/tableau_avancement_magnesium.png",width:90%)]
+ Calculer le volume de dihydrogène formé à la fin de la réaction.
+ Quel est le réactif limitant. Justifier brièvement.
+ Quelle quantité de matière initiale doit-on choisir pour le réactif de la question précédente afin que le mélange soit stoechiométrique.
]



#exercice()[On dispose dans une fiole jaugée de 100 mL une solution mère $S_0$ ayant une concentration en ions nitrite: $c_0 = qty("3,0e-3","mol/L")$.
P partir de $S_0$, on souhaite préparer une solution $S_1$ de volume 50,0 mL et de concentration en ions nitrite $c_1 = qty("6,0e-4","mol/L")$.

+ Indiquer les étapes clés du protocole expérimental afin de préparer $S_1$.
+ Indiquer clairement la liste du matériel nécessaire à la préparation de $S_1$.
]

#exercice()[
  + #figure(grid(columns: (6cm,1fr),align: (top,left) ,
[#image("../figures/acide_ethanoique.png",width:2cm)],
[- Nommer la molécule, le groupe caractéristiques ainsi que la famille fonctionnelle. 
- Écrire la formule topologique de cette molécule. ]  
 ))
  + Représenter les formules semi-développées du 2-méthylbutan-1-ol, de la propan-2-one et du méthanoate de méthyle. 
  + _(D'après Bac 2025)_ #figure(grid(columns: (6cm,1fr),align: (top,left) ,
[#image("../figures/acide_glycolique.png",width:3cm)],
[ Recopier sur la copie la formule semi-développée de la molécule d’acide
glycolique puis entourer et nommer les groupes caractéristiques présents dans la
molécule en précisant les familles fonctionnelles associées.
]  
 ))

 ]


 
