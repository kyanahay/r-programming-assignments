# S3 Example 1

student1 <- list(name = "Anna", age = 20, GPA = 3.5)
class(student1) <- "student"

print.student <- function(x) {
  cat("Name:", x$name, "\n")
  cat("Age:", x$age, "\n")
  cat("GPA:", x$GPA, "\n")
}

student1

# S3 Example 2

student2 <- list(name = "Brian", age = 22, GPA = 3.8)
class(student2) <- "student"

summary.student <- function(object) {
  cat("Student Summary\n")
  cat("Name:", object$name, "\n")
  cat("GPA:", object$GPA, "\n")
}

summary(student2)

# S4 Example 1

setClass(
  "Student",
  slots = c(
    name = "character",
    age = "numeric",
    GPA = "numeric"
  )
)

student3 <- new("Student", name = "Carlos", age = 21, GPA = 3.2)

student3

# S4 Example 2

setGeneric("getGPA", function(object) standardGeneric("getGPA"))

setMethod("getGPA", "Student", function(object) {
  object@GPA
})

getGPA(student3)