## 055_final

The final keyword in Swift is used to prevent classes, methods, or properties from being subclassed or overridden. Applying final improves performance by allowing the compiler to perform direct method calls rather than dynamic dispatch. It also enhances code safety by ensuring that your carefully designed implementations remain unaltered. However, it limits flexibility by restricting inheritance and overriding, so use it judiciously for components that you're certain should remain unchanged.

```swift


final class UltimateCalculator {
    func add(a: Int, b: Int) -> Int {
        return a + b
    }
}

// Attempting to subclass UltimateCalculator
// will result in a compile-time error
// class AdvancedCalculator: UltimateCalculator { }
class Calculator {
    final func multiply(a: Int, b: Int) -> Int {
        return a * b
    }
}

class AdvancedCalculator: Calculator {
    // Attempting to override multiply
    // will result in a compile-time error
    // override func multiply(a: Int, b: Int) -> Int { ... }
}

class Vehicle {
    final var maxSpeed: Int {
        return 120
    }
}

class Car: Vehicle {
    // Attempting to override maxSpeed
    // will result in a compile-time error
    // override var maxSpeed: Int { ... }
}

```