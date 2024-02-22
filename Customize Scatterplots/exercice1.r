# Charger la bibliothèque ggplot2
  library(ggplot2)
  
  # Charger le jeu de données mtcars
  data(mtcars)
  
  # Créer un nuage de points avec ggplot2, en utilisant mpg sur l'axe des abscisses et disp sur l'axe des ordonnées, avec une étiquette "Miles per gallon" sur l'axe des abscisses
  ggplot(mtcars, aes(x = mpg, y = disp)) +
    geom_point() +
    labs(x = "Miles per gallon")