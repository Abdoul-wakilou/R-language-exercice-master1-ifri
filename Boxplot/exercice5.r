# Charger la bibliothèque ggplot2
  library(ggplot2)
  
  # Créer le graphique de boîte à moustaches avec une distance augmentée entre les boîtes
  ggplot(iris, aes(x = Species, y = Sepal.Width)) +
    geom_boxplot(width = 0.5)  # Augmenter la largeur des boîtes
  