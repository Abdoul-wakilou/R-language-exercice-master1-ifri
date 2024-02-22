# Charger les packages nécessaires
  library(readr)
  library(dplyr)
  library(plotly)
  
  # Définir l'URL du fichier CSV
  url <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/03-17-2020.csv"
  
  # Lire les données depuis le fichier CSV
  covid_data <- read_csv(url, col_types = cols())
  
  # Filtrer les données pour les États-Unis et sélectionner les colonnes nécessaires
  us_data <- covid_data %>%
    filter(`Country/Region` == "US") %>%
    select(`Province/State`, Deaths) %>%
    filter(rowSums(select(., -`Province/State`)) > 0) %>%
    group_by(`Province/State`) %>%
    summarise(Deaths = sum(Deaths)) %>%
    filter(Deaths > 0)
  
  # Créer le graphique
  state_fig <- plot_ly(us_data, x = ~`Province/State`, y = ~Deaths, type = 'bar', text = ~Deaths, 
                       marker = list(color = '#1f77b4')) %>%
    layout(title = 'State wise deaths reported of COVID-19 in USA',
           xaxis = list(title = 'Province/State'),
           yaxis = list(title = 'Deaths'))
  
  # Afficher le graphique
  state_fig