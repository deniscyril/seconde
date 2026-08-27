#import "../../_assets/template_physique.typ": *

#show: conf

#chapitre[Ondes mécaniques]

= Introduction

Les ondes mécaniques sont omniprésentes : le son d'un instrument de musique, les vagues à la surface de l'eau, les tremblements de terre dans le sol ou encore les ultrasons en imagerie médicale. Dans tous ces cas, *une perturbation se propage dans un milieu matériel sans déplacer la matière*, mais en transportant de l'énergie d'un point à un autre.

#important[
  Une onde mécanique *ne peut pas se propager dans le vide* : elle nécessite un milieu matériel élastique. Le son, par exemple, ne se propage pas dans l'espace interstellaire.
]

= Onde mécanique progressive

== Définition

#définition[
  Une *onde mécanique progressive* est la propagation d'une *perturbation* dans un *milieu matériel élastique*, sans transport de matière. Cette perturbation s'accompagne d'un *transport d'énergie*.

  La source crée une perturbation locale qui se transmet de proche en proche dans le milieu.
]

#exemple[
  - *Onde sur une corde* : on secoue une extrémité d'une corde tendue, une déformation se propage le long de la corde.
  - *Onde à la surface de l'eau* : une pierre jetée dans l'eau crée des vaguelettes concentriques.
  - *Onde sonore* : un haut-parleur crée des variations de pression dans l'air qui se propagent vers l'auditeur.
  - *Onde sismique* : un tremblement de terre génère des ondes qui se propagent dans la croûte terrestre.
]

== Ondes longitudinales et transversales

#définition[
  - Une onde est *longitudinale* si la direction de la perturbation est *parallèle* à la direction de propagation.

    _Exemple :_ onde sonore dans un gaz (compressions et dilatations successives), onde de compression dans un ressort.

  - Une onde est *transversale* si la direction de la perturbation est *perpendiculaire* à la direction de propagation.

    _Exemple :_ onde le long d'une corde tendue, onde à la surface de l'eau (principalement).
]

#application[
  Identifier si chacune des ondes suivantes est longitudinale ou transversale :

  a) Le son se propageant dans l'air. \
  b) Une vague à la surface de la mer. \
  c) La déformation se propageant le long d'un ressort que l'on comprime brusquement.

  *Correction :*

  a) *Longitudinale* : les molécules d'air se déplacent dans le même sens que la propagation (compressions et dilatations).

  b) *Transversale* (principalement) : les particules d'eau montent et descendent, perpendiculairement au déplacement de la vague.

  c) *Longitudinale* : la zone comprimée se déplace dans le sens de propagation de l'onde.
]

== Propriétés des ondes mécaniques progressives

#important[
  Les ondes mécaniques progressives ont deux propriétés fondamentales :

  - Elles se propagent à partir de la source dans *toutes les directions* offertes par le milieu (propagation 1D le long d'une corde, 2D à la surface de l'eau, 3D pour le son dans l'air).

  - Elles peuvent se *superposer* : si deux ondes se croisent, chacune poursuit son chemin sans être perturbée.
]

= Célérité d'une onde et retard

== La célérité

#définition[
  La *célérité* $v$ d'une onde est la vitesse de propagation de la perturbation dans le milieu. Elle s'exprime en *m·s⁻¹*.

  La célérité *dépend du milieu* de propagation (nature, température, pression…) mais est *indépendante de la source*.
]

#exemple[
  Célérité du son dans différents milieux à 20 °C :

  #align(center)[
    #table(
      columns: (2fr, 1.5fr),
      align: (left, center),
      [*Milieu*], [*Célérité (m·s⁻¹)*],
      [Air], [340],
      [Eau], [1 480],
      [Béton], [3 100],
      [Acier], [5 000],
    )
  ]

  Le son se propage environ 4 fois plus vite dans l'eau que dans l'air, et 15 fois plus vite dans l'acier.
]

== Le retard

#définition[
  Lorsqu'une onde de célérité $v$ parcourt une distance $d$ entre deux points A et B, elle met un temps $tau$ (tau) pour aller de A à B. Ce temps est appelé *retard*.

  $ v = d / tau quad arrow.l.r.double quad d = v times tau quad arrow.l.r.double quad tau = d / v $

  - $v$ : célérité en m·s⁻¹
  - $d$ : distance AB en m
  - $tau$ : retard en s
]

