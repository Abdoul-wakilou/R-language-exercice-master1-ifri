# Charger la bibliothèque ggplot2
  library(ggplot2)
  
  # Créer le graphique de boîte à moustaches avec des points aberrants modifiés
  ggplot(iris, aes(x = Species, y = Sepal.Width)) +
    geom_boxplot(color = "blue", fill = "lightgray", outlier.color = "red",  # a. Remplacer la couleur des points aberrants par le rouge
                 outlier.shape = "+",  # b. Remplacer le symbole des points aberrants par '+'
                 outlier.size = 0.8)  # c. Définir la taille des points aberrants sur 0.8
  