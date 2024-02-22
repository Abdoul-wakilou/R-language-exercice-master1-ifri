# Charger la bibliothèque ggplot2
  library(ggplot2)
  
  # Créer le graphique de boîte à moustaches avec des lignes médianes rouges et une épaisseur de ligne de 1
  ggplot(iris, aes(x = Species, y = Sepal.Width)) +
    geom_boxplot(color = "blue",  # Changer la couleur des bordures en bleu
                 fill = "lightgray",  # Remplir les boîtes avec une couleur gris clair
                 median.color = "red",  # Changer la couleur des lignes médianes en rouge
                 width = 0.8)  # Définir la largeur des boîtes
  