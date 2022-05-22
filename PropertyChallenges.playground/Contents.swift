import UIKit
import Foundation


// MARK: - Property Arcade


/*
MARK: Dog years
 
Create a struct called person, with a storied property of type Int called age, and then add a computed property called ageInDogYears of type Int that returns the age of the person in dog years (age * 7).
 
 */

struct Person {
    var age: Int
    
    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

let joe = Person(age: 25)
joe.ageInDogYears


/*
 MARK: isEquilateral
 
 Given the following Triangle structure, write a computed property that determines whether the sides of the triangle are equilateral (all three sides are equal)
 
 
 */

struct Triangle {
    let edgeA: Int
    let edgeB: Int
    let edgeC: Int
    
    var isEquilateral: Bool {
        get {
            return edgeA == edgeB && edgeB == edgeC && edgeA == edgeC
        }
    }
}
let trianle = Triangle(edgeA: 5, edgeB: 5, edgeC: 5)
trianle.isEquilateral



/*
// MARK: Title in the Post
 
 Add a property observer stored property title that trims white space and new lines when the title stored property is set.
 
 */

struct Post {
    var title: String {
        didSet {
            self.title = title.trimmingCharacters(in: .whitespacesAndNewlines)
        }
    }
}
var post = Post(title: "     spaces       ") // must be var
post.title                                   // didSet not called
post.title = "  no spaces     "              // didSet called
post.title



/*
MARK: Observe the radius
 
 Define a class of type Circle. Give it a stored property 'radius' of type 'Double'.
 And use the 'didSet' property observer to ensure no negative values get assigned to radius.
 If negative number, assign radious value of 0
 
 */

class Circle {
    var radius: Double = 0 {
        didSet {
            if radius < 0 {
                radius = oldValue
            }
        }
    }
    
    var area: Double {
        get {
            return radius * radius * Double.pi
        } set(newArea) {
            radius = sqrt(newArea / Double.pi)
        }
    }
    
    
}
//let circle = Circle()
//circle.radius = 5
//circle.area

let circle = Circle()
circle.area = 25
circle.radius

/*
MARK: Compute the area
 
 Building on the previous example, calculate the circles area as a computed property.
 
 */

/*
 MARK: Set the radius via the square root.
 
  Building on previous question, add a setter to the computed property area. When the area is set, have it set the property radius.
 
 */







// Stored : didGet {}; didSet {}
// Computed: get {}; set {}
