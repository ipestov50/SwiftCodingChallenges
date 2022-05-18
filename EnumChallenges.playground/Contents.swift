import UIKit

// MARK: - Enum Challenges

// MARK: Grid Warrior

/*
 
 You are a game designer in which your character is exploring a grid like map. You get the original location of the character and the steps he/she will take.

 Write a code, that will:
 - increment y + 1 if up
 - decrement y - 1 if down
 - increment x + 1 if right
 - decrement x - 1 if left
 
 Print the final location after all the steps have been taken
 
 */

enum Direction {
    case up
    case down
    case left
    case right
}

var location = (x: 0, y: 0)

var steps: [Direction] = [.up, .up, .left, .down, .left]

// code

for step in steps {
    switch step {
    case .up:
        location.y += 1
    case .down:
        location.y -= 1
    case .left:
        location.x -= 1
    case .right:
        location.x += 1
    }
    
}
print("\(location.x), \(location.y)")

// Why don't we use map? Because map changes the contents of the array. 
