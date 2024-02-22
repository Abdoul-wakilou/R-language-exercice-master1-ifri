# Charger la bibliothèque ggplot2
  library(ggplot2)
  
  # Créer le graphique de boîte à moustaches avec des encoches
  ggplot(iris, aes(x = Species, y = Sepal.Width)) +
    geom_boxplot(notch = TRUE)  # Ajouter des encoches