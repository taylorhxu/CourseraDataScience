corr <- function(directory, id=0) {
        files <- list.files(directory, full.name=TRUE)
        corr.data <- numeric(0)
        for(i in 1:332) {
               com <- complete(directory,i)
               data <- read.csv(files[i])
                if(com$nobs > id) {
                        corr.data <- c(corr.data, cor(data$sulfate, data$nitrate,use ="pairwise.complete.obs"))
                } 
        }
        return(corr.data)
}
