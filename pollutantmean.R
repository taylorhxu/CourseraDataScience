pollutantmean <- function (directory, pollutant, id = 1:332){
	files <-list.files(directory, full.name=TRUE)
	data <- data.frame()
	for (i in id){
		data <- rbind(data, read.csv(files[i]))
	}
	if (pollutant == "nitrate"){
		mean(data$nitrate, na.rm=TRUE)
		
		else{
			mean(data$sulphate, na.rm=TRUE)
		}
	}
}