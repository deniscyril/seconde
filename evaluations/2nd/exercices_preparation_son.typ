#import "@preview/cetz:0.3.2": canvas, draw
#import "../../_assets/template_evaluation.typ": *

#show: conf

// ── Outils locaux ─────────────────────────────────────────────────────
// Nombre avec virgule décimale
#let fr(v, d: 2) = str(calc.round(v, digits: d)).replace(".", ",")

// Graphique de données (points + droite modèle) dessiné avec cetz
// pts : tableau de (x, y) ; slope : coefficient directeur de la droite (none = pas de droite)
#let graphe(
  xmin: 0, xmax: 10, ymax: 1.2, xstep: 1, ystep: 0.1, xlab-every: 1, ylab-every: 2,
  w: 11, h: 6.5, pts: (), slope: none, xlabel: [], ylabel: [], d: 2,
  courbe: none,
) = canvas(length: 1cm, {
  import draw: *
  let sx = w / (xmax - xmin)
  let sy = h / ymax
  let nx = int(calc.round((xmax - xmin) / xstep))
  let ny = int(calc.round(ymax / ystep))
  // quadrillage
  for i in range(nx + 1) {
    line((i * xstep * sx, 0), (i * xstep * sx, h), stroke: 0.3pt + luma(200))
  }
  for j in range(ny + 1) {
    line((0, j * ystep * sy), (w, j * ystep * sy), stroke: 0.3pt + luma(200))
  }
  // axes
  line((0, 0), (w + 0.4, 0), stroke: 0.8pt, mark: (end: "stealth", fill: black))
  line((0, 0), (0, h + 0.4), stroke: 0.8pt, mark: (end: "stealth", fill: black))
  // graduations
  for i in range(nx + 1) {
    if calc.rem(i, xlab-every) == 0 {
      content((i * xstep * sx, -0.3), text(size: 8pt, fr(xmin + i * xstep, d: d)))
    }
  }
  for j in range(ny + 1) {
    if calc.rem(j, ylab-every) == 0 {
      content((-0.15, j * ystep * sy), anchor: "east", text(size: 8pt, fr(j * ystep, d: d)))
    }
  }
  content((w + 0.3, -0.75), anchor: "east", text(size: 9pt, xlabel))
  content((0.15, h + 0.65), anchor: "west", text(size: 9pt, ylabel))
  // courbe continue éventuelle (spectre)
  if courbe != none {
    line(..courbe.map(p => ((p.at(0) - xmin) * sx, p.at(1) * sy)), stroke: 1.3pt + rgb("#2c5f8a"))
  }
  // droite modèle
  if slope != none {
    let xend = calc.min(xmax, ymax / slope)
    line((0, 0), ((xend - xmin) * sx, slope * xend * sy), stroke: 0.9pt + rgb("#c0392b"))
  }
  // points de mesure
  for p in pts {
    let (x, y) = ((p.at(0) - xmin) * sx, p.at(1) * sy)
    line((x - 0.1, y - 0.1), (x + 0.1, y + 0.1), stroke: 1pt)
    line((x - 0.1, y + 0.1), (x + 0.1, y - 0.1), stroke: 1pt)
  }
})

