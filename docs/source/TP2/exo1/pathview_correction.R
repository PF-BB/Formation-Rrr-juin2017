library(pathview)
genesTable = read.table("exo1/myGenes.csv", sep=";", header=TRUE)
genes = as.vector(genesTable[,2])
pathwayID = "hsa04012"
geneIDTYPE = "SYMBOL"
pathview(genes, pathway.id = pathwayID, gene.idtype = geneIDTYPE,plot.col.key= FALSE)
