## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# doesn't work because my.vector has a string in the vector, and you cannnot
# vectors of different types. Basically, they are different types

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# You have to load the library after you install it. Just installing the 
# package does not mean that it is currently working. library("stringr")
# will fix this problem.

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# initial was not defined and therefore cannot be concatenated to the other
# vectors


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
number.list <- c(1, 2, 3, 4)
typeof(number.list)
# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(first, second) {
  return(paste("The difference in lengths is", abs(length(first) - length(second))))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(number.list, 1)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(first, second) {
  Diff <- length(first) - length(second)
  if (Diff > 0) {
    return(paste0("Your first vector is longer by ", Diff, " elements."))
  } else {
    return(paste0("Your second vector is longer by ", Diff, " elements."))
  }
  
}
# Pass two vectors to your `DescribeDifference` function


# Write a function `CombineVectors` that takes in 3 vectors and combines them into one

# Send 3 vectors to your function to test it.

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters


