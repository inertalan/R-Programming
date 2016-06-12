complete <- function(directory, id = 1: 332){
        dat <- data.frame()
        lsfiles <- list.files(directory, full.names =  T)
        completeobs <- data.frame()
        for (i in id) {
                dat <- read.csv(lsfiles[i])
                complete_data <- complete.cases(dat)
                completeobs <- rbind(completeobs, c(i, sum(complete_data)))
        }
        names(completeobs) <- c("id", "nobs")
        completeobs
}