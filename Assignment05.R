ptm <- proc.time()
DF <- read.csv("DGS10.csv")
CSV_READ_TIME <- (proc.time() - ptm)
CSV_READ_TIME
if (!require("data.table")) install.packages("data.table")
library("data.table")
ptm <- proc.time()
DF <- fread("DGS10.csv", header="auto", 
            data.table=FALSE)
FREAD_READ_TIME <- (proc.time() - ptm)
FREAD_READ_TIME

