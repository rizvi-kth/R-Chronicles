#url <- "https://www.nordea.se/Images/39-16129/historiska_borantor.xlsx"
setwd("C:\\Users\\A547184\\Documents\\R\\R-Projects\\R-Chronicles")
localfile <- file.path("data","historiska_borantor.xlsx")
#download.file(url, localfile)

#install.packages("XLConnect")
#library(XLConnect)
my.data <- readWorksheetFromFile(localfile, sheet=1, startRow=276)
my.data[,c(1,4,5,6,7,8,10)]

colnames(my.data) <- c("Date", NA, NA ,"8Year", "5Year", "4Year", "3Year", "2Year", "1Year", "3Month")
typeof(my.data[[4]])
typeof(my.data)
str(my.data)
head(my.data,100)
tail(my.data,100)

# First column is not a date. Make it Date type


#my.data <- transform()
