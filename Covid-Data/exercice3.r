
  # Charger la bibliothèque nécessaire
  library(readr)
  library(dplyr)
  
  # Définir l'URL du fichier CSV
  url <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/03-16-2020.csv"
  
  # Lire les données depuis le fichier CSV
  covid_data <- read_csv(url, col_types = cols())
  
  # Regrouper les données par pays/région et province/état et obtenir le dernier nombre confirmé de décès et de personnes guéries
  data <- covid_data %>%
    group_by(`Country/Region`, `Province/State`) %>%
    summarise(Confirmed = max(Confirmed),
              Deaths = max(Deaths),
              Recovered = max(Recovered)) %>%
    ungroup()
  
  # Afficher le résultat
  print(data)