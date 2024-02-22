# Chargez le package
  library(dplyr)
  
  # Chargez le jeu de données airquality dans votre espace de travail
  data("airquality")
  
  # Sélectionnez les rangées 35 à 50 et imprimez-les pour tenir compte de l'âge et de l'entrée de travail
  airquality_subset <- airquality[35:50, ]
  print(airquality_subset)