// Importation du standard moderne pour les unités (remplace fancy-units)
#import "@preview/unify:0.7.1": num, unit, qty

// --- COULEURS DU THÈME ---
#let c-primary = rgb("#2980b9") // Bleu moderne
#let c-accent = rgb("#e74c3c")  // Rouge doux
#let c-success = rgb("#27ae60") // Vert
#let c-bg-gray = rgb("#6b7479") // Gris très léger

// --- FONCTIONS DE DESIGN ---

// 1. Fonction générique pour les boîtes (Cards)
#let mbox(title, icon, color, body) = {
  block(
    width: 100%,
    fill: color.lighten(90%),
    stroke: (left: 4pt + color), // Barre colorée à gauche
    // CORRECTION ICI : On nomme explicitement les coins
    radius: (top-right: 6pt, bottom-right: 6pt), 
    inset: (x: 1em, y: 1em),
    breakable: true,
    [
      #text(fill: color, weight: "bold", size: 1.1em, font: "Fira Sans")[#icon #h(0.5em) #title]
      #v(0.5em)
      #body
    ]
  )
}

// 2. Définition des blocs spécifiques
#let définition = mbox.with("Définition", emoji.heart, c-accent)
#let exemple = mbox.with("Exemple", emoji.bubble, c-success)
#let travail = mbox.with("Travail à faire", emoji.pencil, c-bg-gray)
#let important = mbox.with("Important", emoji.excl, rgb("#d35400"))
#let application = mbox.with("Application", emoji.wrench, c-primary)
#let  experience = mbox.with("Expérience", emoji.testtube, rgb("#ec98b3"))
// 3. Gestion des Exercices (avec compteur automatique)
#let exercice-compteur = counter("exercise")
#let exercice(body) = {
  exercice-compteur.step()
  mbox(
    context [Exercice #exercice-compteur.display()], 
    emoji.basketball, 
    rgb("#8e44ad"), 
    body
  )
}

// 4. En-tête de Chapitre ("Hero Section")
#let chapitre(titre) = {
  pagebreak(weak: true)
  // 2. On réinitialise le compteur des titres à Zéro
    counter(heading).update(0)
  v(0.5cm)
  block(
    width: 100%,
    fill: c-primary,
    radius: 4pt,
    inset: 20pt,
    text(fill: white, weight: "bold", size: 18pt, font: "Fira Sans")[#titre]
  )
  v(1cm)
}

// 5. Zone de réponse pour les élèves
#let lignes_reponse(n) = block[
  #set line(stroke: (dash: "dotted", paint: gray))
  #for _ in range(n) [
    #v(1.5em) #line(length: 100%)
  ]
]

// --- CONFIGURATION GÉNÉRALE (TEMPLATE) ---

#let conf(body) = {
  // A. Mise en page
  set page(
    margin: (top: 1cm, bottom: 1.5cm, left: 1.5cm, right: 1.5cm), 
    numbering: "1/1",
    // En-tête discret à partir de la page 2
    header: context {
      if counter(page).get().first() > 1 {
        set text(size: 9pt, fill: gray)
        grid(
          columns: (1fr, 1fr),
          align(left)[Physique-Chimie - Lycée Dumézil],
          align(right)[M. Denis]
        )
        v(-5pt)
        line(length: 100%, stroke: 0.5pt + gray)
      }
    }
  )
  
  // B. Typographie
  // Ordre de priorité : Fira Sans > Arial > Police système
  set text(lang: "fr", font: ("Fira Sans", "Arial", "Linux Libertine"), size: 11pt)
  // Police mathématique
  show math.equation: set text(font: "Fira Math")

  // C. Configuration des Titres (Hierarchie visuelle)
  
  // Règle 1 : La numérotation (I., 1), a))
  set heading(numbering: (..nums) => {
    let n = nums.pos()
    if n.len() == 1 { numbering("I.", n.last()) }
    else if n.len() == 2 { numbering("1)", n.last()) }
    else { numbering("a)", n.last()) }
  })

  // Règle 2 : Le Design du Niveau 1 (Bleu + Souligné)
  show heading.where(level: 1): it => {
    set text(fill: c-primary, font: "Fira Sans", weight: "bold")
    block(below: 1em, sticky: true)[
      #it
      #v(-0.3em) // Rapproche la ligne du texte
      #line(length: 100%, stroke: 1.5pt + c-primary) // Soulignement partiel stylé
    ]
  }
  
  // Règle 3 : Le Design du Niveau 2 (Indentation légère)
  show heading.where(level: 2): it => {
    set text(fill: c-primary.darken(20%), weight: "semibold")
    pad(left: 1em, it) // Utiliser pad est plus propre que h() pour l'alignement
  }
  
  // Règle 4 : Le Design du Niveau 3 (Indentation forte + Italique)
  show heading.where(level: 3): it => {
    set text(style: "italic", fill: rgb("#444"))
    pad(left: 2.5em, it)
  }

  // Application de la configuration
  body
}