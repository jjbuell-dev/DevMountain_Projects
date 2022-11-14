
import Foundation

//: # Operators

//: ### Assignment Operator (=)
let favFood = "pizza"
let favNumber = 24

//: ### Mathmatical Operators ( + - * / )
// order of operations
// parenthesis, exponents, multiplication, division, addition, subtraction

var num = 4 + 2
num = 4
num = 4 + 2 * 3
num = (4 + 2) * 3
num = (4 + 2) * (3 - 6 / 2)

var sum = 100
sum + 200
print(sum) // num never reassigned with the 200

// +=, -=, *=, /=
sum += 200
print(sum)

var total = 100
total *= 4
total += 200
total /= 3
total -= 100
total /= 25
print(total)

// Strings can also use + operator
let setup = "I love"
let object = "lamp"

let sentence = setup + object
print(sentence)  // smashed together because no spaces added

var phrase = ""
let spacer = " "
phrase += setup
phrase += spacer
phrase += object

print(phrase)

// Remainder - % (Modulo)
10 % 2
10 % 3
// useful to determine even or odd

var number = 5
number % 2 // if remainder number is odd, if 0 then even

var numbo = 10
numbo %= 4 // remainder reassigned to 'numbo'
print(numbo)

var doubleRemainder = 38.0 / 3.0
var integerRemainder = 38 % 3

//: ### Comparison Operators
    /*
        == equal to
        != not equal to
        > less than
        < greater than
        >= greater than or equal to
        <= less than or equal to
     */
// return boolean values
5 == 3
5 > 3
5 < 3
5 != 3

let result = 5 == 3
print(result)

//: ## Conditional Statements
var myPokeman = "Charmander"
var opponentsPokeman = "Squirtle"

if myPokeman == "Pikachu" {
    print("pika, pika")
    
} else if myPokeman == "Charmander" {
    print("char, char")
}

if opponentsPokeman == "Squirtle" {
    print("squirtle, squirtle")
}

// once a case is true it will run and exit the if statement
if myPokeman == "Pikachu" {
    print(1)

} else if myPokeman == "charmander" {
    print(2) // not printing because case sensitive

} else if opponentsPokeman == "Squirtle" {
    print(3)
}

// nested statements - get confusing ... switch statements
if myPokeman == "Charmander" {
    if opponentsPokeman == "Squirtle" {
        print("I'm in trouble.")
    
    } else {
        if myPokeman == "Pikachu" {
            print("Pikachu I choose you")
        
        } else {
        print("Maybe Bulbasaur?")
        }
    }
}

//: ## Switch Statements
var idk = "1"

switch idk {
case "1":
    print("this")

case "2":
    print("that")

case "3":
    print("the other")
    
default:
    print("nothing")
}

// Control Flow - Continue, Break, FallThrough, Return, (Throw)
//: ## Logical Operators
// Logical OR || - any condition can be met
// Logical AND && - all conditions have to be met

let sunny = true
let warm = true
let windy = false

if sunny == true && warm == true && windy == false {
    print("Beach Day!!!")

} else {
    print("Lazy home day...")
}

//: [Previous](Week1Day1Project) /
//: [Next](Functions)
