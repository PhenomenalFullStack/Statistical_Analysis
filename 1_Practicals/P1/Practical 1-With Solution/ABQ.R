#set your working directory


#import ABQ data
ABQ=read.csv("ABQ.csv",header = TRUE)
View(ABQ)

#sort the ABQ data in path order to create the path
ABQorder=ABQ[order(ABQ$path),]
View(ABQorder)

#import the coordinates of the area labels
ABQcoord=read.csv("ABQcoord.csv",header = TRUE)
View(ABQcoord)

#plot the map
plot(ABQ$Lattitude,ABQ$Longitude)
text(x=ABQ$Lattitude,y=ABQ$Longitude,labels=ABQ$path,pos = 3,cex = 0.5)
text(x=ABQcoord$Lattitude,y=ABQcoord$Longitude,labels=ABQcoord$Name,pos=1,cex=0.35,col="blue")
lines(ABQorder$Lattitude,ABQorder$Longitude,col="red")
