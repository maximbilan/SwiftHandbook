## 038_solid_ocp

The Open-Closed Principle in Swift encourages designing your classes and structures in a way that allows them to be extended without needing to modify their existing code. The key idea is to create flexible, adaptable code structures that can handle new functionalities or requirements without altering their core implementation. the Shape protocol acts as a foundation, allowing different shapes like Circle and Rectangle to conform to a common interface for calculating area. The AreaCalculator class can then work with any shape that conforms to the Shape protocol. This design is 'open' for extension—you can easily add new shapes like Triangle or Square without changing the existing AreaCalculator class. However, it's 'closed' for modification, as adding new shapes doesn't require altering the existing code of AreaCalculator or the Shape protocol. This approach reduces the risk of bugs when expanding functionality and adheres to one of the key principles of robust, maintainable object-oriented design.

```swift

protocol Shape {
    func area() -> Double
}

class Circle: Shape {
    let radius: Double

    init(radius: Double) {
        self.radius = radius
    }

    func area() -> Double {
        return .pi * radius * radius
    }
}

class Rectangle: Shape {
    let width: Double
    let height: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    func area() -> Double {
        return width * height
    }
}

class AreaCalculator {
    func calculateArea(shapes: [Shape]) -> Double {
        return shapes.reduce(0) { $0 + $1.area() }
    }
}

```