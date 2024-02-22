
  # Charger la bibliothèque nécessaire
  library(readr)
  library(dplyr)
  
  # Définir l'URL du fichier CSV
  url <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/03-17-2020.csv"
  
  # Lire les données depuis le fichier CSV
  covid_data <- read_csv(url, col_types = cols())
  
  # Regrouper les données par pays et sommer les cas confirmés, les décès et les guérisons
  data <- covid_data %>%
    group_by(`Country/Region`) %>%
    summarise(Confirmed = sum(Confirmed),
              Deaths = sum(Deaths),
              Recovered = sum(Recovered)) %>%
    ungroup()
  
  # Sélectionner les pays où tous les cas confirmés sont décédés
  result <- data %>%
    filter(Confirmed == Deaths) %>%
    select(`Country/Region`, Confirmed, Deaths) %>%
    arrange(desc(Confirmed)) %>%
    filter(Confirmed > 0) %>%
    mutate(row_number = row_number()) %>%
    select(-row_number)
  
  # Afficher le résultat
  print(result)