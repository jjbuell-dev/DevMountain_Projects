/*:
 # Constants and Variables
 */

import UIKit
//: Variable - mutable identifier\
// declared a variable named firstName of type String, set to String "Jeremy"
var firstName: String = "Jeremy"

// declared variable, lastName, set to String literal "Appleseed"
var lastName = "Appleseed"

var age: Int = 51
var weight = 250.3
var paulWeight: Double = 15
var isMarried: Bool = true // Boolean values true or false in Swift
var isCurrentlyMarried = false

print(firstName)

var totalWeight: Double
totalWeight = weight + paulWeight
totalWeight = weight - paulWeight

// string concatenation
var fullName = firstName + " " + lastName
fullName = firstName + " " + "Ozzy" + " " + lastName
print(fullName)

// string interpolation
var fullName2 = "\(fullName) weighs \(weight)"
print(fullName2)

//: Constant - immutable identifier

let eyeColor = "Blue"

// MARK: - Wizard

let wizardFirstName = "Albus"
let wizardLastName = "Dumbledore"
var wizardAge = 100
let dateOfBirth = "400 BC"
var wizardWeight = 500

//: # 100 Days of Swift

var str = "Hello, playground"
str = "Good-Bye"

print(str)


//: [Next](DataTypes)
