library(dplyr)
file_path <- "max_timeout/ticki_W20.csv"
symbol <- read.csv(file = file_path)
symbol$Czas <- strptime(symbol$TimeStamp, format ="%H:%M:%S")
diff <- difftime(symbol$Czas[2:length(symbol$Czas)],symbol$Czas[1:(length(symbol$Czas)-1)])
diff <- as.list(diff)
diff <- c(diff,0)
diff <- t(as.data.frame(diff))
rownames(diff) <- c(1:length(diff))
symbol <- select(symbol, Instrument, Czas)
symbol <- cbind(symbol, diff)
final_table <- symbol  %>%
  select(Instrument, diff) %>%
    group_by(Instrument) %>%
      arrange(desc(diff)) %>%
        filter(diff > quantile(diff, 0.95) & diff < quantile(diff, 0.99)) %>%
          slice(1)