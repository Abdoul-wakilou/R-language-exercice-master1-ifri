  # Convertir UCBAdmissions en dataframe
  UCBAdmissions_df <- as.data.frame(UCBAdmissions)
  
  # Charger le package dplyr
  library(dplyr)
  
  # Examinez les premières lignes du jeu de données pour comprendre sa structure
  glimpse(UCBAdmissions_df)
  
  # Calculez la proportion de garçons pour leur premier-né pour chaque catégorie raciale
  proportion_garcons <- UCBAdmissions_df %>%
    group_by(Admit, Gender) %>%
    summarise(Proportion_garcons = sum(Freq[Gender == "Male"]) / sum(Freq),
              Observations = sum(Freq))
  
  # Affichez la proportion de garçons pour leur premier-né et le nombre d'observations dans chaque catégorie
  print(proportion_garcons)