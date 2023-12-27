## CaseIterable

Did you know what the CaseIterable protocol does in Swift programming? Well... It allows you to easily obtain a collection of all the cases defined within an enum. It automatically generates a static property called allCases for the conforming enum, which is an array containing all the cases in the order they are defined. This is particularly useful when you need to work with all the cases of an enum.

```swift
import Foundation

enum Direction: CaseIterable {
    case north
    case south
    case east
    case west
}

let directions = Direction.allCases

for direction in directions {
    print(direction)
}
```

## Reference

[YouTube 👀](https://youtube.com/shorts/yGOu1wSyXpc?feature=share)