
import Foundation
//: # Collections
//: ### Array
/*
 - Collection of values, stored as a single value
 - Wrapped in brackets
 - Can have duplicates
 - Can be empty
 - Can be structured as an array on an array (2D array)
 - Can be sorted, looped through (iterated on), filtered, etc
 - Generic Collection (can work with any type) (once assigned a type, can only take that type from then on)
 - Sequence (can be iterated on),
    Collection (can be iterated multiple times and accessed with a subscript),
    RandomAccessCollection (element retrieval is handled in constant time)
 - Arrays have set memory capacity (container), each jump in memory is a big deal
 */

var blue = "Leonardo"
var red = "Raphael"
var purple = "Donatello"
var orange = "whoCares"

var exampleArray1: [String] = []
var exampleArray2 = [blue, red, purple, orange]
var exampleArray3: [Int] = []

exampleArray1.append("max")
exampleArray1.append(contentsOf: exampleArray2)

print(exampleArray1)

//: ### Dictionary
/*
- [key : value]
- A generic collection that contains key-value pairs (can take any type, assumes that type)
- Can have duplicate (multiple) values NOT keys
- Not ordered (cannot subscript or insert at numerical index)
*/

let exampleDictionary = [String : Any]()

let ages: [String : Int] = [
    //Key      : Value
    "Leonardo" : 18,
    "Raphael" : 16,
    "Donatello" : 14,
    "whoCares" : 3
]

//DON'T force unwrap.
//Note that when accessing a Dictionary at a key, what you get back is optional
print(ages["Leonardo"]!)
let thisThing = ages["Leanardo"]

print(ages["Leonardo"] ?? 117)

print(ages["Leanardo", default: 117])

//: ### Set
/*
 - Container with unique values (cannot contain duplicates)
 - non-ordered (NOT "random")
 - Adding a duplicate will not give you an error, it just won't be added
 */

var turtles = Set<String>()

turtles.insert(blue) ; turtles.insert(blue)
turtles.insert(red) ; turtles.insert(red)
turtles.insert(purple) ; turtles.insert(purple)
turtles.insert(orange) ; turtles.insert(orange)

turtles.removeFirst()

//: ### Tuple
/*
 - Store several values together in a single value (ordered)
 - Multiple types as the values
 - Cannot add or remove from a tuple once it is created. They are fixed in size
 - Can change the values, but no the types
 - Can be accessed by numerical position or by name
 - name.0 // name.first
 */

var loserTurtles = (blue: "Leonardo", red: "Raphael", purple: "Donatello", orange: "whoCares", test: 5)

//print(loserTurtles.blue)
//print(loserTurtles.3)

loserTurtles.orange = "dumbyDumb"
//print("New value: \(loserTurtles.3)")


 //: ### Enums (enumeration):
/*
 - Grouping related values for ease of use, and also for consistency and safety
 - cases
 */

enum Smarts {
    case IQ(number: Int)
}

let Leonardo = Smarts.IQ(number: 110)
let Raphael = Smarts.IQ(number: 95)
let Donatello = Smarts.IQ(number: 180)
let whoCares = Smarts.IQ(number: 75)

print(Leonardo) ; print(Raphael) ; print(Donatello) ; print(whoCares)

enum Names {
    case Leonardo
    case Raphael
    case Donatello
    case whoCares
}

let Blue = Names.Leonardo
print(Blue)

//: [Previous](Week1Day2Project)
//: [Next](@next)
