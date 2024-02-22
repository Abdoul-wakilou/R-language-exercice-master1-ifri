# Charger la bibliothèque ggplot2
  library(ggplot2)
  
  # Créer le tracé avec ggplot2
  ggplot(mtcars, aes(x = mpg, y = drat)) +
    geom_point() +  # Ajouter un nuage de points
    labs(x = "Miles per gallon", y = "Rar",  # Définir les étiquettes des axes
         title = "Miles vs Drat",  # Ajouter un titre au tracé
         caption = "Source: mtcars dataset") +  # Ajouter une légende
    theme_minimal()  # Utiliser un thème minimal