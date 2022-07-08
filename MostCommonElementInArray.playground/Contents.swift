import UIKit
import Foundation

var colorArray = ["red", "green", "green", "black", "blue", "yellow", "red", "green", "yellow", "red", "blue", "black", "white", "red", "black", "orange", "gray", "white", "gray", "orange"]


func getMostCommonColor(array: [String]) -> [String] {
    
    var topColors: [String] = []
    var colorDictionary: [String: Int] = [:]
    
    for color in array {
        if let count = colorDictionary[color] {
            colorDictionary[color] = count + 1
        } else {
            colorDictionary[color] = 1
        }
    }
    
    let highestValue = colorDictionary.values.max()
    
    for (color, count) in colorDictionary {
        if colorDictionary[color] == highestValue {
            topColors.append(color)
        }
    }
    return topColors
}

getMostCommonColor(array: colorArray)


var numberArray = [2, 4, 4, 5, 6, 7]

func getMostCommonNumber(array: [Int]) -> [Int] {
    var topNumber: [Int] = []
    var numberDictionary: [Int: Int] = [:]
    
    for number in array {
        if let count = numberDictionary[number] {
            numberDictionary[number] = count + 1
        } else {
            numberDictionary[number] = 1
        }
    }
    
    let highestNumber = numberDictionary.values.max()
    
    for (number, count) in numberDictionary {
        if numberDictionary[number] == highestNumber {
            topNumber.append(number)
        }
    }
    
    return topNumber
}
getMostCommonNumber(array: numberArray)


