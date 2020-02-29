library(rvest)

hdoc <- read_xml("https://en.wikipedia.org/wiki/West_African_Ebola_virus_epidemic_timeline_of_reported_cases_and_deaths")
tbl <- hdoc %>% html_node("#mw-content-text > div > table:nth-child(20)") %>% html_table(fill = T)

tbl <- tbl[,-c(2,3,10)]

deaths <- tbl[,-c(2,4,6)]
deaths <- deaths[-1,]

deaths[,-1] <- apply(deaths[,-1], 2, function(x) gsub(",", "", x))
deaths[,-1] <- apply(deaths[,-1], 2, as.numeric)

months <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", 
            "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
nums <- c("01", "02", "03", "04", "05", "06", 
          "07", "08", "09", "10", "11", "12")

for (i in 1:12)
  deaths[,1] <- gsub(months[i], nums[i], deaths[,1])

deaths[,1] <- as.Date(deaths[,1], format = "%d %m %Y")

names(deaths) <- c("Date", "Guinea", "Liberia", "Sierra Leone")

deaths[is.na(deaths)] <- 0

# deaths <- read.csv("ebola2014.csv")

deaths[27,3] <- 4169
deaths[29,3] <- 3841

deaths <- deaths[seq(54,1,-1),]

write.csv(deaths, "ebola2014.csv", row.names = F, quote = F)


