print("Here goes...\n")
r <- getOption("repos")
print("getOptions complete")

r["CRAN"] <- "http://cran.ma.imperial.ac.uk/"
print("CRAN set to org")
options(repos=r)
print("options set to r[CRAN]")

print("installing essential packages")
pkgs <- c(
  "Cairo",
  "data.table",
  "DT",
  "shiny",
  "XML",
  "xml2"
)
install.packages(pkgs, dependencies=TRUE, clean=TRUE)
print(Sys.getenv())
options(device="cairo")
