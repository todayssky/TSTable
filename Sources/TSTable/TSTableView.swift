//
//  TSTableView.swift
//  TSTableDemo (iOS)
//
//  Created by todayssky on 2022/09/01.
//

import SwiftUI

struct TSTableView<T>: View where T: Hashable {
    private let elements: [T]
    private var columns: [TSTableColumn<T>]
    private var hSpacing: CGFloat
    private var vSpacing: CGFloat
    
    private var selection: Binding<T?>?
    
    init(
        elements: [T],
        _ columns: TSTableColumn<T>...,
        hSpacing: CGFloat = 10,
        vSpacing: CGFloat = 10
    ) {
        self.elements = elements
        self.columns = columns
        self.hSpacing = hSpacing
        self.vSpacing = vSpacing
    }
    
    init(
        elements: [T],
        selection: Binding<T?>?,
        _ columns: TSTableColumn<T>...,
        hSpacing: CGFloat = 10,
        vSpacing: CGFloat = 10
    ) {
        self.elements = elements
        self.selection = selection
        self.columns = columns
        self.hSpacing = hSpacing
        self.vSpacing = vSpacing
    }
    
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: hSpacing) {
                ForEach(columns, id: \.self) { column in
                    VStack(
                        alignment: .leading,
                        spacing: 6
                    ) {
                        Text(column.name)
                            .lineLimit(1)
                        Color.borderColor
                            .frame(height: 1)
                            .padding(
                                .horizontal,
                                -hSpacing * 0.5
                            )
                        VStack(
                            alignment: .leading,
                            spacing: vSpacing
                        ) {
                            ForEach(elements.indices, id: \.self) { index in
                                Button(action: {
                                    selection?.wrappedValue = elements[index]
                                }) {
                                    ZStack(alignment: .leading) {
                                        TextBackground(
                                            index: index,
                                            column: column
                                        )
                                        Text(elements[index][keyPath: column.value])
                                            .lineLimit(1)
                                            .foregroundColor(
                                                TextForegroundColor(index: index)
                                            )
                                    }
                                    .frame(height: 20)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                    }
                    .setWidth(
                        fullWidth: geometry.size.width,
                        column.widthRatio
                    )
                }
            }
            .padding(8)
            .border(Color.borderColor)
            .background(Color.white)
        }
    }
}

extension TSTableView {
    @ViewBuilder
    func TextBackground(
        index: Int,
        column: TSTableColumn<T>
    ) -> some View {
        TextBackgroundColor(index: index)
            .if(column == columns.first, transform: { view in
                view.cornerRadius(6, corners: [.topLeft, .bottomLeft])
            })
                .if(column == columns.last, transform: { view in
                    view.cornerRadius(6, corners: [.topRight, .bottomRight])
                })
                    .padding(.horizontal, -hSpacing * 0.5)
                    .padding(.vertical, -vSpacing * 0.5)
    }
    
    func TextBackgroundColor(index: Int) -> Color {
        if selection?.wrappedValue == elements[index] {
            return Color.blue
        } else if index % 2 == 1 {
            return Color.textBackground
        }
        return Color.white
    }
    
    func TextForegroundColor(index: Int) -> Color {
        if selection?.wrappedValue == elements[index] {
            return Color.white
        }
        return Color.black
    }
}

struct TSTableView_Previews: PreviewProvider {
    static var previews: some View {
        TSTableView(
            elements: people,
            TSTableColumn(name: "name", value: \.givenName),
            TSTableColumn(name: "familyName", value: \.familyName),
            TSTableColumn(name: "emailAddress", value: \.emailAddress, widthRatio: 0.5)
        )
        .font(.footnote)
        .padding()
    }
}
