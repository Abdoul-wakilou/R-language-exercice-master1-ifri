# Charger la bibliothèque ggplot2
  library(ggplot2)
  
  # Charger le jeu de données mtcars
  data(mtcars)
  
  # Personnaliser l'étiquette de l'axe des ordonnées (y)
  ggplot(mtcars, aes(x = mpg, y = disp)) +
    geom_point(color = "red", alpha = 0.7, na.rm = TRUE) +  # Points rouges avec transparence, en supprimant les valeurs manquantes
    labs(y = "Displacement") +  # Personnaliser l'étiquette de l'axe des ordonnées
    xlim(0, 40) +  # Définir la plage de l'axe des abscisses de 0 à 40
    ylim(0, 7)     # Définir la plage de l'axe des ordonnées de 0 à 7