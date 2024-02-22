# Charger la bibliothèque ggplot2
  library(ggplot2)
  
  # Créer le tracé avec ggplot2 en utilisant différentes variables
  ggplot(mtcars, aes(x = mpg, y = drat, shape = factor(gear), color = factor(cyl))) +
    geom_point(size = 3) +  # Ajouter un nuage de points avec une taille personnalisée
    labs(x = "Miles per gallon", y = "Rar",  # Définir les étiquettes des axes
         title = "Miles vs Drat",  # Ajouter un titre au tracé
         caption = "Source: mtcars dataset") +  # Ajouter une légende
    scale_shape_manual(values = c(1, 2, 3)) +  # Définir les formes des symboles
    scale_color_manual(values = c("blue", "red", "green")) +  # Définir les couleurs des points
    theme_minimal() +  # Utiliser un thème minimal
    theme(legend.position = "bottom",  # Positionner la légende en bas
          legend.key = element_rect(fill = "lightgray"))  # Personnaliser la couleur d'arrière-plan de la légende
  