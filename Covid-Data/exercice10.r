# Charger les packages nécessaires
  library(readr)
  library(dplyr)
  library(ggplot2)
  
  # Définir l'URL du fichier CSV
  url <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/03-19-2020.csv"
  
  # Lire les données depuis le fichier CSV
  covid_data <- read_csv(url, col_types = cols())
  
  # Calculer les cas actifs
  covid_data <- covid_data %>%
    mutate(Active = Confirmed - Deaths - Recovered)
  
  # Regrouper les données par pays et sommer les cas
  r_data <- covid_data %>%
    group_by(`Country/Region`) %>%
    summarise(Deaths = sum(Deaths),
              Confirmed = sum(Confirmed),
              Recovered = sum(Recovered),
              Active = sum(Active)) %>%
    filter(Deaths > 50) %>%
    arrange(desc(Deaths))
  
  # Créer le graphique
  ggplot(r_data, aes(x = reorder(`Country/Region`, Deaths), group = 1)) +
    geom_line(aes(y = Deaths, color = "Deaths"), size = 1) +
    geom_line(aes(y = Confirmed, color = "Confirmed"), size = 1) +
    geom_line(aes(y = Recovered, color = "Recovered"), size = 1) +
    geom_line(aes(y = Active, color = "Active"), size = 1) +
    scale_color_manual(name = "Status",
                       values = c("red", "green", "blue", "black"),
                       labels = c("Deaths", "Confirmed", "Recovered", "Active")) +
    labs(title = "Total Deaths (>50), Confirmed, Recovered, and Active Cases by Country",
         x = "Country/Region",
         y = "Number of Cases") +
    theme_minimal() +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))