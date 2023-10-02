## import data.table library
library(data.table)
## import ggplot library
library(ggplot2)

## import covid approval poll csv 
url <- "https://raw.githubusercontent.com/folushoa/Data-Science/Data-607/covid_approval_polls.csv"
covid_approval_poll <- fread(input = url, sep = ",", header = TRUE)

## subset of covid approval poll
trump_approval_poll <- subset(covid_approval_poll, 
                              subject == "Trump" & party == "all", 
                              select = c(start_date, end_date, approve, 
                                         disapprove, sample_size))

biden_approval_poll <- subset(covid_approval_poll, 
                              subject == "Biden" & party == "all", 
                              select = c(start_date, end_date, approve, 
                                         disapprove, sample_size))

## plot of approval and disapproval
trump_poll_plot <- ggplot(data = trump_approval_poll, aes(x = end_date, 
                   y = approve)) + geom_line(color = 'blue') + labs(x = "Month",
                   y = "Ratio", title = "Trump Approval Rating")
trump_poll_plot <- trump_poll_plot + geom_line(aes(x = end_date, 
                   y = disapprove), color = 'red')
trump_poll_plot <- trump_poll_plot + 
  scale_color_manual(name = "Approval Status", breaks = c('Approve', 'Disapprove'),
  values = c('Approve' =  'blue', 'Disapprove' = 'red'))
print(trump_poll_plot)

biden_poll_plot <- ggplot(data = biden_approval_poll, aes(x = end_date, 
                   y = approve)) + geom_line(color = 'blue') + labs(x = "Month",
                   y = "Ratio", title = "Biden Approval Rating")
biden_poll_plot <- biden_poll_plot + geom_line(aes(x = end_date, 
                   y = disapprove), color = 'red')
biden_poll_plot <- biden_poll_plot + 
  scale_color_manual(name = "Approval Status", breaks = c('Approve', 'Disapprove'),
                     values = c('Approve' =  'blue', 'Disapprove' = 'red'))
biden_poll_plot


