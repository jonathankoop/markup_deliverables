#load package lattice
library(lattice)
library(xtable) # generate the LaTeX code for tables
#fix the random generator seed
set.seed(123)
#create data
data <- rnorm(1000)
#plot histogram
png("../02_figures/histogram.png",
    width = 3000,
    height = 3000,
    res = 600)
histogram(data)
dev.off()
#plot density
png("../02_figures/densityplot.png",
    width = 3000,
    height = 3000,
    res = 600)
densityplot(data ^ 12 / data ^ 10, xlab = expression(data ^ 12 / data ^
                                                       10))
dev.off()
#plot stripplot
png("../02_figures/stripplot.png",
    width = 3000,
    height = 3000,
    res = 600)
stripplot(data ^ 2, xlab = expression(data ^ 2))
dev.off()
#plot boxplot
png("../02_figures/bwplot.png",
    width = 3000,
    height = 3000,
    res = 600)
bwplot(exp(data))
dev.off()
#matrix with all data used
data.all <- cbind(
  data = data,
  squared1 = data ^ 12 / data ^ 10,
  squared2 = data ^ 2,
  exponent = exp(data)
)

# print latex code
print(
  xtable(data.all[1:9, ], caption = "The same data, but now in a table. Only the first nine rows are displayed."),
  caption.placement = "top",
  include.rownames = FALSE
)
