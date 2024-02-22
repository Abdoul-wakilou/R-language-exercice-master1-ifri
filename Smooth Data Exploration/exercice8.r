# Chargez le package
  library(dplyr)
  
  # Chargez le jeu de données iris dans votre espace de travail
  data("iris")
  
  # Examinez les premières lignes du jeu de données pour comprendre sa structure
  glimpse(iris)
  
  # Ajoutez une nouvelle colonne, l'âge au carré, à l'ensemble de données
  iris <- iris %>%
    mutate(age_carre = Sepal.Length^2)
  
  # Examinez à nouveau les premières lignes du jeu de données pour voir la nouvelle colonne ajoutée
  glimpse(iris)