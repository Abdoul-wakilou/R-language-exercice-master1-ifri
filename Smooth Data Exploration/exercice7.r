# Chargez le package
  library(dplyr)
  
  # Examinez les premières lignes du jeu de données pour comprendre sa structure
  glimpse(mtcars)
  
  # Calculez un sous-ensemble de femmes âgées de 22 et 24 ans
  sous_ensemble <- mtcars %>%
    filter(cyl <= 4 & mpg >= 22 & mpg <= 24) # Filtre appliqué pour limiter le nombre de lignes
  
  # Calculez la proportion de voitures avec un nombre de cylindres de quatre ou moins
  proportion_garcon <- sous_ensemble %>%
    summarise(Proportion = mean(cyl <= 4))
  
  # Affichez la proportion de voitures avec un nombre de cylindres de quatre ou moins
  print(proportion_garcon)