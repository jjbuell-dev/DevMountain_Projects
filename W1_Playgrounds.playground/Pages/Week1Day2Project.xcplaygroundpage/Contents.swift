
import Foundation
//: # Diagon Alley Shopping Trip
//: ### Part 1 - Basic Personal Details
let firstName = "Johnny"
let lastName = "Appleseed"
var age = 423
let birthDate = "1500 AD"
let preferredWandLengthInInches = 24
let preferredHouse = "Slytherin"
let characterTrait = "Ambitious"
let isTiredOfHarryPotter = true

//: ### Part 2 - Mathematical Operators
// Keeping track of all gold
var totalAllOwnedGold: Double
var goldInPurse: Double
var goldInPocket: Double
var goldVaultsVolume: Double
var goldLeftOnPerson: Double

//Taking gold to spend
var initialGoldVaultsVolume:Double =  150.0

//A wise wizard will not remove all of the gold from his vault
var initialgoldInPurse:Double = 100.0
goldVaultsVolume = 150.0 - initialgoldInPurse

//wizarding expenses
let firstWandCostInGold:Double = 24.3
let robesCostInGold: Double = 45
let wizardExpenses = firstWandCostInGold + robesCostInGold

//wizarding boon
let lostRelativeInheritanceInGold = 300.0
goldVaultsVolume = goldVaultsVolume + lostRelativeInheritanceInGold
print("Vault Total: \(goldVaultsVolume)")

//wizard gambling
goldInPurse = initialgoldInPurse - wizardExpenses
print("Total left in purse after Wizard Expenses \(round(goldInPurse * 100.0) / 100.0)")

//wizardly winnings
goldInPurse = round(goldInPurse * 100) / 100 * 2
print("Total left in purse after Gambling \(round(goldInPurse * 100) / 100.0)  ")

//put initial gambled amount back in purse and gambled winnings amount in pocket in pocket
goldInPocket = goldInPurse / 2
goldInPurse = goldInPocket
//total of "carry around" gold
goldLeftOnPerson = round(goldInPocket * 100) / 100 + round(goldInPurse * 100) / 100

//money burning hole in pocket decide to purchase bloodstained cards
let bloodStainedCardsCost: Double
bloodStainedCardsCost = goldInPocket * 0.10
goldInPocket = goldInPocket - bloodStainedCardsCost

//calculate all owned gold from
totalAllOwnedGold = goldVaultsVolume + goldInPurse + goldInPocket

//: ### Part 3 - Conditional Love
let beakColor = "black"
let featherColor = "white"

if beakColor == "black" && featherColor == "white"{
    print("This one is mine!")
} else {
    print("Pass")
}

//Broom purchase using logical AND operator - must be Holyhead Harpies sponsored
let broom = true
let holyHeadHarpiesSponsored = true

if broom && holyHeadHarpiesSponsored {
    print ("This is the broom for me!")
} else {
    print ("I guess I will keep looking")
}

//Assumed Sorting Hat logic
let slytherinTraitOne: String = "Cunning and Ambitious"
let slytherinTrait:String = "Ambitious"
let gryffindorTrait:String = "Brave"
let hufflepuffTrait:String = "Loyal"
let ravenclawTrait:String = "Intelligent"
let ravenclawTraitOne: String = "Great wit"

if characterTrait == slytherinTraitOne || characterTrait == slytherinTrait {
    print("You are sorted to the house Slytherin")
    } else if characterTrait == gryffindorTrait {
        print("You are sorted to the house Gryffindor")
    } else if characterTrait == hufflepuffTrait {
        print("You are sorted to the house Hufflepuff")
    } else if characterTrait == ravenclawTrait {
        print("You are sorted to the house Raveclaw")
    } else {
        print("There is no house for you!!")
    }

//: ### Part 4 - Functions
func buyFizzingWhizzbees(numberBought: Int) {
    let fizzingWhizzbeesCost = 2
    let totalCost = fizzingWhizzbeesCost * numberBought
   goldLeftOnPerson = goldLeftOnPerson - Double(totalCost)
    print("You now have this much gold left in your purse and pocket, \(goldLeftOnPerson)")
}
buyFizzingWhizzbees(numberBought:4)



//Buy chocolate frogs for the entire family, or none at all
func buyChocolateFrogs(familySize: Int){
    let chocolateFrogCost = 3
    let totalCFCost = chocolateFrogCost * familySize
   
    if goldLeftOnPerson >= Double(totalCFCost) {
        print("We'll take the lot.")
    } else {
        print("No Thanks, I'm all set")
    }
    goldLeftOnPerson = goldLeftOnPerson - Double(totalCFCost)
    print("Hope those Chocolate Frogs are good. You now have \(goldLeftOnPerson) coins left on you.")
}
buyChocolateFrogs(familySize: 7)



//Part 5 - Loops, Loops, Loops, repeat
totalAllOwnedGold = goldLeftOnPerson + goldVaultsVolume
var bookPrices = [12, 15, 22, 10, 8, 17]

for price in bookPrices {
    if price > 15 {
        totalAllOwnedGold = totalAllOwnedGold - Double(price)
        print("This book is expensive!!! Gold left to spend: \(totalAllOwnedGold)")
    } else {
        totalAllOwnedGold = totalAllOwnedGold - Double(price)
        print("This book isn't too bad. Gold left to spend: \(totalAllOwnedGold)")
    }
}

var totalPixiePuff = 0
while totalAllOwnedGold >= 3 {
    let pixiePuffCost = 3
    totalAllOwnedGold = totalAllOwnedGold - Double(pixiePuffCost)
    totalPixiePuff += 1
}
print("Total PixiePuff purchased: \(totalPixiePuff)")

//Final gold accounting
if Int(totalAllOwnedGold) == 0 {
    print("It sure is expensive to go to Wizarding School!!! You had better get yourself a job if you want to keep eating those Pixie Puffs!!")
} else {
    print("Final Gold left: \(Int(totalAllOwnedGold))")
    print("It sure is expensive to go to Wizarding School, but you still have this much left.  Maybe go treat yourself to some Wizzardly Snack??")
}

//: [Previous](Loops) /
//: [Next](@next)
