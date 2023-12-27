## if case let 

Did you know how to check Swift enum with associated values without using the "switch" statement? Yeah, it's possible. Instead of using the "switch" statement, you can use the "if" statement with the following syntax if you don't need to check other cases. The exact mechanism works with the "guard" statement as well. It helps to get your code more cleaner.

```swift
import Foundation

enum Num {
    case null
    case int(Int)
    case float(Float)
}

let num1 = Num.int(5)

switch num1 {
    case .null:
        print("null")
    case .int(let value):
        print(value)
    case .float(let value):
        print(value)
}

if case .int(let value) = num1, value > 1 {
    print("num1 > 1")
}


func testGuard() {
    guard case let .int(value) = num1, value > 2 else {
        return
    }
    print("num1 > 2")
}

testGuard()
```

## Reference

[YouTube 👀](https://youtube.com/shorts/BmIHMGOnpFg?feature=share)