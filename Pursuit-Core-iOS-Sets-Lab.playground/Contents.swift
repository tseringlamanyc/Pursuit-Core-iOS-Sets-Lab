import UIKit

// Uncomment the "assert" lines for each problem when you have a solution, and run the playground to test.  When you have uncommented out the assert lines, no error messages or print statements means that your code is working correctly.

// Question One

// Create a new array numbersWithNoDuplicates that has all of the elements from numbers without any duplicates.  It should be in the same order as the original.

let numbers = [1,1,2,4,4,4,6,6,7,8]

var numbersWithNoDuplicates = [Int]()

var setWithNoDuplicates: Set<Int> = Set(numbers)
numbersWithNoDuplicates = Array(setWithNoDuplicates).sorted()
print(numbersWithNoDuplicates.sorted())

assert(numbersWithNoDuplicates == [1,2,4,6,7,8], "Was expecting [1,2,4,6,7,8], but got \(numbersWithNoDuplicates)")

// Questions Two

// Create a new array scoresThatAppearOnce that has all the elements from scores that appear exactly once.  It should be in the same order as the original.

let scores = [1, 77, 83, 32, 77, 77, 83, 32, 99]

var scoresThatAppearOnce = [Int]()
var scoreSet: Set<Int> = Set(scores)

//assert(scoresThatAppearOnce == [1, 99], "Was expecting [1, 99], but got \(scoresThatAppearOnce)")

// Question Three

// a.

// Given arrOne and arrTwo, create a variable arrThree which is equal to the UNION of arrOne and arrTwo.  It should not contain any duplicate elements.  Sort arrThree from smallest to greatest.

let arrOne = [1,2,3,4,5]
let arrTwo = [3,4,5,6,7]

var arrThree: [Int] = []

var oneSet: Set<Int> = Set(arrOne)
var twoSet: Set<Int> = Set(arrTwo)

arrThree = Array(oneSet.union(twoSet)).sorted()

assert(arrThree == [1,2,3,4,5,6,7], "Was expecting [1,2,3,4,5,6,7], but got \(arrThree)")

// b.

// Given arrFour and arrFive, create a variable arrSix with is equal to the INTERSECTION of arrFour and arrFive.  If should not contain any duplicate elements.  Sort arrSix from smallest to greatest.

let arrFour = [1,2,3,4,5]
let arrFive = [3,4,5,6,7]

var arrSix: [Int] = []

var fourSet: Set<Int> = Set(arrFour)
var fiveSet: Set<Int> = Set(arrFive)

arrSix = Array(fourSet.intersection(fiveSet)).sorted()

assert(arrSix == [3,4,5], "Was expecting [3,4,5], but got \(arrSix)")

// Question Four

// Given the 4 arrays of Ints below, create a new array, sorted in ascending order, that contains all the values without duplicates.

let numsOne = [2, 4, 5, 6, 8, 10, 12]
let numsTwo = [1, 2, 3, 4, 5, 6]
let numsThree = [5, 6, 7, 8, 9, 10, 11, 12]
let numsFour = [1, 3, 4, 5, 6, 7, 9]

var allNumsWithNoDuplicates: [Int] = []

var set1: Set<Int> = Set(numsOne)
var set2: Set<Int> = Set(numsTwo)
var set3: Set<Int> = Set(numsThree)
var set4: Set<Int> = Set(numsFour)

var totalSet: Set<Int> = set1.union(set2)
totalSet = totalSet.union(set3)
totalSet = totalSet.union(set4)

allNumsWithNoDuplicates = Array(totalSet).sorted()

assert(allNumsWithNoDuplicates == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "Was expecting [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], but got \([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])")


// Question Five


// Determine if a String is a pangram. A pangram is a string that contains every letter of the alphabet at least once.

// e.g "The quick brown fox jumps over the lazy dog" is a pangram e.g "The quick brown fox jumped over the lazy dog" is NOT a pangram

let strOne = "The quick brown fox jumps over the lazy dog"
let strTwo = "The quick brown fox jumped over the lazy dog"
let strThree = "Sphinx of black quartz, judge my vow"

var strOneIsPangram: Bool = false
var strTwoIsPangram: Bool = false
var strThreeIsPangram: Bool = false

var alphabets: Set<Character> = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

var trimmedStr1 = ""
for char in strOne {
    if char.isPunctuation || char.isWhitespace { continue }
    trimmedStr1 += String(char)
}

var setTrim = Set(trimmedStr1.lowercased())

if setTrim == alphabets {
    strOneIsPangram = true
} else {
    strOneIsPangram = false
}
print(strOneIsPangram)

var trimmedStr2 = ""
for char2 in strTwo {
    if char2.isPunctuation || char2.isWhitespace { continue }
    trimmedStr2 += String(char2)
}

var setTrim2 = Set(trimmedStr2.lowercased())

if setTrim2 == alphabets {
    strTwoIsPangram = true
} else {
    strTwoIsPangram = false
}
print(strTwoIsPangram)

var trimmedStr3 = ""
for char3 in strThree {
    if char3.isPunctuation || char3.isWhitespace { continue }
    trimmedStr3 += String(char3)
}

var setTrim3 = Set(trimmedStr3.lowercased())

if setTrim3 == alphabets {
    strThreeIsPangram = true
} else {
    strThreeIsPangram = false
}
print(strThreeIsPangram)

assert(strOneIsPangram == true, "Was expecting true, but got \(strOneIsPangram)")
assert(strTwoIsPangram == false, "Was expecting false, but got \(strTwoIsPangram)")
assert(strThreeIsPangram == true, "Was expecting false, but got \(strThreeIsPangram)")









