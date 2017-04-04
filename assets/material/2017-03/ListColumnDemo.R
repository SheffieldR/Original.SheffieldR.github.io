#List Column Demo

#A data.frame is a list of vectors...
df <- data.frame(
    col1 = c(1,2,3,4),
    col2 = c(3,4,3,4),
    col3 = c("a","b","c","d")
)

#in this df, each cell in the table has 1 item
# col1 and col2 have numbers, col3 has letters
df

#what if we wanted more than one item in a cell?
# here is a list containing pairs of items
# I want each of those pairs to become new cell in df
my_list <- list(
    c(1,1),
    c(2,2),
    c(2,1),
    c(1,4)
)

#data.frame will let me add this
df$col4 <- my_list

# so now df has a col4 that has pairs of elements
df

# i can acess those pairs as normal
#this returns a list containing the first row
df$col4[1]

#this returns the pair of items in that list
df$col4[1][[1]]

#what if i have a data.table?
library(data.table)
dt <- data.table(
    col1 = c(1,2,3,4),
    col2 = c(3,4,3,4),
    col3 = c("a","b","c","d")
)

#now if i add a column using the data.table := assignment
dt[, col4 := my_list]

#so now i can access elements of my list using data.table methods
dt[col1 < 3, col4]

# this is a list column. This list could contain any object -
# but notice the length is the same as the number of rows as the dt
my_strange_list <- list(
    c(1,1),
    data.frame(col1 = c(1,1), col2 = c(2,2)),
    list(1,2,3),
    ggplot2::ggplot(data = mtcars) + ggplot2::geom_histogram(ggplot2::aes(x = mpg))
)

dt[, col5 := my_strange_list]
dt[col1 == 4, col5][[1]]
