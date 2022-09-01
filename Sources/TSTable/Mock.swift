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

extension Person {
    static func getMock() -> [Person] {
        [
            Person(givenName: "Juan", familyName: "Chavez", emailAddress: "juanchavez@icloud.com"),
            Person(givenName: "Mei", familyName: "Chen", emailAddress: "meichen@icloud.com"),
            Person(givenName: "Tom", familyName: "Clark", emailAddress: "tomclark@icloud.com"),
            Person(givenName: "Gita", familyName: "Kumar", emailAddress: "gitakumar@icloud.com")
        ]
    }
}
