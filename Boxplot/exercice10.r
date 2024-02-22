# Charger la bibliothèque ggplot2
  library(ggplot2)
  
  # Créer le graphique de boîte à moustaches avec axes personnalisés
  ggplot(iris, aes(x = "", y = Sepal.Width)) +
    geom_boxplot(color = "blue", fill = "lightgray") +  # Boîte à moustaches par défaut
    theme(axis.title.x = element_blank(),  # a. Supprimer l'étiquette de l'axe x
          axis.text.x = element_blank(),   #   et les graduations de l'axe x
          axis.ticks.x = element_blank(),  #   pour simuler l'axe des x de Matlab
          axis.title.y = element_text(color = "black", size = 12, face = "bold"),  # b. Personnaliser l'étiquette de l'axe y
          axis.text.y = element_text(color = "black", size = 10),  #   et les graduations de l'axe y
          axis.ticks.y = element_line(color = "black", linewidth = 0.5, linetype = "solid"))  # c. Personnaliser les graduations de l'axe y
  