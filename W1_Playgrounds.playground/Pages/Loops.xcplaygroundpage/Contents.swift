
import Foundation
//: # Loops
//: ### While Loops - run until the condition is met
var x = 20

while x > 8 {
    print(x)
    x -= 1
}

var y = 3
while y <= 20 {
    y += 1

    if y % 2 == 0 {
        print("\(y) is even")
    
    } else {
        print("\(y) is odd")
    }
}
var z = 60
while z >= 0 {
    if z == 1 {
        print("There is \(z) second left")
    } else {
        print("There are \(z) seconds left")
    }
    z -= 1
}

//: ### For Loops
let range = 1...12
for num in range {
    print(num)
}

for letter in "Winner winner, chicken dinner" {
    print(letter)
}  // prints every element in the string: punctuation, space, etc

let newString = "A quick brown fox jumps over the lazy dog"
for vowels in newString {
    if vowels == "a" || vowels == "e" || vowels == "i" || vowels == "o" || vowels == "u" || vowels == "y" {
        print("\(newString) contains these vowels \(vowels)")
    }
}

// Ideas to change
// count vowels



//: [Previous](Functions)
//: [Next](@next)
