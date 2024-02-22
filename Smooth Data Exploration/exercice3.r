# Chargez le package
  library(dplyr)
  
  # Chargez le jeu de données iris dans votre espace de travail
  data("iris")
  
  # Sélectionnez la dernière ligne du jeu de données et imprimez-la sur la console
  derniere_ligne <- tail(iris, n = 1)
  print(derniere_ligne)