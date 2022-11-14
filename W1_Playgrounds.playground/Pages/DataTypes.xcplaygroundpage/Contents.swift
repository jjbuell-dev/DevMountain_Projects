
//: # Data Types

import Foundation

//: ### Common Data Types
//: - String
//: - Boolean
//: - Integer, Double, Float

// Type Declaration - when we explicitly set the type of a particular expression
let myLunch: String

// Type Inference - the complier can 'infer' the type based on the expression
let myDinner = "Pizza"

// Type Safety - once a value type is assigned a property, that property cannot be reassigned.
var favNumber = 2
//favNumber = "2" won't compile because originally Int

//: ## Strings
let string1 = "Hello, World!"
let announcement = "\(string1)" + " I am a new developer"
print(announcement)

let twoNumberString = "2" + "2"
print(twoNumberString)

//: ## Boolean Values
// BOOL is only true or false.
let isThisABoolean = true

//: ## Numbers - Int, Double, Float



//: [Previous](ConstantsVariables) /
//: [Next](@next)
