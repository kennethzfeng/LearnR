# Class definition
Person <- setRefClass(
  Class="Person",
  fields=list(
    lastName="character",
    firstName="character",
    middleName="character")
  )

# Create a new instance of Person
p <- Person$new(lastName="Feng", firstName="Kenneth")

p$lastName
p$firstName
