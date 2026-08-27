#import "../_assets/template_physique.typ": *

// On applique le template à tout le document
#show: conf
#chapitre[Mesure & incertitudes 🎲]

Ce document accompagne l'atelier en ligne : #text(fill: c-primary, weight: "bold")[#link("https://deniscyril.github.io/physiquechimie/mesure-incertitudes/")[deniscyril.github.io/physiquechimie/mesure-incertitudes]]. \
Première partie : l'essentiel à retenir. Deuxième partie : tu manipules l'atelier. Troisième partie : tu appliques seul.

= L'essentiel à retenir

== La variabilité de la mesure

#définition[
  Mesurer une grandeur physique, c'est obtenir des valeurs qui *varient d'un essai à l'autre*, même si rien ne change (même opérateur, même instrument, mêmes conditions). Aucune mesure n'est parfaite : la variabilité dépend de l'*instrument* et du *protocole*.
]
#exemple[
  Trois chronométrages de la même période d'un pendule : 2,05 s ; 1,98 s ; 2,03 s.
]

== Moyenne et écart-type

#définition[
  Pour une série de $n$ mesures indépendantes :
  la *moyenne* $overline(x)$ est la meilleure estimation de la grandeur ;
  l'*écart-type* $s$ caractérise la variabilité : c'est la « largeur » de la dispersion des valeurs autour de la moyenne.
]
#exemple[
  Série : 2,05 ; 1,98 ; 2,03 ; 1,94 s $arrow$ $overline(x) = 2,00$ s et $s = 0,05$ s : une mesure s'écarte « typiquement » de 0,05 s de la moyenne.
]

== L'incertitude-type

#définition[
  L'*incertitude-type* $u$ associée à un résultat chiffre le *doute* qui lui reste attaché. Elle s'exprime dans la même unité que la grandeur. Deux façons de l'évaluer : type A (en répétant la mesure) ou type B (à partir de l'instrument).
]

== Évaluation de type A — on répète la mesure

#définition[
  À partir d'une série de $n$ mesures d'écart-type $s$ :
  - incertitude-type d'*une mesure isolée* : $u(x) = s$ ;
  - incertitude-type de la *moyenne* de la série : $u(overline(x)) = s\/sqrt(n)$.
]
#exemple[
  $s = 0,12$ s et $n = 16$ mesures $arrow$ $u(overline(x)) = 0,12\/sqrt(16) = 0,03$ s.
]
#important[
  Ne confonds pas : $s$ ne diminue *pas* quand on accumule les mesures (une mesure isolée reste aussi incertaine) ; c'est $s\/sqrt(n)$, l'incertitude de la *moyenne*, qui diminue. Pour gagner un facteur 10, il faut 100 mesures !
]

== Évaluation de type B — une seule mesure, un instrument connu

#définition[
  Sans répéter la mesure, $u$ s'évalue à partir des caractéristiques de l'instrument (formules fournies) :
  - instrument *gradué* de résolution $r$ : $u = r\/sqrt(12)$ ;
  - *tolérance constructeur* $plus.minus e$ (verrerie jaugée, balance…) : $u = e\/sqrt(3)$.
]
#exemple[
  Règle graduée au mm : $u(L) = 1\/sqrt(12) approx 0,3$ mm. \
  Fiole jaugée de 100,0 mL, tolérance gravée $plus.minus 0,1$ mL : $u(V) = 0,1\/sqrt(3) approx 0,06$ mL.
]
#important[
  La tolérance $plus.minus e$ gravée sur la verrerie *n'est pas* l'incertitude-type : il faut la convertir ($u = e\/sqrt(3)$). Et un bécher n'est pas un instrument de mesure — ses graduations sont simplement indicatives.
]

== Incertitudes composées

