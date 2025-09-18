nums <- c(10, 20, NA, -5, NA, 30)

count <- sum(is.na(nums))
cat("the vector has ", count,"NA")

nums[is.na(nums)] <- 0
print(nums)

result <- ifelse(is.na(nums), "Missing",
                 ifelse(nums > 0, "positive","negative"))
print(result)

if(all(nums > 0)){
  print("all values are greater than 0")
}else if(any(nums < 0)){
  print("Has a value less than 0")
}