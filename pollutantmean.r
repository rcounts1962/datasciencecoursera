pollutantmean <- function(directory, pollutant, id) {
    for (Loop1 in id) {
        if (Loop1<10){
            MyID<-"00"}
        else {
            if (Loop1<100){
                MyID<-"0"}
            else {
                MyID<-""
            }
        }
        Filename<-paste("d:\\datasciencecoursera\\",directory,"\\",MyID,Loop1,".csv",sep="")
        if(!exists("mydata")){
            mydata<-read.table(file=Filename,header=TRUE,sep=",")
        } else {
        if(exists("mydata")) {
            temp.mydata<-read.table(file=Filename,header=TRUE,sep=",")
            mydata<-rbind(mydata,temp.mydata)
        }}
        closeAllConnections()
    }
    if(pollutant=="sulfate"){MyCol<-2}else{MyCol<-3}
    OutputVec<-vector()
    Mymean<-mean(mydata[,MyCol],na.rm=TRUE)
    OutputVec[1]=Mymean
    print(OutputVec)
}