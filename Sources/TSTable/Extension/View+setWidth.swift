//
//  View+setWidth.swift
//  TSTableDemo (iOS)
//
//  Created by todayssky on 2022/08/31.
//

import SwiftUI

struct SetWidth: ViewModifier {
    let fullWidth: CGFloat
    let widthRatio: CGFloat?
    
    func body(content: Content) -> some View {
        if let widthRatio = widthRatio {
            content
                .frame(width: fullWidth * widthRatio)
        } else {
            content
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

extension View {
    func setWidth(
        fullWidth: CGFloat,
        _ widthRatio: CGFloat?
    ) -> some View {
        self.modifier(
            SetWidth(
                fullWidth: fullWidth,
                widthRatio: widthRatio
            )
        )
    }
}
