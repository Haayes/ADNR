library(jsonlite)

api_klucz <- "df5df24b8d4b3cdacd54602af0ca2d11"

link <- paste0("https://api.themoviedb.org/3/movie/550?api_key=", api_klucz)
dane <- fromJSON(link) 

dane$original_title
dane$budget

link <- paste0("https://api.themoviedb.org/3/movie/popular?api_key=",api_klucz,"&language=en-US&page=1")
dane <- fromJSON(link)

dane$results