#définition[
  Quand un résultat se *calcule* à partir de plusieurs grandeurs mesurées, leurs incertitudes se composent. Deux chemins :
  - la *formule de propagation* (fournie) — pour un produit ou un quotient comme $rho = m\/V$ :
    $ u(rho)/rho = sqrt((u(m)/m)^2 + (u(V)/V)^2) $
  - la *simulation Monte-Carlo* : on tire au hasard un grand nombre de couples $(m, V)$ compatibles avec les mesures, on calcule $rho$ à chaque tirage, et $u(rho)$ est l'écart-type des résultats. Aucune formule nécessaire — et la méthode reste valable quand la formule (qui n'est qu'une approximation) se dégrade.
]
#exemple[
  $m = (100,00 plus.minus 0,05)$ g et $V = (100,0 plus.minus 0,1)$ mL $arrow$
  $u(rho)\/rho = sqrt((0,0005)^2 + (0,001)^2) approx 0,0011$, soit $u(rho) approx 0,0011$ g/mL.
]

== Écrire un résultat de mesure

#définition[
  L'incertitude-type s'arrondit à *1 ou 2 chiffres significatifs* ; la valeur s'arrondit *au même rang décimal*. On écrit : $x = ("valeur" plus.minus u)$ unité.
]
#exemple[
  $overline(T) = 2,0374$ s et $u = 0,0261$ s $arrow$ $T = (2,04 plus.minus 0,03)$ s.
]

== Comparer à une valeur de référence : le z-score

#définition[
  Pour comparer un résultat $m_"mes"$ (d'incertitude-type $u(m)$) à une référence $m_"réf"$ :
  $ z = abs(m_"mes" - m_"réf") / u(m) $
  Si $z lt.eq 2$ : les valeurs sont *compatibles*. Si $z > 2$ : elles sont *incompatibles* — il faut chercher une erreur.
]
#exemple[
  $lambda = (644 plus.minus 4)$ nm contre $lambda_"réf" = 650$ nm $arrow$ $z = 6\/4 = 1,5 lt.eq 2$ : compatible.
]

= À toi de jouer : manipule l'atelier

Ouvre l'atelier et suis les modules dans l'ordre. Réponds sur ce document.

== 🎲 La mesure varie (module Seconde)

#travail[
  + Protocole « chronomètre — 1 période » : réalise *100 mesures*. Note : moyenne = .............. s ; écart-type $s$ = .............. s.
  + Ajoute *100 mesures de plus*. L'écart-type a-t-il nettement changé ? ..............
    Qu'en conclus-tu sur ce que mesure $s$ ?
    #lignes_reponse(2)
  + Passe au protocole « 10 périodes » et refais 100 mesures : $s$ = .............. s. Environ combien de fois plus petit qu'avant ? .............. Explique pourquoi ce protocole est plus précis.
    #lignes_reponse(2)
  + La moyenne a-t-elle changé d'un protocole à l'autre ? .............. La variabilité vient-elle du pendule ou de l'acte de mesure ? Justifie.
    #lignes_reponse(2)
]

== 🎯 s ou s/√n ? (module Terminale 1)

#travail[
  + Réalise plusieurs séries avec $n = 4$, puis avec $n = 64$. La valeur de $s$ dépend-elle de $n$ ? ..............
  + Lance « 300 séries » avec $n = 16$. Note : écart-type des *moyennes* = .............. s ; prédiction $s\/sqrt(n)$ = .............. s. Concordent-ils ? ..............
  + On veut une incertitude sur la moyenne 10 fois plus petite que $s$. Combien de mesures faut-il ? ..............
]

== 🎰 Formule ou Monte-Carlo ? (module Terminale 2)

#travail[
  + Choisis la *fiole jaugée*. Quelle est sa tolérance ? .............. Quelle incertitude-type en déduit-on, et par quelle formule ?
    #lignes_reponse(1)
  + Lance les 50 000 tirages. Compare $u(rho)$ « formule » et « Monte-Carlo » : ..............................................
  + Choisis maintenant le *bécher gradué* et relance. Note les deux valeurs de $u(rho)$ : formule = .............. ; Monte-Carlo = .............. Que devient la forme de l'histogramme ?
    #lignes_reponse(1)
  + Pourquoi peut-on dire que Monte-Carlo « évite un calcul parfois approché » ?
    #lignes_reponse(2)
]

