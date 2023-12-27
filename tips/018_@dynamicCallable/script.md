## 018_@dynamicCallable

Did you hear something about the dynamicCallable attribute in Swift programming? Well... By using the dynamicCallable attribute, you can call instances of a type as if they were functions. You implement methods like dynamicallyCall with Arguments or dynamicallyCall with KeywordArguments to define what happens when the instance is called. This feature adds a layer of flexibility to your code, allowing for dynamic behavior similar to scripting languages. It's especially useful when dealing with APIs or data sources where the methods or properties you need to access are not known until runtime. However, it's important to use this feature judiciously, as it can make your code harder to understand and debug if overused. It's a powerful tool for making Swift code more dynamic and adaptable. Happy coding!

```swift




import Foundation

@dynamicCallable
struct Command {
    func dynamicallyCall(withArguments args: [Int]) -> Int {
        return args.reduce(0, +)
    }
}

let command = Command()
let result = sumUp(3, 5, 7)

 // It will call dynamicallyCall with [3, 5, 7]

print("\(result)")
// Output: 15


```