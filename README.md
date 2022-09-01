# TSTable

SwiftUI Simple Table View.

![image](./TSTableImage.png)

## Demo
Added an example project, with iOS, watchOS target: https://github.com/todayssky/TSTableDemo

## Usage
```
            TSTableView(
                elements: persons,
                TSTableColumn(name: "name", value: \.givenName),
                TSTableColumn(name: "familyName", value: \.familyName),
                TSTableColumn(name: "emailAddress", value: \.emailAddress, widthRatio: 0.5)
            )
            
            TSTableView(
                elements: persons,
                selection: $selection,
                TSTableColumn(name: "name", value: \.givenName),
                TSTableColumn(name: "familyName", value: \.familyName),
                TSTableColumn(name: "emailAddress", value: \.emailAddress, widthRatio: 0.5),
                vSpacing: 10,
                hSpacing: 10
            )
```
