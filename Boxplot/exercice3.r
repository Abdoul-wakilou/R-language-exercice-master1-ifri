# Charger la bibliothèque ggplot2
  library(ggplot2)
  
  # Créer le graphique de boîte à moustaches sans graduations ni étiquettes sur les axes
  ggplot(iris, aes(x = Species, y = Sepal.Width)) +
    geom_boxplot() +  # Ajouter un graphique de boîte à moustaches
    theme(axis.text.x = element_blank(),  # Supprimer les étiquettes sur l'axe x
          axis.text.y = element_blank(),  # Supprimer les étiquettes sur l'axe y
          axis.ticks = element_blank())  # Supprimer les graduations sur les axes