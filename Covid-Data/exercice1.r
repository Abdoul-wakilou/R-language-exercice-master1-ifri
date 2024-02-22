
  # Charger la bibliothèque nécessaire
  library(readr)
  
  # Définir l'URL du fichier CSV
  url <- "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/03-17-2020.csv"

  # Lire les données depuis le fichier CSV
  covid_data <- read_csv(url, col_types = cols())
  
  # Afficher les 5 premières lignes
  head(covid_data)
  
  # Afficher les informations du jeu de données
  cat("\nDataset information:\n")
  str(covid_data)
  
  # Vérifier les valeurs manquantes
  cat("\nMissing data information:\n")
  colSums(is.na(covid_data))