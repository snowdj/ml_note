pollutantmean <- function(directory, pollutant, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".
          

       directory <- "specdata"; pollutant <- "sulfate"; id = 1:10
       dataFrame <- NULL
       total <- c()
       file_list <- dir(directory, full.name=T)
       for(i in id){
               dataFrame1 <- read.csv(file_list[i])
                                           
               total <-c(total,dataFrame1[[pollutant]])
               dataFrame <- rbind(dataFrame,dataFrame1)
       }
             
       print(mean(total,na.rm = TRUE)); print(mean(subset(dataFrame[[pollutant]],!is.na(dataFrame[[pollutant]])))); print(mean(dataFrame[[pollutant]],na.rm = TRUE))            
                      
                      
                      ## 'id' is an integer vector indicating the monitor ID numbers
                      ## to be used
                      
                      ## Return the mean of the pollutant across all monitors list
                      ## in the 'id' vector (ignoring NA values)
                      
}