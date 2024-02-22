# Charger la bibliothèque ggplot2
  library(ggplot2)
  
  # Tracer les données sans axes
  p <- ggplot(mtcars, aes(x = mpg, y = drat)) +
    geom_point() +  # Nuage de points
    theme(axis.line = element_blank(),  # Supprimer les axes
          axis.text = element_blank(),  # Supprimer les étiquettes des axes
          axis.title = element_blank(),  # Supprimer les titres des axes
          panel.background = element_blank(),  # Supprimer le fond du panneau
          panel.grid.major = element_blank(),  # Supprimer les lignes de la grille principale
          panel.grid.minor = element_blank(),  # Supprimer les lignes de la grille mineure
          plot.background = element_blank())  # Supprimer le fond du tracé
  
  # Ajouter des axes, des étiquettes et du texte au tracé précédent
  p <- p +
    theme(axis.line = element_line(),  # Ajouter les axes
          axis.text = element_text(),  # Ajouter les étiquettes des axes
          axis.title = element_text(),  # Ajouter les titres des axes
          plot.title = element_text(hjust = 0.5),  # Centrer le titre du tracé
          plot.caption = element_text(hjust = 0.5))  # Centrer le texte en bas
  
  # Ajouter un titre et un texte en bas
  p <- p +
    labs(title = "Miles vs Drat",  # Ajouter un titre
         caption = "Source: mtcars dataset")  # Ajouter un texte en bas
  
  # Afficher le tracé avec les axes, les étiquettes et le texte
  print(p)