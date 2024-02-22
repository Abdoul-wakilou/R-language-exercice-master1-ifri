# Chargez les packages nécessaires
  library(dplyr)
  library(AER)
  
  # Chargez le jeu de données Fertility dans votre espace de travail
  data("Fertility")
  
  # Examinez les premières lignes du jeu de données pour comprendre sa structure
  glimpse(Fertility)
  
  # Comptez les occurrences de chaque combinaison de genres pour les deux premiers enfants
  combinaisons_genres <- Fertility %>%
    group_by(Smoke, Education) %>%
    summarise(Count = n()) %>%
    arrange(desc(Count)) %>%
    slice_head(n = 1)
  
  # Affichez la combinaison de genres la plus courante
  print(combinaisons_genres)