// Bloc « Erreur fréquente » (même esprit que le bloc Important : jaune citron, liseré pointillé)
#let erreur(body) = block(
  width: 100%, inset: 8pt, radius: 2pt,
  fill: rgb("#FAF667").lighten(85%),
  stroke: (left: (thickness: 3pt, paint: rgb("#b5ae00"), dash: "dashed")),
)[#text(weight: "bold", fill: rgb("#8a8400"))[❗ Erreur fréquente] #h(0.4em) #body]

// Résultat souligné
#let res(x) = box(stroke: (bottom: 0.6pt), outset: (bottom: 2pt), x)

// ══════════════════════════════════════════════════════════════════════
//  OSCILLOGRAMME (signal périodique non sinusoïdal, T = 2,5 ms)
// ══════════════════════════════════════════════════════════════════════
#let oscillo() = canvas(length: 1cm, {
  import draw: *
  let w = 12.0   // 8 ms
  let h = 2.0    // demi-hauteur
  let sx = w / 8.0
  // quadrillage : 1 division = 0,5 ms en abscisse
  for i in range(17) {
    line((i * 0.5 * sx, -h), (i * 0.5 * sx, h), stroke: 0.3pt + luma(200))
  }
  for j in range(-4, 5) {
    line((0, j * h / 4), (w, j * h / 4), stroke: 0.3pt + luma(200))
  }
  line((0, 0), (w + 0.4, 0), stroke: 0.8pt, mark: (end: "stealth", fill: black))
  line((0, -h - 0.2), (0, h + 0.4), stroke: 0.8pt, mark: (end: "stealth", fill: black))
  for i in range(9) {
    content((i * sx, -h - 0.35), text(size: 8pt, str(i)))
  }
  content((w + 0.3, -h - 0.8), anchor: "east", text(size: 9pt)[$t$ (ms)])
  content((0.15, h + 0.65), anchor: "west", text(size: 9pt)[tension (V)])
  let T = 2.5
  let pts = range(0, 321).map(k => {
    let t = k * 8.0 / 320
    let y = 0.62 * calc.sin(2 * calc.pi * t / T) + 0.38 * calc.sin(4 * calc.pi * t / T + 0.9)
    (t * sx, y * h * 0.95)
  })
  line(..pts, stroke: 1.3pt + rgb("#2c5f8a"))
})

// ══════════════════════════════════════════════════════════════════════
//  ÉNONCÉS
// ══════════════════════════════════════════════════════════════════════

#align(center)[#text(size: 14pt, weight: "bold")[Exercices de préparation -- Le son]]
#v(0.2cm)

#box(stroke: 0.5pt, inset: 8pt, width: 100%)[
  *Consignes :* ces exercices préparent le devoir sur le son. Rédigez vos réponses, donnez chaque résultat avec son unité et #underline[soulignez les résultats numériques].
]

#v(0.3em)

// ── EXERCICE 1 ────────────────────────────────────────────────────────
#exercice(points: "7")[
  *La flûte de Lina*

  Lina joue une note avec sa flûte à bec. Elle enregistre le son avec un microphone relié à un ordinateur et obtient le signal ci-dessous.

  #align(center)[#oscillo()]

  *Données :* domaine de l'audible : de 20 Hz à 20 kHz ; le diapason de la classe émet un La#sub[3] de fréquence 440 Hz.

  *1.* Le signal est-il périodique ? Est-il sinusoïdal ? Justifier.

  *2.* Mesurer sur la figure la durée correspondant à 3 périodes, puis en déduire la période $T$ du signal.

  *3.* Convertir $T$ en seconde, en écriture scientifique, puis calculer la fréquence $f$ du son.

  *4.* Ce son est-il audible ? Est-il plus grave ou plus aigu que le La#sub[3] du diapason ? Justifier.

  *5.* Un sifflet à chien émet un son de fréquence 25 kHz. Convertir cette fréquence en Hz, en écriture scientifique. Lina peut-elle l'entendre ?

  *6.* *Sans calculatrice*, en détaillant chaque étape, écrire $B$ sous la forme $10^n$ :
  $ B = (10^3 times 10^(-5)) / (10^2)^(-2) $
]

#v(0.3em)

// ── EXERCICE 2 ────────────────────────────────────────────────────────
#exercice(points: "6")[
  *Au stade, puis en montagne*

  #v(0.2em)
  *A. La vitesse du son au stade*

  Lors d'une course, le chronométreur est placé à $d = 100$ m du starter. Il voit la fumée du pistolet immédiatement, puis entend la détonation $Delta t = "0,29"$ s plus tard.

  *1.* Calculer la vitesse $v$ du son dans l'air, en $"m" dot "s"^(-1)$.

  #v(0.2em)
  *B. L'écho de la falaise*

  En randonnée, Hugo se place face à une falaise et crie « Ohé ! ». Il entend l'écho de sa voix $Delta t' = "1,5"$ s après avoir crié. L'écho est le son réfléchi par la falaise, qui revient vers Hugo.

  *Donnée :* vitesse du son dans l'air : $v = 340 "m" dot "s"^(-1)$.

  *2.* Quelle distance le son a-t-il parcourue pendant la durée $Delta t'$ ?

  *3.* En déduire la distance $D$ entre Hugo et la falaise.

  *4.* Le son peut-il se propager sur la Lune, où il n'y a pas d'air ? Justifier.
]

