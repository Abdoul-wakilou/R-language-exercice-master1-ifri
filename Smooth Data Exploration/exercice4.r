# Chargez le package
  library(dplyr)
  
  # Chargez le jeu de données ChickWeight dans votre espace de travail
  data("ChickWeight")
  
  # Comptez le nombre de femmes qui ont eu un troisième enfant
  nombre_femmes_troisieme_enfant <- ChickWeight %>%
    filter(Time == 21, Chick <= 50) %>%
    group_by(Chick) %>%
    summarise(Third_Child = ifelse(n() == 3, TRUE, FALSE)) %>%
    summarise(Num_Third_Child = sum(Third_Child))
  
  print(nombre_femmes_troisieme_enfant)