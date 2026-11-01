# ==========================================
# Basic Operations and Variable Assignment
# ==========================================

a <- 24
b <- 4

addition <- a + b
subtraction <- a - b
multiplication <- a * b
division <- a / b
power <- a ^ b
square_root <- sqrt(a)

addition
subtraction
multiplication
division
power
square_root

# ==========================================
# Numerical and Descriptive Functions
# ==========================================

marks <- c(48, 55, 68, 76, 91)

log_value <- log10(100)
total <- sum(marks)
product <- prod(marks)
variance <- var(marks)

summary_marks <- summary(marks)

log_value
total
product
variance
summary_marks

# ==========================================
# Five-Number Summary
# ==========================================

marks <- c(38, 44, 49, 58, 63, 67, 74, 81, 87, 94)

summary(marks)

# ==========================================
# Data Types in R
# ==========================================

logical_value <- TRUE
numeric_value <- 28.5
integer_value <- 15L
complex_value <- 4 + 3i
character_value <- "R Programming"

logical_value
numeric_value
integer_value
complex_value
character_value

class(logical_value)
class(numeric_value)
class(integer_value)
class(complex_value)
class(character_value)

# ==========================================
# Vectors
# ==========================================

marks <- c(52, 64, 71, 83, 92)

marks

marks + 5
marks * 2

marks[1]
marks[3]

length(marks)

# ==========================================
# Lists
# ==========================================

student <- list(
  name = "Tariq",
  age = 21,
  marks = c(78, 83, 89),
  passed = TRUE
)

student

student$name
student$age
student$marks

# ==========================================
# Matrix
# ==========================================

m <- matrix(1:9, nrow = 3, ncol = 3)

m

m[2, 3]

t(m)

sum(m)

# ==========================================
# Data Frame
# ==========================================

student <- data.frame(
  Name = c("Bilal", "Alice", "Tariq", "Fatima"),
  Age = c(21, 20, 22, 21),
  Marks = c(72, 88, 68, 93)
)

student

student$Marks

mean(student$Marks)

# ==========================================
# Subsetting Data
# ==========================================

student <- data.frame(
  Name = c("Bilal", "Alice", "Tariq", "Fatima"),
  Age = c(21, 20, 22, 21),
  Marks = c(72, 88, 68, 93)
)

student[1, ]

student[, "Name"]

student[student$Marks > 75, ]

# ==========================================
# Creating, Dropping and Renaming Variables
# ==========================================

student <- data.frame(
  Name = c("Bilal", "Alice", "Tariq"),
  Age = c(21, 20, 22),
  Marks = c(72, 88, 68)
)

student$Grade <- c("B", "A", "C")

names(student)[names(student) == "Marks"] <- "Score"

student$Age <- NULL

student

# ==========================================
# Bar Graph
# ==========================================

marks <- c(78, 86, 68, 92, 84)
students <- c("Zayn", "Aisha", "Bob", "Fatima", "John")

barplot(marks,
        names.arg = students,
        main = "Student Marks",
        xlab = "Students",
        ylab = "Marks")

# ==========================================
# Pie Chart
# ==========================================

marks <- c(78, 82, 69, 94, 76)
subjects <- c("Maths", "Science", "English",
              "Computer", "History")

pie(marks,
    labels = subjects,
    main = "Marks Distribution")

# ==========================================
# Histogram
# ==========================================

marks <- c(46, 52, 54, 58, 63, 67, 69,
           71, 74, 77, 79, 83, 85, 88, 92)

hist(marks,
     main = "Distribution of Marks",
     xlab = "Marks",
     ylab = "Frequency")

# ==========================================
# Line Graph
# ==========================================

sales <- c(110, 125, 145, 135, 175, 210)
months <- c("Jan", "Feb", "Mar",
            "Apr", "May", "Jun")

plot(sales,
     type = "o",
     main = "Monthly Sales",
     xlab = "Month",
     ylab = "Sales",
     xaxt = "n")

axis(1, at = 1:6, labels = months)

# ==========================================
# Scatter Plot
# ==========================================

hours <- c(1, 2, 3, 4, 5, 6, 7)
marks <- c(42, 48, 53, 62, 68, 77, 86)

plot(hours, marks,
     main = "Study Hours vs Marks",
     xlab = "Study Hours",
     ylab = "Marks",
     pch = 19)

# ==========================================
# Box Plot
# ==========================================

