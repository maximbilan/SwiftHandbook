## How to use Builder pattern in Swift

The Builder pattern in Swift is like a fine tailor for your objects. It helps in constructing complex objects step by step, avoiding messy constructors with too many parameters. By using a nested Builder class within your object class, you can incrementally set properties through a fluent API. This approach enhances code readability and maintainability, especially for objects with numerous and potentially optional properties. It's like assembling a Lego set piece by piece, resulting in a clean and customized object creation process.

```swift
class Car {
    var brand: String?
    var model: String?
    var horsepower: Int?
    // more properties here

    class Builder {
        private var car = Car()

        func withBrand(_ brand: String) -> Builder {
            car.brand = brand
            return self
        }

        func withModel(_ model: String) -> Builder {
            car.model = model
            return self
        }

        func withHorsepower(_ horsepower: Int) -> Builder {
            car.horsepower = horsepower
            return self
        }

        // more builder methods here

        func build() -> Car {
            return car
        }
    }
}

// Usage
let myCar = Car.Builder()
    .withBrand("Swift Motors")
    .withModel("Swift GT")
    .withHorsepower(300)
    .build()
```

## Reference

[YouTube 👀]()