//
//  Mock.swift
//  TSTableDemo
//
//  Created by todayssky on 2022/08/31.
//

import Foundation

public struct TSTablePerson: Hashable {
    public let givenName: String
    public let familyName: String
    public let emailAddress: String
}

extension TSTablePerson {
    public static func getMock() -> [TSTablePerson] {
        [
            TSTablePerson(givenName: "Juan", familyName: "Chavez", emailAddress: "juanchavez@icloud.com"),
            TSTablePerson(givenName: "Mei", familyName: "Chen", emailAddress: "meichen@icloud.com"),
            TSTablePerson(givenName: "Tom", familyName: "Clark", emailAddress: "tomclark@icloud.com"),
            TSTablePerson(givenName: "Gita", familyName: "Kumar", emailAddress: "gitakumar@icloud.com")
        ]
    }
}
