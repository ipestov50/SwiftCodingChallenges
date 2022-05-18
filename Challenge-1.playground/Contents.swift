
import UIKit

// MARK: Challenge 1: Are the letters unique?

// Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.

func challenge1(input: String) -> Bool {
    
    var usedLetters = [Character]()
    
    for letter in input {
        if usedLetters.contains(letter) {
            return false
        }
        usedLetters.append(letter)
    }
    
    return true
}

challenge1(input: "eghfrxx")

// With Set
func challenge1b(input: String) -> Bool {
    
    return Set(input).count == input.count
}

challenge1b(input: "heLlo")