marks <- c(46, 51, 56, 59, 64,
           66, 69, 72, 76, 82, 86, 91)

boxplot(marks,
        main = "Box Plot of Marks",
        ylab = "Marks")

# ==========================================
# Dot Chart
# ==========================================

marks <- c(68, 74, 82, 87, 93)
names(marks) <- c("Farhan", "Yasmin", "Bob", "Zainab", "Alice")

dotchart(marks,
         main = "Student Marks",
         xlab = "Marks")

# ==========================================
# Stem-and-Leaf Diagram
# ==========================================

marks <- c(44, 47, 53, 56, 58, 62, 64, 68, 71, 75, 81)

stem(marks)

# ==========================================
# Density Plot
# ==========================================

marks <- c(46, 52, 54, 59, 63, 67,
           69, 72, 74, 78, 83, 88)

d <- density(marks)

plot(d,
     main = "Density Plot of Marks",
     xlab = "Marks",
     ylab = "Density")

# ==========================================
# Contour Plot
# ==========================================

x <- seq(-2, 2, length = 30)
y <- seq(-2, 2, length = 30)

z <- outer(x, y, function(x, y) x^2 + y^2)

contour(x, y, z,
        main = "Contour Plot",
        xlab = "X",
        ylab = "Y")

# ==========================================
# Image Plot
# ==========================================

m <- matrix(1:25, nrow = 5)

image(m,
      main = "Image Plot",
      xlab = "Columns",
      ylab = "Rows")

# ==========================================
# Level Plot
# ==========================================

x <- seq(-2, 2, length = 20)
y <- seq(-2, 2, length = 20)

z <- outer(x, y, function(x, y) x^2 + y^2)

filled.contour(x, y, z,
               main = "Level Plot",
               xlab = "X",
               ylab = "Y")

# ==========================================
# Practical 4: Simple Linear Regression
# ==========================================

hours <- c(1, 2, 3, 4, 5, 6, 7, 8)
marks <- c(36, 42, 48, 56, 62, 69, 76, 84)

model <- lm(marks ~ hours)

summary(model)

model

new_data <- data.frame(hours = 9)
predict(model, new_data)

plot(hours, marks,
     main = "Hours Studied vs Marks",
     xlab = "Hours Studied",
     ylab = "Marks",
     pch = 19)

abline(model)

# ==========================================
# Practical 5: Weighted Least Squares Regression
# ==========================================

hours <- c(1, 2, 3, 4, 5, 6, 7, 8)
marks <- c(37, 43, 49, 56, 62, 70, 75, 83)

weights <- c(1, 1, 2, 2, 3, 3, 4, 4)

model <- lm(marks ~ hours, weights = weights)

summary(model)

model

new_data <- data.frame(hours = 9)
prediction <- predict(model, newdata = new_data)

print(prediction)

plot(hours, marks,
     main = "Weighted Least Squares Regression",
     xlab = "Hours Studied",
     ylab = "Marks",
     pch = 19)

abline(model)

# ==========================================
# Practical 6.1: Multiple Linear Regression
# ==========================================

study_hours <- c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11)
attendance <- c(62, 65, 69, 74, 76, 80, 82, 86, 89, 92)
marks <- c(46, 51, 57, 62, 66, 71, 76, 81, 85, 90)

data <- data.frame(
  study_hours,
  attendance,
  marks
)

model <- lm(marks ~ study_hours + attendance,
            data = data)

summary(model)

coef(model)

new_student <- data.frame(
  study_hours = 7,
  attendance = 80
)

prediction <- predict(model,
                      newdata = new_student)

print(prediction)

# ==========================================
# Practical 6.2: Ridge Regression
# ==========================================

library(glmnet)

study_hours <- c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11)
attendance <- c(62, 65, 69, 74, 76, 80, 82, 86, 89, 92)
assignment_score <- c(52, 56, 59, 64, 67, 71, 74, 79, 83, 87)
marks <- c(44, 49, 55, 60, 65, 71, 75, 81, 86, 91)

X <- cbind(study_hours,
           attendance,
           assignment_score)

Y <- marks

ridge_model <- glmnet(X, Y, alpha = 0)

cv_model <- cv.glmnet(X, Y, alpha = 0)

print(cv_model$lambda.min)

print(coef(cv_model, s = "lambda.min"))

new_student <- matrix(c(8, 82, 75), nrow = 1)

prediction <- predict(cv_model,
                      newx = new_student,
                      s = "lambda.min")

print(prediction)
