
  # Charger la bibliothèque nécessaire
  library(readr)
  library(dplyr)
  
  # Définir l'URL du fichier CSV
  url <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/03-17-2020.csv"
  
  # Lire les données depuis le fichier CSV
  covid_data <- read_csv(url, col_types = cols())
  
  # Calculer les cas actifs
  covid_data <- covid_data %>%
    mutate(Active = Confirmed - Deaths - Recovered)
  
  # Regrouper les données par pays et sommer les cas confirmés, les décès, les guérisons et les cas actifs
  result <- covid_data %>%
    group_by(`Country/Region`) %>%
    summarise(Confirmed = sum(Confirmed),
              Deaths = sum(Deaths),
              Recovered = sum(Recovered),
              Active = sum(Active)) %>%
    ungroup()
  
  # Afficher le résultat
  print(result)