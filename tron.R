# ==========================================
# Basic Operations and Variable Assignment
# ==========================================

a <- 20
b <- 5

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

marks <- c(45, 56, 67, 78, 89)

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

marks <- c(35, 42, 50, 56, 61, 68, 72, 80, 85, 95)

summary(marks)

# ==========================================
# Data Types in R
# ==========================================

logical_value <- TRUE
numeric_value <- 25.5
integer_value <- 10L
complex_value <- 3 + 2i
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

marks <- c(50, 60, 70, 80, 90)

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
  name = "Rahul",
  age = 20,
  marks = c(75, 80, 85),
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
  Name = c("Amit", "Neha", "Rahul", "Priya"),
  Age = c(20, 21, 20, 22),
  Marks = c(75, 85, 65, 90)
)

student

student$Marks

mean(student$Marks)

# ==========================================
# Subsetting Data
# ==========================================

student <- data.frame(
  Name = c("Amit", "Neha", "Rahul", "Priya"),
  Age = c(20, 21, 20, 22),
  Marks = c(75, 85, 65, 90)
)

student[1, ]

student[, "Name"]

student[student$Marks > 75, ]

# ==========================================
# Creating, Dropping and Renaming Variables
# ==========================================

student <- data.frame(
  Name = c("Amit", "Neha", "Rahul"),
  Age = c(20, 21, 20),
  Marks = c(75, 85, 65)
)

student$Grade <- c("B", "A", "C")

names(student)[names(student) == "Marks"] <- "Score"

student$Age <- NULL

student

# ==========================================
# Bar Graph
# ==========================================

marks <- c(75, 85, 65, 90, 80)
students <- c("Amit", "Neha", "Rahul", "Priya", "Riya")

barplot(marks,
        names.arg = students,
        main = "Student Marks",
        xlab = "Students",
        ylab = "Marks")

# ==========================================
# Pie Chart
# ==========================================

marks <- c(75, 85, 65, 90, 80)
subjects <- c("Maths", "Science", "English",
              "Computer", "History")

pie(marks,
    labels = subjects,
    main = "Marks Distribution")

# ==========================================
# Histogram
# ==========================================

marks <- c(45, 50, 55, 60, 62, 65, 68,
           70, 72, 75, 78, 80, 82, 85, 90)

hist(marks,
     main = "Distribution of Marks",
     xlab = "Marks",
     ylab = "Frequency")

# ==========================================
# Line Graph
# ==========================================

sales <- c(100, 120, 150, 130, 170, 200)
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
marks <- c(40, 45, 55, 60, 65, 75, 85)

plot(hours, marks,
     main = "Study Hours vs Marks",
     xlab = "Study Hours",
     ylab = "Marks",
     pch = 19)

# ==========================================
# Box Plot
# ==========================================

marks <- c(45, 50, 55, 60, 62,
           65, 68, 70, 75, 80, 85, 90)

boxplot(marks,
        main = "Box Plot of Marks",
        ylab = "Marks")

# ==========================================
# Dot Chart
# ==========================================

marks <- c(65, 72, 80, 85, 90)
names(marks) <- c("Amit", "Neha", "Rahul", "Priya", "Riya")

dotchart(marks,
         main = "Student Marks",
         xlab = "Marks")

# ==========================================
# Stem-and-Leaf Diagram
# ==========================================

marks <- c(45, 48, 52, 55, 56, 61, 65, 67, 72, 75, 78)

stem(marks)

# ==========================================
# Density Plot
# ==========================================

marks <- c(45, 50, 55, 60, 62, 65,
           68, 70, 72, 75, 80, 85)

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
marks <- c(35, 40, 50, 55, 60, 68, 75, 82)

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
marks <- c(35, 42, 50, 54, 63, 68, 76, 81)

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
attendance <- c(60, 65, 70, 72, 75, 78, 80, 85, 88, 90)
marks <- c(45, 50, 55, 60, 65, 70, 74, 80, 84, 88)

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
attendance <- c(60, 65, 70, 72, 75, 78, 80, 85, 88, 90)
assignment_score <- c(50, 55, 60, 62, 65, 70, 72, 78, 82, 85)
marks <- c(42, 48, 54, 58, 64, 69, 74, 79, 85, 89)

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
