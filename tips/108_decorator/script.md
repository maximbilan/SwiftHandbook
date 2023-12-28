## How to use Decorator pattern in Swift

The Decorator pattern in Swift allows you to add new functionalities to objects dynamically, without altering their structure. It's akin to enhancing a basic class with additional features on the fly. For instance, consider a simple Coffee class. Using the Decorator pattern, you can extend its functionality by adding decorators like MilkDecorator or SugarDecorator. Each decorator enhances the coffee with new features (like milk or sugar), stacking on top of the existing functionalities. This approach maintains code cleanliness and modularity, as you're not creating numerous subclasses for each combination of features, but rather dynamically attaching enhancements as needed.

```swift
protocol Coffee {
    func cost() -> Double
    func description() -> String
}

class SimpleCoffee: Coffee {
    func cost() -> Double {
        return 2.0
    }
    func description() -> String {
        return "Simple Coffee"
    }
}

class CoffeeDecorator: Coffee {
    private let decoratedCoffee: Coffee

    init(decoratedCoffee: Coffee) {
        self.decoratedCoffee = decoratedCoffee
    }
    func cost() -> Double {
        return decoratedCoffee.cost()
    }
    func description() -> String {
        return decoratedCoffee.description()
    }
}

class MilkDecorator: CoffeeDecorator {
    override func cost() -> Double {
        return super.cost() + 0.5
    }
    override func description() -> String {
        return super.description() + ", milk"
    }
}

class SugarDecorator: CoffeeDecorator {
    override func cost() -> Double {
        return super.cost() + 0.3
    }
    override func description() -> String {
        return super.description() + ", sugar"
    }
}

var myCoffee: Coffee = SimpleCoffee()
print("\(myCoffee.description()) - $\(myCoffee.cost())")

myCoffee = MilkDecorator(decoratedCoffee: myCoffee)
print("\(myCoffee.description()) - $\(myCoffee.cost())")

myCoffee = SugarDecorator(decoratedCoffee: myCoffee)
print("\(myCoffee.description()) - $\(myCoffee.cost())")
```

## Reference

[YouTube 👀]()