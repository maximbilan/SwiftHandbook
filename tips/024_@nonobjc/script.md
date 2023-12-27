## 024_@nonobjc

The @onobjc attribute in Swift is used to prevent a method or property from being exposed to the Objective-C runtime. This is especially useful when you want to avoid name clashes or ensure that certain parts of your Swift code remain exclusive to Swift, not accessible from Objective-C. In this example, exclusiveGreeting is marked with @nonobjc, meaning it's a Swift-only method and can't be called from Objective-C. The greet method, however, is accessible from both Swift and Objective-C. Happy coding!

```swift


import Foundation

class MyClass: NSObject {
    // This method is accessible from Objective-C
    func greet() {
        print("Hello from Objective-C and Swift!")
    }

    // This method is NOT accessible from Objective-C
    @nonobjc func exclusiveGreeting() {
        print("Hello, Swift exclusive party!")
    }
}

let myObject = MyClass()
myObject.greet() // Works fine
// myObject.exclusiveGreeting() // Compiler error


```