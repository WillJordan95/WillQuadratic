## Reading in data
Pokemon <- read.csv("inst/extdata/Pokemon.csv")
Pokemon

#Changing name of column 1 to Pokedex Number
colnames(Pokemon)[1] <- "Pokedex Number"

#Replacing empty values in column "Type.2" with "None"
levels(Pokemon$Type.2) = c(levels(Pokemon$Type.2), "None")
Pokemon$Type.2[Pokemon$Type.2==""] = "None"

## Saving data
usethis::use_data(Pokemon, overwrite = TRUE)