== 🔦 TP : mesurer λ par diffraction

#travail[
  + Mesure la largeur $L$ de la tache centrale pour les *5 fentes* (double pointage des minima). Reporte la série :
    #table(
      columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center,
      [$a$ (µm)], [60], [80], [100], [120], [150],
      [$lambda$ (nm)], [], [], [], [], [],
    )
  + Note le traitement de la série : $overline(lambda)$ = .............. nm ; $s$ = .............. nm ; $u(overline(lambda)) = s\/sqrt(5)$ = .............. nm.
  + Pourquoi l'incertitude retenue est-elle $s\/sqrt(5)$ et non $s$ ?
    #lignes_reponse(2)
  + z-score contre la référence (650 nm) : $z$ = .............. Conclusion : ..............................................
]

== 🌈 TP : mesurer λ par interférences

#travail[
  + Pointe deux franges brillantes séparées de *10 interfranges*. Note : $Delta x$ = .............. mm ; $u(Delta x) = 0,5 sqrt(2) approx 0,71$ mm ; $i$ = .............. mm ; $u(i)$ = .............. mm.
  + Pourquoi mesurer 10 interfranges d'un coup plutôt qu'un seul ?
    #lignes_reponse(2)
  + Lance le Monte-Carlo. Quelle grandeur domine le budget d'incertitude ($i$, $b$ ou $D$) ? ..............
  + Note le résultat : $lambda$ = ( .............. $plus.minus$ .............. ) nm, et le z-score contre 650 nm : $z$ = ..............
  + Compare les deux méthodes (diffraction / interférences) : $z$ = .............. Sont-elles compatibles ? Pourquoi compare-t-on des résultats *avec* leurs incertitudes et jamais des valeurs nues ?
    #lignes_reponse(2)
]

= Exercices d'application

#exercice[
  *Focale d'une lentille (type A).* Huit mesures indépendantes de la distance focale $f'$ d'une lentille, en cm :
  #align(center)[10,2 · 9,8 · 10,0 · 10,4 · 9,9 · 10,1 · 10,3 · 9,7]
  + Calculer la moyenne $overline(f')$ et l'écart-type $s$ de la série.
  + En déduire l'incertitude-type sur la moyenne.
  + Écrire le résultat avec un nombre adapté de chiffres significatifs.
  + Le constructeur annonce $f'_"réf" = 10,0$ cm. Calculer le z-score et conclure.
]

#exercice[
  *Masse volumique de l'éthanol (type B + incertitude composée).* On remplit une fiole jaugée de $V = 50,0$ mL (tolérance gravée $plus.minus 0,06$ mL) d'éthanol, et on pèse ce volume : $m = 39,48$ g (balance de tolérance $plus.minus 0,02$ g).
  + Évaluer $u(V)$ et $u(m)$ (évaluations de type B).
  + Calculer $rho$ puis $u(rho)$ à l'aide de la formule de propagation (fournie au I) :
    $u(rho)\/rho = sqrt((u(m)\/m)^2 + (u(V)\/V)^2)$.
  + Écrire le résultat.
  + Les tables donnent $rho_"réf" = 0,789$ g/mL à 20 °C. Calculer le z-score et conclure.
]

#v(0.5em)
#important[
  *Résultats bruts* (sans détail — à toi de retrouver le chemin !) \
  *Exercice 1 :* $overline(f') = 10,05$ cm ; $s approx 0,24$ cm ; $u(overline(f')) approx 0,09$ cm ; $f' = (10,05 plus.minus 0,09)$ cm ; $z approx 0,6 lt.eq 2$ : compatible avec le constructeur. \
  *Exercice 2 :* $u(V) approx 0,035$ mL ; $u(m) approx 0,012$ g ; $rho = 0,7896$ g/mL ; $u(rho) approx 0,0006$ g/mL ; $rho = (0,7896 plus.minus 0,0006)$ g/mL ; $z approx 1,0 lt.eq 2$ : compatible avec les tables.
]
