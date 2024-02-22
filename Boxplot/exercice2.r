# Charger la bibliothèque ggplot2
  library(ggplot2)
  
  # Créer le graphique de boîte à moustaches avec une plage d'axe y modifiée
  ggplot(iris, aes(x = Species, y = Sepal.Width)) +
    geom_boxplot() +  # Ajouter un graphique de boîte à moustaches
    labs(x = "Species", y = "Sepal Width") +  # Ajouter des étiquettes d'axes
    ylim(2, 4.5)  # Modifier la plage de l'axe des ordonnées