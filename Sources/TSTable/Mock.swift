//
//  Mock.swift
//  
//
//  Created by todayssky on 2022/09/01.
//

import Foundation

//
//  Mock.swift
//  TSTableDemo
//
//  Created by todayssky on 2022/08/31.
//

import Foundation

struct Person: Identifiable, Hashable {
    let givenName: String
    let familyName: String
    let emailAddress: String
    let id = UUID()
}

var people = [
    Person(givenName: "Juan", familyName: "Chavez", emailAddress: "juanchavez@icloud.com"),
    Person(givenName: "Mei", familyName: "Chen", emailAddress: "meichen@icloud.com"),
    Person(givenName: "Tom", familyName: "Clark", emailAddress: "tomclark@icloud.com"),
    Person(givenName: "Gita", familyName: "Kumar", emailAddress: "gitakumar@icloud.com")
]
