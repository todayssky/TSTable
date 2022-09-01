//
//  TSTableColumn.swift
//  TSTableDemo (iOS)
//
//  Created by todayssky on 2022/09/01.
//

import SwiftUI

struct TSTableColumn<T>: Hashable where T: Hashable {
    let name: String
    let value: KeyPath<T, String>
    var widthRatio: CGFloat?
}
