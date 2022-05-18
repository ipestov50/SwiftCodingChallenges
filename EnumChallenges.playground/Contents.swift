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

// MARK: - Rock, Paper, Scissors

/*
 
 1) Define an enumeration named HandShape with three members: .rock, .paper, .scissors.
 2) Define an enumeration named MatchResult with three members: .win, .draw, .lose.
 3) Write a function called match that takes two hand shapes and returns a match result. It should return the outcome for the first player (the one with the first hand shape).
 
 */

// code

enum HandShape {
    case rock
    case paper
    case scissors
}

enum MatchResult {
    case win
    case draw
    case lose
}

func match(_ firstHandShape: HandShape, _ secondHandShape: HandShape) -> MatchResult {
    
    if firstHandShape == secondHandShape {
        return .draw
    }
    
    if firstHandShape == .rock && secondHandShape == .scissors {
        return .win
    }
    
    if firstHandShape == .paper && secondHandShape == .rock {
        return .win
    }
    
    if firstHandShape == .scissors && secondHandShape == .paper {
        return .win
    }
    
    return .lose
}

match(.paper, .rock) // win

