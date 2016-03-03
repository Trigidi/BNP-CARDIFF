## Loading Packages
library(fda)

#### importaion des differentes tables par lot
apprent=read.csv("train.csv",header = T, sep=",",dec=".")
test=read.csv("test.csv",header = T, sep=",",dec=".")

## pourquoi tu compte les doubles ?
type=c()
for (i in 3:133) type[i]=is.double(base[,i])
qua=which(type==0)

acp=PCA(apprent, scale.unit = TRUE, ncp = 5, ind.sup = NULL, 
    quanti.sup = NULL, quali.sup = qua, row.w = NULL, 
    col.w = NULL, graph = TRUE, axes = c(1,2))
