library(data.table)
library(dplyr)
library(ggplot2)

csv_data <- file.choose()
MC94 <- fread(csv_data, header = TRUE)

summary(MC94)

MC94_TIvsQTI <- MC94 %>% select("Date/Time", "Ti Current", "Ti Volt", "Qti Current", "Qti Volt")
MC94_TIvsQTI <- MC94_TIvsQTI %>% mutate(Index = as.numeric(seq(0:(length(`Date/Time`) - 1))), 
                                        "Ti Current" = `Ti Current`/1000, "Ti Volt" = `Ti Volt`/1000,
                                        "Qti Current" = `Qti Current`/1000000,
                                        "Qti Volt" = `Qti Volt`/1000000, Curr_Delta = `Ti Current` - `Qti Current`,
                                        Volt_Delta = `Qti Volt` - `Ti Volt`)

currentPlot <- ggplot(data = MC94_TIvsQTI, aes(x = Index, y = `Qti Current`)) +
  geom_line(color = 'blue') + geom_line(aes(x = Index, y = `Ti Current`), color = 'red') +
  labs(title = "Qti and Ti Current", x = "Index", y = "Current")
currentPlot

voltagePlot <- ggplot(data = MC94_TIvsQTI, aes(x = Index, y = `Qti Volt`)) +
  geom_line(color = 'blue') + geom_line(aes(x = Index, y = `Ti Volt`), color = 'red') +
  labs(title = "Qti and Ti Voltage", x = "Index", y = "Voltage")
voltagePlot

summarize(MC94_TIvsQTI, Curr_Delta_Avg = mean(Curr_Delta), Volt_Delta_Avg = mean(Volt_Delta))