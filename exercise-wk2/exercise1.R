## Part 1: Debugging

my.num <- 6
initials <- "A. H."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# sum adds all the lavues in a vector and returns the result, but my.vector
# has a string, and a string can't be added to numbers

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# because the stringr package is not enabled yet

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# because there is no variable initial decleared yet


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
my.test <- c("Hello", "I", "am", "Albert")
typeof(my.test) # it is a character
# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a, b) {
  a.length <- str_length(a)
  b.length <- str_length(b)
  difference <- 0
  if (a.length > b.length) {
    difference <- a.length - b.length
  } else {
    difference <- b.length - a.length
  }
  return(paste("The difference in lengths is", difference))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength("asdfghjkl", "abcy")

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a, b) {
  a.length <- str_length(a)
  b.length <- str_length(b)
  which <- ""
  difference <- 0
  if (a.length > b.length) {
    difference <- a.length - b.length
    which <- "first"
  } else {
    difference <- b.length - a.length
    which <- "second"
  }
  return(paste("Your", which, "vector is longer by", difference, "elements"))
}
# Pass two vectors to your `DescribeDifference` function
DescribeDifference("knbhjvcgftuaygwidhkj", "ewhbdkewhj")

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(a, b, c) {
  return(c(a, b, c))
}
# Send 3 vectors to your function to test it.
CombineVectors("a", "l", "a")
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(classes) {
  return(tolower(classes))
}
my.classes <- c("Info 201", "Info 360", "Mus 120")
CapsTime(my.classes)