#v(0.3em)

// ── EXERCICE 3 ────────────────────────────────────────────────────────
#exercice(points: "7")[
  *Le jardinier et ses machines*

  Marc est jardinier. Il utilise un taille-haie qui produit, à son oreille, un niveau sonore de 86 dB.

  *Document - Durée d'exposition maximale recommandée*

  Pour un niveau sonore de 80 dB, la durée d'exposition maximale recommandée est de *8 heures par jour*. Chaque fois que le niveau sonore augmente de 3 dB, cette durée est *divisée par 2*. Lorsque l'intensité sonore double, le niveau sonore augmente de 3 dB.

  *1.* Que mesure-t-on avec un sonomètre ? Dans quelle unité ?

  *2.* Déterminer la durée d'exposition maximale recommandée au niveau sonore du taille-haie.

  *3.* Un collègue de Marc utilise un deuxième taille-haie identique, juste à côté de lui. Le collègue affirme : _« Les deux machines ensemble, ça fait 86 + 86 = 172 dB ! »_ Expliquer pourquoi c'est faux, puis déterminer le niveau sonore reçu par Marc.

  *4.* Marc travaille 4 h par jour dans ces conditions. Présente-t-il un risque pour son audition ? Justifier.

  *5.* Marc porte un casque antibruit qui diminue le niveau sonore de 25 dB. Quel niveau sonore parvient alors à ses oreilles ? Conclure.
]

// ══════════════════════════════════════════════════════════════════════
//  CORRIGÉ
// ══════════════════════════════════════════════════════════════════════
#pagebreak()

#align(center)[#text(size: 14pt, weight: "bold")[Corrigé détaillé]]
#v(0.3cm)

// ── Corrigé exercice 1 ────────────────────────────────────────────────
#block(fill: rgb("#2c5f8a"), inset: 6pt, radius: 3pt, width: 100%)[#text(fill: white, weight: "bold")[Exercice 1 -- La flûte de Lina]]

*1.* Le signal se répète identique à lui-même à intervalles de temps réguliers : il est #res[périodique]. Sa forme n'est pas celle d'une sinusoïde (courbe « en vagues » régulières et symétriques) : il est #res[non sinusoïdal].

*2.* On repère deux points identiques du signal séparés de 3 motifs, par exemple le début de l'enregistrement ($t = 0$ ms) et le point identique trois motifs plus loin ($t = "7,5"$ ms, soit 15 divisions de 0,5 ms) :
$ 3T = "7,5" "ms" quad "donc" quad T = ("7,5") / 3 = "2,5" "ms" $
#res[$T = "2,5" "ms"$]. Mesurer plusieurs périodes puis diviser rend la mesure plus précise.

*3.* $T = "2,5" "ms" = "2,5" times 10^(-3) "s"$.
$ f = 1 / T = 1 / ("2,5" times 10^(-3)) = 400 "Hz" $
#res[$f = "4,0" times 10^2 "Hz"$]

#erreur[Calculer $f = 1 / T$ en laissant $T$ en millisecondes : on obtient $f = 1 / "2,5" = "0,4"$ « Hz », un son qui serait inaudible, ce qui est absurde pour une flûte. La relation $f = 1 / T$ donne des hertz *seulement* si $T$ est en secondes. Toujours convertir avant de calculer, et vérifier que le résultat est vraisemblable.]

*4.* $20 "Hz" < 400 "Hz" < 20 000 "Hz"$ : le son est #res[audible]. Sa fréquence est plus petite que celle du La#sub[3] ($400 "Hz" < 440 "Hz"$) : le son de la flûte est #res[plus grave].