#application[
  Un feu d'artifice est tiré à $d = qty("1,02", "km")$ d'un observateur. La célérité du son dans l'air est $v = qty("340", "m/s")$.

  Calculer le retard $tau$ avec lequel l'observateur entend l'explosion après avoir vu l'éclair.

  *Correction :*

  Conversion : $d = 1,02 "km" = 1020$ m.

  $ tau = d / v = 1020 / 340 = qty("3,0", "s") $

  L'observateur entend l'explosion 3,0 s après l'avoir vue.
]

#application[
  Le 13 mars 1738, Cassini de Thury mesure la célérité du son. Un coup de canon est tiré à Montlhéry. Un observateur à Montmartre, situé à $d = qty("29,0", "km")$, entend l'explosion avec un retard $tau = qty("84,1", "s")$.

  Calculer la célérité du son mesurée et la comparer à la valeur actuelle ($v_"actuelle" = qty("340", "m/s")$).

  *Correction :*

  Conversion : $d = 29,0 times 10^3$ m.

  $ v = d / tau = (29,0 times 10^3) / 84,1 approx qty("345", "m/s") $

  L'écart relatif vaut $(345 - 340)/340 approx 1,5 %$ : résultat remarquablement précis pour l'époque.
]

= Ondes mécaniques périodiques

== Onde périodique et onde sinusoïdale

#définition[
  Une onde mécanique est dite *périodique* lorsque la perturbation se reproduit identique à elle-même à intervalles de temps réguliers.

  Elle est dite *sinusoïdale* si la grandeur physique perturbée varie selon une fonction sinus du temps.
]

#important[
  Pour une onde mécanique périodique, la perturbation observée en tout point a la *même période* que la vibration de la source qui en est à l'origine.
]

== Période et fréquence

#définition[
  La *période temporelle* $T$ est le *plus petit intervalle de temps* au bout duquel le signal se reproduit à l'identique. Elle s'exprime en *secondes (s)*.

  La *fréquence* $f$ est le *nombre de répétitions* du signal par unité de temps. Elle s'exprime en *hertz (Hz)*.

  Période et fréquence sont liées par :

  $ f = 1 / T quad arrow.l.r.double quad T = 1 / f $

  - $f$ en Hz ; $T$ en s
]

#exemple[
  - Le « La3 » de référence : $f = qty("440", "Hz")$ soit $T = 1\/440 approx qty("2,3", "ms")$.
  - L'oreille humaine perçoit les sons entre $qty("20", "Hz")$ et $qty("20", "kHz")$.
  - Ultrasons médicaux : $f$ entre $qty("2", "MHz")$ et $qty("15", "MHz")$, soit $T$ entre 67 ns et 500 ns.
]

#application[
  Un oscilloscope affiche un signal sonore périodique. On mesure que trois périodes occupent $qty("15,0", "ms")$ sur l'axe du temps.

  1. Déterminer la période $T$ de cette onde. \
  2. Calculer la fréquence $f$. \
  3. Ce son est-il audible par l'oreille humaine (domaine 20 Hz à 20 kHz) ?

  *Correction :*

  1. $T = qty("15,0", "ms") \/ 3 = qty("5,0", "ms") = 5,0 times 10^(-3)$ s

  2. $ f = 1 / T = 1 / (5,0 times 10^(-3)) = qty("200", "Hz") $

  3. 200 Hz est compris entre 20 Hz et 20 kHz : *oui*, ce son est audible.
]

== Longueur d'onde

#définition[
  La *longueur d'onde* $lambda$ (lambda) d'une onde progressive périodique est la *plus petite distance* séparant deux points qui vibrent en phase (à l'identique au même instant). Elle s'exprime en *mètres (m)*.

  La longueur d'onde est la *périodicité spatiale* de l'onde : c'est l'analogue spatial de la période temporelle.
]

== Relation entre célérité, longueur d'onde et période

#définition[
  Pour une onde progressive périodique de célérité $v$, de longueur d'onde $lambda$ et de période $T$ :

  $ v = lambda / T = lambda times f $

  D'où l'on tire : $lambda = v times T = v \/ f$ et $T = lambda \/ v$.

  - $v$ en m·s⁻¹ ; $lambda$ en m ; $T$ en s ; $f$ en Hz
]

#important[
  Lors du passage d'une onde d'un milieu à un autre :

  - La *fréquence* $f$ est *intrinsèque à l'onde* : elle *ne change pas*.
  - La *célérité* $v$ et la *longueur d'onde* $lambda$ *changent* car elles dépendent du milieu.
]

