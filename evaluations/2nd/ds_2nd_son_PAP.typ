#import "../../_assets/template_evaluation.typ": *

#show: conf

#let nom_prenom() = {
  grid(
    columns: (1fr, 1fr),
    gutter: 15pt,
    align: bottom,
    grid(columns: (auto, 1fr), column-gutter: 4pt, align: bottom, [*NOM :*], line(length: 100%, stroke: 0.5pt)),
    grid(columns: (auto, 1fr), column-gutter: 4pt, align: bottom, [*Prénom :*], line(length: 100%, stroke: 0.5pt)),
  )
  v(0.5cm)
}

#nom_prenom()
#entete_eval("Devoir de Physique-Chimie - Seconde : le son", "20")

#exercice(points: "8")[
  *Les animaux et le son*

  Clara prépare un exposé sur la façon dont les animaux communiquent par le son. Elle a rassemblé les informations suivantes.

  #align(center)[
    #table(
      columns: (auto, auto, auto),
      inset: 5pt,
      stroke: 0.5pt + gray,
      align: (left, left, center),
      fill: (x, y) => if y == 0 { luma(235) },
      [*Animal*], [*Son émis*], [*Fréquence*],
      [Éléphant], [appel à longue distance], [15 Hz],
      [Être humain], [voix d'un homme adulte], [150 Hz],
      [Merle], [chant], [2 000 Hz],
      [Chauve-souris], [cri d'écholocation], [50 kHz],
    )
  ]

  *1.* Associer chaque terme à sa définition. Recopier les associations sur la copie (exemple : 1 - C). _Attention : une définition ne correspond à aucun terme._

  #grid(
    columns: (0.7fr, 2fr),
    column-gutter: 12pt,
    [
      1. Période \
      2. Fréquence \
      3. Hauteur \
      4. Niveau sonore \
      5. Domaine de l'audible
    ],
    [
      A. Nombre de fois qu'un phénomène se répète en une seconde ; elle s'exprime en hertz (Hz). \
      B. Intervalle des fréquences des sons que l'oreille humaine peut percevoir. \
      C. Plus petite durée au bout de laquelle un phénomène se répète identique à lui-même ; elle s'exprime en seconde (s). \
      D. Grandeur qui traduit le volume sonore perçu par l'oreille ; elle s'exprime en décibel (dB). \
      E. Caractéristique qui permet de dire si un son est grave ou aigu ; elle est liée à la fréquence. \
      F. Caractéristique qui permet de distinguer deux instruments qui jouent la même note.
    ],
  )

  *2.* Donner les limites du domaine de l'audible pour l'être humain. Parmi les sons du tableau, lesquels Clara peut-elle entendre ? Justifier.

  *3.* Le chant du merle est-il plus grave ou plus aigu que la voix d'un homme adulte ? Justifier.

  *4.* Effectuer les conversions suivantes, en écrivant le résultat en écriture scientifique :
  - la fréquence du cri de la chauve-souris : $f = 50$ kHz, en Hz ;
  - la période de l'appel de l'éléphant : $T = 67$ ms, en s ;
  - la période du cri de la chauve-souris : $T = 20$ µs, en s.

  *5.* *Sans calculatrice*, en détaillant chaque étape, écrire le nombre $A$ sous la forme $10^n$ :
  $ A = (10^5 times (10^(-2))^3) / 10^(-4) $
]

#pagebreak(weak: true)
#exercice(points: "5,5")[
  *Accorder sa guitare*

  Tom veut accorder sa guitare. Il pince la corde la plus fine, qui doit jouer la note *Mi#sub[4]*, et enregistre le son produit à l'aide du microphone de son smartphone. Il obtient le signal ci-dessous.

  #figure(image("../figures/son_guitare_corde_mi.png", width: 95%), caption: [Signal électrique enregistré par le microphone])

  *Données :*
  - la note Mi#sub[4] a pour fréquence $f_"Mi" = "329,6"$ Hz ;
  - l'application d'accordage affiche « corde juste » si la fréquence mesurée est comprise entre 328 Hz et 331 Hz.

  *1.* Le signal enregistré est-il périodique ? Est-il sinusoïdal ?

  *2.* Repérer la période $T$ sur la figure 1, puis déterminer sa valeur.

  *3.* Convertir la période $T$ en seconde, puis calculer la fréquence $f$ du son émis par la corde.

  *4.* La corde est-elle accordée ? Justifier.

  *5.* Le son émis est-il trop grave ou trop aigu ?
]

#exercice(points: "6,5")[
  *Protéger son audition*

  Inès, élève de seconde, écoute de la musique avec ses écouteurs pendant 1 h 30 chaque jour dans le bus. Samedi, elle ira à un concert qui dure 2 heures.

  *Document 1 - Quelques niveaux sonores*
  #align(center)[
    #table(
      columns: (auto, auto),
      inset: 4pt,
      stroke: 0.5pt + gray,
      align: (left, center),
      fill: (x, y) => if y == 0 { luma(235) },
      [*Situation*], [*Niveau sonore*],
      [Bibliothèque], [40 dB],
      [Conversation], [60 dB],
      [Rue à fort trafic], [80 dB],
      [Écouteurs d'Inès (volume habituel)], [89 dB],
      [Concert, près d'une enceinte], [95 dB (par enceinte)],
      [Seuil de douleur], [120 dB],
    )
  ]

  *Document 2 - Durée d'exposition maximale recommandée*

  Pour un niveau sonore de 80 dB, la durée d'exposition maximale recommandée est de *8 heures par jour*. Chaque fois que le niveau sonore augmente de 3 dB, cette durée est *divisée par 2*.

  *Document 3 - Deux sources sonores identiques*

  Lorsque l'intensité sonore double, le niveau sonore augmente de 3 dB.

  *1.* D'après le cours, à partir de quel niveau sonore un son provoque-t-il une fatigue auditive ? À partir de quel niveau peut-il endommager l'audition de façon irréversible ?

  *2.* Déterminer la durée d'exposition maximale recommandée pour le niveau sonore des écouteurs d'Inès. Ses habitudes d'écoute présentent-elles un risque ? Justifier.

  *3.* Au concert, Inès se place devant deux enceintes identiques qui produisent chacune un niveau sonore de 95 dB. Son amie affirme : _« Avec deux enceintes, le niveau sonore double : on reçoit 190 dB ! »_ Expliquer pourquoi cette affirmation est fausse, puis déterminer le niveau sonore réellement reçu par Inès.

  *4.* Déterminer la durée d'exposition maximale recommandée à cet endroit. Conclure sur le risque encouru par Inès si elle reste à cet endroit pendant tout le concert.

  *5.* Proposer deux gestes simples qu'Inès peut adopter pour protéger son audition.
]
