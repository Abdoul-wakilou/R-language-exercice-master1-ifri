# Charger les packages nécessaires
  library(readr)
  library(dplyr)
  library(tidyr)
  library(plotly)
  
  # Définir l'URL du fichier CSV
  url <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/03-19-2020.csv"
  
  # Lire les données depuis le fichier CSV
  covid_data <- read_csv(url, col_types = cols())
  
  # Calculer les cas actifs
  covid_data <- covid_data %>%
    mutate(Active = Confirmed - Deaths - Recovered)
  
  # Filtrer les données pour les États-Unis et sélectionner les colonnes nécessaires
  combine_us_data <- covid_data %>%
    filter(`Country/Region` == "US") %>%
    select(`Province/State`, Confirmed, Deaths, Recovered, Active) %>%
    filter(rowSums(select(., -`Province/State`)) > 0) %>%
    group_by(`Province/State`) %>%
    summarise(Confirmed = sum(Confirmed),
              Deaths = sum(Deaths),
              Recovered = sum(Recovered),
              Active = sum(Active)) %>%
    pivot_longer(cols = c("Confirmed", "Deaths", "Recovered", "Active"), names_to = "Case", values_to = "Count")
  
  # Créer le graphique
  fig <- plot_ly(combine_us_data, x = ~`Province/State`, y = ~Count, text = ~Count, color = ~Case, type = 'bar') %>%
    layout(title = 'USA State wise combine number of confirmed, deaths, recovered, active COVID-19 cases',
           xaxis = list(title = 'Province/State'),
           yaxis = list(title = 'Count'))
  
  # Afficher le graphique
  fig