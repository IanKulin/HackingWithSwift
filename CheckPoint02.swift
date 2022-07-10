/*
 This time the challenge is to create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.
 */

let strArray = ["one", "two", "one", "three"]
let strSet = Set(strArray)
print("Array size:\(strArray.count) unique count:\(strSet.count)")
