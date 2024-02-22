# Charger la bibliothèque nécessaire
  library(readr)
  library(dplyr)
  
  # Définir l'URL du fichier CSV
  url <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/03-18-2020.csv"
  
  # Lire les données depuis le fichier CSV
  covid_data <- read_csv(url, col_types = cols())
  
  # Sélectionner les colonnes nécessaires
  covid_data <- covid_data %>%
    select(`Last Update`, `Country/Region`, Confirmed, Deaths, Recovered)
  
  # Regrouper les données par pays et sélectionner la ligne avec la valeur maximale pour chaque colonne
  result <- covid_data %>%
    group_by(`Country/Region`) %>%
    summarise(Confirmed = max(Confirmed),
              Deaths = max(Deaths),
              Recovered = max(Recovered),
              .groups = "drop") %>%
    arrange(desc(Confirmed)) %>%
    slice_head(n = 10)
  
  # Afficher le résultat
  print(result)