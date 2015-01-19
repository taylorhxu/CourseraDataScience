complete <- function(directory, ID) {
        files <- list.files(directory, full.name=TRUE) ##create a list of files
       id <- c() ##create a vector for id
       nobs <- c() ##create a vector for nobs
        for (i in ID) { 
                id <- rbind(id, c(i)) ##fill id
                data <- read.csv(files[i])
                sulfate <- data$sulfate ## subsets the column of sulfate
                nitrate <- data$nitrate ## subsets the column of nitrate
                nobs <- rbind(nobs,sum(complete.cases(sulfate,nitrate))) ## remove NA rows
        }
        data.frame(id,nobs) ## create a data.frame
}
