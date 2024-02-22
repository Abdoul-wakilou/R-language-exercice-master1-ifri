
  # Charger la bibliothèque nécessaire
  library(readr)
  library(dplyr)
  
  # Définir l'URL du fichier CSV
  url <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/03-17-2020.csv"
  
  # Lire les données depuis le fichier CSV
  covid_data <- read_csv(url, col_types = cols())
  
  # Filtrer les données pour la Chine
  c_data <- covid_data %>%
    filter(`Country/Region` == "China") %>%
    select(`Province/State`, Confirmed, Deaths, Recovered)
  
  # Trier les données par cas confirmés en ordre décroissant
  result <- c_data %>%
    arrange(desc(Confirmed)) %>%
    mutate(row_number = row_number()) %>%
    select(-row_number)
  
  # Afficher le résultat
  print(result)
  