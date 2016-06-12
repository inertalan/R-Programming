corr <- function(directory, threshold = 0){
        dat <- data.frame()
        lsfiles <- list.files(directory, full.names =  T)
        completeobs <- data.frame()
        finaldata <- data.frame()
        correlation <- vector()
        for (i in 1:332) {
                dat <- read.csv(lsfiles[i])
                complete_data <- complete.cases(dat)
                if (sum(complete_data) > threshold){
                        finaldata <- dat[complete.cases(dat),]
                        correlation[i] <- cor(finaldata$sulfate, finaldata$nitrate)
                }
                correlation <- correlation[!is.na(correlation)]
                v <- as.vector(correlation, mode = "numeric")
        }
        v
}