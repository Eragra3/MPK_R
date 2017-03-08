source('scripts/initialize.R')

mpk <- read.csv("data/20161014.csv")

textToDate <- function(datetime) {
    text <- as.character(datetime)
    #strptime(as.character(text), format = "%Y-%m-%d %H:%M:%S")
    as.POSIXct(text)
}

numericToDate <- function(number) {
    as.POSIXct(number, origin = "1970-01-01")
}

times <- mpk["timestamp"]

times <- parLapply(cl, times[,], textToDate)
times <- do.call(c, times)

mpk["timestamp"] <- times

save('mpk', file = 'mpk.RData')