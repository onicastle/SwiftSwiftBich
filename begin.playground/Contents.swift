import UIKit

var str = "Hello, playground"

class Shoe: CustomStringConvertible {
    let color: String
    let size: Int
    let hasLaces: Bool
    
    init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
    
    var description: String{
        let doesOrDoesNot = hasLaces ? "does" : "does not"
        return "Shoe(color: \(color), size: \(size), and \(doesOrDoesNot) have laces."
    }
    
    
}
let myShoe = Shoe(color: "Black", size: 12, hasLaces: true)
print(myShoe)

struct Employee: Equatable{
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: String
}

struct Company{
    var name: String
    var employees : [Employee]
    
}

func ==(lhs: Employee, rhs: Employee) -> Bool{
    if(lhs.firstName != rhs.firstName || lhs.jobTitle != rhs.jobTitle || lhs.lastName != rhs.jobTitle || lhs.phoneNumber != rhs.phoneNumber){
        return false
    }
    return true
}
