# Charger la bibliothèque ggplot2
  library(ggplot2)
  
  # Créer le graphique de boîte à moustaches
  ggplot(iris, aes(x = Species, y = Sepal.Width)) +
    geom_boxplot() +  # Ajouter un graphique de boîte à moustaches
    labs(x = "Species", y = "Sepal Width")  # Ajouter des étiquettes d'axes
  