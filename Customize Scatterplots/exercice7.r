# Charger la bibliothèque ggplot2
  library(ggplot2)
  
  # a. Tracer deux variables à la fois, en éliminant les axes
  p <- ggplot(mtcars, aes(x = mpg, y = drat)) +
    geom_point() +  # Ajouter un nuage de points
    theme(axis.title = element_blank(),  # Supprimer les titres des axes
          axis.text = element_blank(),   # Supprimer les étiquettes des axes
          axis.ticks = element_blank())  # Supprimer les traits des axes
  
  # b. Insérer une légende en utilisant des couleurs différentes et une forme différente pour chaque variable
  p + geom_point(aes(color = wt, shape = factor(cut(hp, breaks = 3)))) +  # Ajouter une autre couche de points avec des variables continues
    scale_color_gradient(low = "blue", high = "red") +  # Définir une échelle de couleur continue pour la légende
    scale_shape_manual(values = c(16, 17, 18)) +  # Définir une échelle de forme manuelle pour la légende
    theme(legend.position = c(0.9, 0.1))  # Positionner la légende en haut à droite avec les coordonnées x et y
  