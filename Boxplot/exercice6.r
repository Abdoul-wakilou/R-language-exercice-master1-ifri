# Charger la bibliothèque ggplot2
  library(ggplot2)
  
  # Créer le graphique de boîte à moustaches avec des bordures bleues
  ggplot(iris, aes(x = Species, y = Sepal.Width)) +
    geom_boxplot(color = "blue")  # Changer la couleur des bordures en bleu
  