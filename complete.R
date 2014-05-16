complete <- function(directory, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
        dataFrame<-NULL
        file_list <- dir(directory, full.name=T)
        for(i in id){
                data <- read.csv(file_list[i])
                good <- complete.cases(data)
                dataFrame <- rbind(dataFrame,data.frame(id=i,nobs=sum(good)))
        }
        dataFrame
                # dataFrame <- rbind(dataFrame, data[i])
                
                # means[i] <- mean(data[[pollutant]],na.rm = TRUE)
                
        
}