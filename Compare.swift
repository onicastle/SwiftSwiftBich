//
//  Compare.swift
//  
//
//  Created by Oni on 12/30/18.
//

import Foundation

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

let currentEmployee = Employee(firstName: "Jacob", lastName: "Edwards", jobTitle: "Industrial Desginer", phoneNumber: "415-555-7766")
let selectedEmployee = Employee(firstName: "Jacob", lastName: "Edwards", jobTitle: "Marketing Director", phoneNumber: "415-555-9293")

if currentEmployee == selectedEmployee {
    // Enable "Edit" button
}
