# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(a, b) {
  if (nchar(a) > nchar(b)) {
    longer <- nchar(a) >= 2 * nchar(b)
  } else if (nchar(a) < nchar(b)) {
    longer <- nchar(b) >= 2 * nchar(a)
  } else {
    longer <- FALSE
  }
  return (longer)
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
is_twice_as_long("swag", "swagometer")
is_twice_as_long("sweg", "swe")
is_twice_as_long("swag", "sweg")
is_twice_as_long("sweg", "swegswog")

# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(a, b) {
  if (nchar(a) > nchar(b)) {
    result <- paste("Your first string is longer by", nchar(a) - nchar(b), "characters")
  } else if (nchar(a) < nchar(b)) {
    result <- paste("Your second string is longer by", nchar(b) - nchar(a), "characters")
  } else {
    result <- "Your strings are the same length!"
  }
  return (result)
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("swag", "sweg")
describe_difference("sweg", "sweeg")
describe_difference("swegggg", "sweg")
