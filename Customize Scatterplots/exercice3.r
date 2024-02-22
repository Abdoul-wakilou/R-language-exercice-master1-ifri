# Charger la bibliothèque ggplot2
  library(ggplot2)
  
  # Créer un nuage de points avec ggplot2 et ajouter un titre
  ggplot(mtcars, aes(x = mpg, y = drat)) +
    geom_point() +  # Nuage de points
    labs(title = "Miles vs Drat")  # Ajouter un titre à la parcelle