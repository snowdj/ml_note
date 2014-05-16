corr <- function(directory, threshold = 0) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0
        source('complete.R')
        # directory <- "specdata"; threshold = 150
        file_list <- dir(directory, full.name=T)
        corr <- c()
        comp <- complete(directory)
        id <- subset(comp,comp$nobs > threshold, select = c(id))[,1]
        for (i in id){
                data <- read.csv(file_list[i],)
                data<-na.omit(data)
                corri <- cor(data$nitrate,data$sulfate)
                corr<-c(corr,corri)
        }
        
        corr
        ## Return a numeric vector of correlations
        
        
}        