## 026_mutating

In Swift, the mutating keyword is used with struct methods to allow them to modify the struct's properties. Since structs are value types (they're copied, not referenced), they don't allow modification by default. But when you mark a method in a struct as mutating, it can then modify the properties of that struct. Think of it as a special permission for struct methods to 'mutate' or change the struct's state. Happy coding!

```swift



struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x dX: Double, y dY: Double) {
        x += dX
        y += dY
    }
}

var point = Point(x: 1.0, y: 1.0)
point.moveBy(x: 2.0, y: 3.0)

```