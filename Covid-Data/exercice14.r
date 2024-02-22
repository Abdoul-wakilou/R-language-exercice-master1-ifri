# Charger les packages nécessaires
  library(readr)
  library(dplyr)
  library(plotly)
  
  # Définir l'URL du fichier CSV
  url <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/03-19-2020.csv"
  
  # Lire les données depuis le fichier CSV
  covid_data <- read_csv(url, col_types = cols())
  
  # Regrouper les données par date et sommer les cas confirmés et les décès
  grouped <- covid_data %>%
    group_by(`Last Update`) %>%
    summarise(Confirmed = sum(Confirmed), Deaths = sum(Deaths)) %>%
    ungroup()
  
  # Créer le graphique
  fig <- plot_ly(grouped, x = ~`Last Update`, y = ~Confirmed, type = 'scatter', mode = 'lines', line = list(color = '#1f77b4')) %>%
    layout(title = "Worldwide Confirmed Novel Coronavirus(COVID-19) Cases Over Time",
           xaxis = list(title = "Date"),
           yaxis = list(title = "Confirmed Cases"))
  
  # Afficher le graphique
  fig