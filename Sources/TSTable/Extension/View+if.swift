//
//  View+if.swift
//  TSTableDemo
//
//  Created by todayssky on 2022/09/01.
//

import SwiftUI

extension View {
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