#application[
  Le « La3 » ($f = qty("440", "Hz")$) se propage d'abord dans l'air ($v_"air" = qty("340", "m/s")$) puis dans l'eau ($v_"eau" = qty("1480", "m/s")$).

  1. Calculer la longueur d'onde $lambda_"air"$ dans l'air. \
  2. Calculer la longueur d'onde $lambda_"eau"$ dans l'eau. Commenter.

  *Correction :*

  1. $ lambda_"air" = v_"air" / f = 340 / 440 approx qty("0,77", "m") $

  2. La fréquence reste $f = qty("440", "Hz")$ lors du changement de milieu.

     $ lambda_"eau" = v_"eau" / f = 1480 / 440 approx qty("3,4", "m") $

     La longueur d'onde est plus grande dans l'eau car la célérité y est plus élevée.
]

= Tableau récapitulatif — l'essentiel du chapitre

#important[
  #align(center)[
    #table(
      columns: (2.5fr, 2.2fr, 1.8fr, 1fr),
      align: (left, center, left, center),
      [*Notion*], [*Formule*], [*Unités*], [*Exos*],
      [Célérité — retard], [$v = d \/ tau$], [m·s⁻¹ ; m ; s], [1, 2, 3, 6],
      [Fréquence — période], [$f = 1 \/ T$], [Hz ; s], [4, 5],
      [Longueur d'onde], [$lambda = v times T$], [m ; m·s⁻¹ ; s], [4, 5, 7],
      [Relation fondamentale], [$v = lambda times f$], [m·s⁻¹ ; m ; Hz], [4, 5, 7, 8],
    )
  ]
]

// ─────────────────────────────────────────────────────────────────────────────
#chapitre[Exercices — Ondes mécaniques]

#exercice[
  *Propagation le long d'une corde*

  On considère une déformation se propageant le long d'une corde tendue. À l'instant $t$, la déformation se trouve au point M. À l'instant $t + tau$, elle se trouve au point M', situé à $d = qty("45", "cm")$ de M. On mesure $tau = qty("0,30", "s")$.

  *1. À propos de l'onde.*

  a) De quel type d'onde s'agit-il (mécanique ou électromagnétique) ? \
  b) Cette onde est-elle longitudinale ou transversale ? Justifier.

  *2. Aspect quantitatif.*

  a) Comment s'appelle la durée $tau$ ? \
  b) Quelle relation existe-t-il entre $d$, $tau$ et la célérité $v$ ? \
  c) Calculer la célérité $v$ de l'onde. \
  d) De quoi dépend principalement cette célérité ?
]

#exercice[
  *Estimer la distance de la foudre*

  Un observateur voit un éclair et entend le tonnerre $tau = qty("3,5", "s")$ plus tard. La célérité du son dans l'air est $v = qty("340", "m/s")$.

  1. Calculer la distance $d$ séparant l'observateur du point d'impact de la foudre.

  2. Une méthode populaire consiste à multiplier le nombre de secondes par 300 pour obtenir la distance en mètres. Appliquer cette méthode. La distance obtenue est-elle surestimée ou sous-estimée ? Justifier.

  3. La lumière a une célérité $c = 3,00 times 10^8$ m·s⁻¹. Calculer le retard de la lumière pour cette distance. Ce retard est-il négligeable par rapport à celui du son ?
]

#exercice[
  *Sonar d'un bateau de pêche*

  Un bateau de pêche utilise un sonar pour détecter les poissons. Le sonar émet une salve d'ultrasons et reçoit l'écho après $t_1 = qty("400", "ms")$. La célérité des ultrasons dans l'eau est $v_"eau" = qty("1480", "m/s")$.

  1. Pourquoi utilise-t-on des ondes mécaniques ultrasonores plutôt que des ondes lumineuses pour sonder les fonds marins ?

  2. Calculer la profondeur $p_1$ à laquelle se trouvent les poissons. _(Attention : l'onde fait un aller-retour !)_

  3. Un second écho provenant du fond marin est reçu à $t_2 = qty("600", "ms")$. Calculer la profondeur $p_2$ du fond.
]

#exercice[
  *Caractéristiques d'une onde sonore à l'oscilloscope*

  Un microphone relié à un oscilloscope capte un son pur. On mesure que deux périodes correspondent à $qty("8,0", "ms")$ sur l'axe du temps.

  *Données :* $v_"air" = qty("340", "m/s")$ ; $v_"eau" = qty("1480", "m/s")$.

  1. a) Déterminer la période $T$ de cette onde. \
     b) Calculer la fréquence $f$. \
     c) Ce son est-il audible (domaine 20 Hz à 20 kHz) ?

  2. a) Calculer la longueur d'onde $lambda$ dans l'air. \
     b) Ce même son se propage ensuite dans l'eau. Calculer $lambda_"eau"$. La fréquence change-t-elle lors du changement de milieu ?
]

