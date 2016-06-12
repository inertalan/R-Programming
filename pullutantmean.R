pollutantmean <- function(directory, pollutant, id= 1:332){
        dat <- data.frame()
        lsfiles <- list.files(directory, full.names =  T)
        for (i in id) {
                dat <- rbind(dat, read.csv(lsfiles[i]))
        }
        mean(dat[, pollutant], na.rm = T)
}