# TSTable

## Description
SwiftUI Simple Table View.
Tables are supported starting with Xcode 14, but not supported in earlier versions. 
TSTable was created for versions prior to Xcode14.

For iOS13+


## Image
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
