# Chargement de la library pathview
library(pathview)

# Lecture du tableau
genesTable = read.table("genes.txt", sep="\t", header=TRUE)

# extraire uniquement les noms de genes
genes = genes[,1]

# vérifier la classe de l'objet gene
class(genes)

# la doc de la fonction pathview indique que l'objet genes doit etre un VECTEUR
genes = as.vector(genes)

# Choisir son pathway et le type d'annotation de gene
pathwayID = "hsa04110"
geneIDTYPE = "SYMBOL"

# pathview prend en entrée un vecteur ou une matrice gene.data
pathview(gene.data=genes, pathway.id = pathwayID, gene.idtype = geneIDTYPE,plot.col.key= FALSE)
