
import Foundation
//: # Functions
// function no parameters
func printGreeting() {
    print("Good Morning, Developer")
}
printGreeting()

var maxScore = 46
maxScore += 5
maxScore *= 2
if maxScore > 100 {
    maxScore = 100
}
print("Max scored \(maxScore)%")

var coltonScore = 40
coltonScore += 5
coltonScore *= 2
if coltonScore > 100 {
    coltonScore = 100
}
print("Colton scored \(coltonScore)%")

var kelseyScore = 42
kelseyScore += 5
kelseyScore *= 2
if kelseyScore > 100 {
    kelseyScore = 100
}
print("Kelsey scored \(kelseyScore)%")

// create a function to do above..
// Function with parameters
func calculateFinalScore(studentScore: Int, studentName: String) {
    var score = studentScore
    score += 5
    score *= 2
    if score > 100 {
        score = 100
    }
    print("\(studentName)'s score is \(score)%")
}
var newKelseyScore = 42

var newMaxScore = 44
var newColtonScore = 40

calculateFinalScore(studentScore: newKelseyScore, studentName: "Kelsey")
calculateFinalScore(studentScore: newMaxScore, studentName: "Max")
calculateFinalScore(studentScore: newColtonScore, studentName: "Colton")

// Functions with Return Values
func newCalculations(studentScore: Int, studentName: String) -> String {
    var score = studentScore
    score += 5
    score *= 2
    if score > 100 {
        score = 100
    }
    return "\(studentName)'s score is \(score)%"
}

let johnnyScore = newCalculations(studentScore: 30, studentName: "Johnny")
print(johnnyScore)

func newFunctionWithReturn() -> String {
    return "Hello, World!"
}
newFunctionWithReturn()

func calculateGrade(score: Int) -> String {
    if score >= 90 {
        return "A"
    
    } else if score >= 80 {
        return "B"
    
    }  else if score >= 70 {
        return "C"
    
    } else if score >= 60 {
        return "D"
        
    } else {
        return "F"
    }
}

let grade = calculateGrade(score: 76)
print(grade)

//: [Previous](Operators) /
//: [Next](Loops)
