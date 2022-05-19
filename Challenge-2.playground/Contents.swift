import UIKit

// Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case.


func rotator(_ input: String) -> Bool {
    
    let characterArray = Array(input)
    
    let lowercase = input.lowercased()
    return lowercase.reversed() == Array(lowercase)
}



// Remember strings are value types in Swift which means they compare as equal as long as their contents are identical. It doesn't matter how they are created as an analogy.

rotator("rotator")
rotator("Hello, World")