#exercice[
  *Tableau des grandeurs caractéristiques*

  Recopier et compléter le tableau ci-dessous.

  *Donnée :* célérité du son dans l'air $v_"air" = qty("340", "m/s")$.

  #align(center)[
    #table(
      columns: (2.8fr, 1.3fr, 1.3fr, 1.3fr),
      align: center,
      [*Onde*], [$lambda$ (m)], [$f$ (Hz)], [$v$ (m·s⁻¹)],
      [« La3 » dans l'air], [...], [440], [340],
      [Houle au large des côtes], [50], [0,20], [...],
      [Onde dans un ressort], [0,512], [...], [3,20],
    )
  ]
]

#exercice[
  *Les frères Dalton et l'attaque du train*

  Les frères Dalton attendent l'arrivée d'un train. Joe tend l'oreille contre le rail. Averell, à $d = qty("10,0", "km")$ du lieu d'un déraillement, entend le bruit.

  *Données :* $v_"acier" = qty("5000", "m/s")$ ; $v_"air" = qty("340", "m/s")$.

  *1. Dans le rail (acier) :*

  a) Rappeler la relation entre $v$, $d$ et $tau$. \
  b) Calculer le temps $tau_"acier"$ mis par le son pour parcourir $d = qty("10,0", "km")$ dans le rail. \
  c) Combien de temps après le déraillement le son parvient-il par l'air ?

  *2.* Calculer le gain de temps obtenu en tendant l'oreille contre le rail. Commenter.
]

#exercice[
  *Corde de guitare*

  La célérité d'une onde le long d'une corde est donnée par $v = sqrt(T_"corde" \/ mu)$, où $T_"corde"$ est la tension de la corde (en N) et $mu$ sa masse linéique (en kg·m⁻¹).

  *Données :* longueur de la corde $L = qty("90", "cm")$ ; masse de la corde $m = qty("10", "g")$ ; tension $T_"corde" = qty("100", "N")$.

  1. a) Définir la masse linéique $mu$ et établir la relation entre $mu$, $L$ et $m$. \
     b) Calculer $mu$.

  2. Calculer la célérité $v$ de l'onde dans cette corde.

  3. L'analyse du son émis montre une période $T_"son" = qty("3,30", "ms")$.

  a) Calculer la fréquence $f$ du son émis. \
  b) La note cherchée est un Mi3 à $qty("330", "Hz")$. La note émise est-elle juste ? Que doit faire le musicien pour corriger sa guitare (sachant que $f$ augmente quand $T_"corde"$ augmente) ?
]

#exercice[
  *Distance Terre-Lune par télémétrie laser*

  Des réflecteurs déposés sur la Lune lors des missions Apollo permettent de mesurer la distance Terre-Lune. On envoie un faisceau laser et on mesure le temps d'aller-retour $t = qty("2,54", "s")$.

  *Donnée :* célérité de la lumière $c = 3,00 times 10^8$ m·s⁻¹.

  1. Calculer la distance Terre-Lune en km.

  2. a) Si l'on tentait cette expérience avec des ultrasons ($v_"son" = qty("340", "m/s")$), quel serait le temps d'aller-retour ? \
     b) Pourquoi cette expérience avec des ultrasons est-elle impossible ?
]

#exercice[
  *Défi — Localiser l'épicentre d'un séisme*

  Lors d'un séisme, deux types d'ondes se propagent depuis l'épicentre :
  - *Ondes P* (longitudinales) : $v_P = qty("6,00", "km/s")$
  - *Ondes S* (transversales) : $v_S = qty("4,00", "km/s")$

  On note $t_S - t_P$ la différence des temps de trajet mesurée par un sismographe situé à distance $d$ de l'épicentre.

  *1.* Expliquer pourquoi les ondes P arrivent toujours avant les ondes S dans un sismographe.

  *2.* En exprimant $t_P = d\/v_P$ et $t_S = d\/v_S$, montrer que :

  $ d = (t_S - t_P) / (1\/v_S - 1\/v_P) $

  *3.* Un sismographe A détecte les ondes P à $t_P = qty("53", "s")$ et les ondes S à $t_S = qty("80", "s")$ après l'origine du séisme. Calculer la distance $d_A$ entre le sismographe A et l'épicentre.

  *4.* Deux autres sismographes donnent $d_B = qty("180", "km")$ et $d_C = qty("290", "km")$.

  a) Expliquer comment, à partir des trois distances, on localise précisément l'épicentre (méthode géométrique). \
  b) Qu'obtiendrait-on avec un seul sismographe ? Avec deux ? Pourquoi trois sont-ils nécessaires pour une localisation unique ?
]
