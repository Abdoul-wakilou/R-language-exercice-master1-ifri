# Charger la bibliothèque ggplot2
  library(ggplot2)
  
  # Créer le graphique de boîte à moustaches avec titre et étiquette d'axe y personnalisés
  ggplot(iris, aes(x = Species, y = Sepal.Width)) +
    geom_boxplot(color = "blue", fill = "lightgray") +  # Boîte à moustaches par défaut
    labs(title = "Distribution de la largeur des sépales",  # a. Ajouter un titre à la boîte à moustaches
         y = "Largeur des sépales")  # b. Ajouter une étiquette d'axe y à la boîte à moustaches
  