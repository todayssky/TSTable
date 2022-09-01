//
//  TSTableColumn.swift
//  TSTableDemo (iOS)
//
//  Created by todayssky on 2022/09/01.
//

import SwiftUI

public struct TSTableColumn<T>: Hashable where T: Hashable {
    public let name: String
    public let value: KeyPath<T, String>
    public var widthRatio: CGFloat?
}
