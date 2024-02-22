# Chargez les packages nécessaires
  library(dplyr)
  
  # Chargez le jeu de données mtcars dans votre espace de travail
  data("mtcars")
  
  # Examinez les premières lignes du jeu de données pour comprendre sa structure
  glimpse(mtcars)
  
  # Calculez la proportion de voitures avec un nombre de cylindres de quatre ou moins en fonction du type de transmission
  proportion_cylindres <- mtcars %>%
    filter(cyl <= 4) %>%
    group_by(am) %>%
    summarise(Proportion = mean(cyl <= 4))
  
  # Affichez la proportion de voitures avec un nombre de cylindres de quatre ou moins en fonction du type de transmission
  print(proportion_cylindres)