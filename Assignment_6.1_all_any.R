
#1. positive Numbers
num <- c(5, -3, 7, 9)

if(all(num > 0)){
  print("All are positive numbers")
}else if(any(num < 0)){
  print("there is one negative number")
}

#2. Even Numbers

num1 <- c(2, 4, 5, 8)

if(all(num1%%2 == 0)){
  print("all numbers are even")
}else if(any(num1%%2 == 0)){
  print("there is one even")
}

#3.Exam Pass/Fail

scores <- c(75, 82, 60,95,40)

if(all(scores >= 60)){
  print("All students passed")
}else if(any(scores < 60)){
  print("one student failed")
}

#4. Temperature Check

temp <- c(32, 35, 29, 40, 38)

if(all(temp >= 30)){
  print("All days are hot")
}else if(any(temp < 30)){
  print("Not all days are hot")
}

