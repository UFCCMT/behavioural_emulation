
#get current directory
mydir<-getwd()

#set working directory
setwd("/home/legacy/CMT-bone-BE/NGEE/CMT-bone-BE/mpi/data_epp-cubes")

#Combine all *.out files into one data frame
data <- data.frame()
files <- list.files(pattern="*.out")
data <- do.call( "rbind", lapply(files, function(x) read.csv(x, stringsAsFactors=FALSE, header=FALSE)))

#split into separate data frames for 
#	1) input parameter values
#	2) log of every timestep
#	3) average caluculated by the program
params <- data[seq(1,nrow(data),3), 1:9]
tsteps <- data[seq(2,nrow(data),3), ]
temp_average <- data[seq(3,nrow(data),3), 1]
avg <- gsub( "Average time: ", "\\1", temp_average[1] )
avg <- sapply(avg, as.numeric)
tsteps <- sapply(tsteps, as.numeric)

# for generic string replacement
# avg <- gsub( ".*: ()", "\\1", temp_average[,1]  )

#generate scatter plots from measurements
pdf("cubic-elements-only.pdf")
par( mfrow=c(4,3) )

plot( tsteps[2,], type="p", main="1x1x1", xaxt="n", xlab="", ylab="execution time(sec)", pch=1, cex=0.9, frame.plot=1, col="blue" )
plot( tsteps[3,], type="p", main="2x2x2", xaxt="n", xlab="", ylab="execution time(sec)", pch=1, cex=0.9, frame.plot=1, col="blue" )
plot( tsteps[4,], type="p", main="3x3x3", xaxt="n", xlab="", ylab="execution time(sec)", pch=1, cex=0.9, frame.plot=1, col="blue" )
plot( tsteps[5,], type="p", main="4x4x4", xaxt="n", xlab="", ylab="execution time(sec)", pch=1, cex=0.9, frame.plot=1, col="blue" )
plot( tsteps[6,], type="p", main="5x5x5", xaxt="n", xlab="", ylab="execution time(sec)", pch=1, cex=0.9, frame.plot=1, col="blue" )
plot( tsteps[7,], type="p", main="6x6x6", xaxt="n", xlab="", ylab="execution time(sec)", pch=1, cex=0.9, frame.plot=1, col="blue" )
plot( tsteps[8,], type="p", main="7x7x7", xaxt="n", xlab="", ylab="execution time(sec)", pch=1, cex=0.9, frame.plot=1, col="blue" )
plot( tsteps[9,], type="p", main="8x8x8", xaxt="n", xlab="", ylab="execution time(sec)", pch=1, cex=0.9, frame.plot=1, col="blue" )
plot( tsteps[10,], type="p", main="9x9x9", xaxt="n", xlab="", ylab="execution time(sec)", pch=1, cex=0.9, frame.plot=1, col="blue" )
plot( tsteps[1,], type="p", main="10x10x10", xaxt="n", xlab="", ylab="execution time(sec)", pch=1, cex=0.9, frame.plot=1, col="blue" )

dev.off()