*5.* $25 "kHz" = 25 times 10^3 "Hz" = "2,5" times 10^4 "Hz"$. Cette fréquence est supérieure à 20 000 Hz : c'est un #res[ultrason], Lina ne peut pas l'entendre (le chien, lui, l'entend).

*6.* On applique les règles de calcul sur les puissances de 10 :
- au numérateur : $10^3 times 10^(-5) = 10^(3 + (-5)) = 10^(-2)$ ;
- au dénominateur : $(10^2)^(-2) = 10^(2 times (-2)) = 10^(-4)$ ;
- quotient : $10^(-2) / 10^(-4) = 10^(-2 - (-4)) = 10^2$.

#res[$B = 10^2$]

#v(0.4em)

// ── Corrigé exercice 2 ────────────────────────────────────────────────
#block(fill: rgb("#2c5f8a"), inset: 6pt, radius: 3pt, width: 100%)[#text(fill: white, weight: "bold")[Exercice 2 -- Au stade, puis en montagne]]

*1.* La lumière arrive presque instantanément : $Delta t$ est la durée de propagation du son sur 100 m.
$ v = d / (Delta t) = 100 / ("0,29") = 345 "m" dot "s"^(-1) $
#res[$v approx "3,4" times 10^2 "m" dot "s"^(-1)$]

*2.* Le son fait un *aller-retour* : il va de Hugo à la falaise, puis revient. Distance parcourue :
$ d' = v times Delta t' = 340 times "1,5" = 510 "m" $
#res[$d' = 510 "m"$]

*3.* La distance Hugo-falaise est la moitié de la distance parcourue :
$ D = d' / 2 = 510 / 2 = 255 "m" $
#res[$D approx "2,6" times 10^2 "m"$]

#erreur[Oublier l'aller-retour et répondre $D = v times Delta t' = 510$ m. Pendant $Delta t'$, le son a fait le trajet *deux fois*. Faire un petit schéma (Hugo, la falaise, une flèche aller, une flèche retour) évite ce piège. Dans l'exercice de l'orage, au contraire, le son ne fait qu'un aller : il faut toujours se demander quel trajet le son a réellement parcouru.]

*4.* #res[Non] : le son est une vibration qui a besoin d'un *milieu matériel* (air, eau, solide) pour se propager. Sur la Lune, il n'y a pas d'air : le son ne se propage pas dans le vide.

#v(0.4em)

// ── Corrigé exercice 3 ────────────────────────────────────────────────
#block(fill: rgb("#2c5f8a"), inset: 6pt, radius: 3pt, width: 100%)[#text(fill: white, weight: "bold")[Exercice 3 -- Le jardinier et ses machines]]

*1.* Le sonomètre mesure le #res[niveau sonore], exprimé en #res[décibel (dB)].

*2.* $86 "dB" = 80 "dB" + 2 times 3 "dB"$ : la durée de 8 h est divisée 2 fois par 2.
$ 8 "h" -> 4 "h" -> 2 "h" $
#res[Durée maximale : 2 h par jour].

*3.* Le niveau sonore n'est pas proportionnel à l'intensité sonore : on ne peut pas additionner des décibels. Deux machines identiques donnent une intensité *double*, ce qui augmente le niveau sonore de 3 dB seulement :
$ 86 + 3 = 89 "dB" $
#res[Niveau reçu : 89 dB] (et 172 dB serait bien au-delà du seuil de douleur de 120 dB).

#erreur[Additionner les niveaux sonores ($86 + 86 = 172$ dB) ou les multiplier par 2. Doubler l'*intensité* sonore ajoute 3 dB au *niveau* sonore. Pour s'en souvenir : deux sources identiques donnent toujours un niveau à peine plus élevé qu'une seule source.]

*4.* $89 "dB" = 80 "dB" + 3 times 3 "dB"$ : $8 "h" -> 4 "h" -> 2 "h" -> 1 "h"$. La durée maximale recommandée est de 1 h par jour.

$4 "h" > 1 "h"$ : #res[Marc présente un risque pour son audition] (fatigue auditive, puis lésions irréversibles à force d'expositions répétées).

*5.* $89 - 25 = 64 "dB"$. Ce niveau est inférieur à 80 dB, seuil à partir duquel apparaît la fatigue auditive : #res[avec le casque, Marc ne présente plus de risque].
