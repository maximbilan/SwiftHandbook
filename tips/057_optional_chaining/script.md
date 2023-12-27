## 057_optional_chaining

Optional chaining in Swift allows you to safely access properties, methods, and subscripts of optional values. It's like a series of checks where you're politely asking. If you exist, please proceed, if not, stop here and return nil. This approach elegantly handles potentially nil values in a complex chain of properties without the risk of a runtime crash. This approach is safer than force unwrapping and more concise than nested if lets.

```swift


class House {
    var kitchen: Kitchen?
}

class Kitchen {
    var oven: Oven?
}

class Oven {
    var temperature: Int?
}

let myHouse = House()

// Let's try to set the oven temperature
// But wait, we're not sure if the house
// has a kitchen or if the kitchen has an oven!
myHouse.kitchen?.oven?.temperature = 200

// This line will safely do nothing if kitchen or oven is nil
// If they exist, it sets the oven's temperature to 200.
// Neat, right?

// Now, let's check the temperature.
if let ovenTemperature = myHouse.kitchen?.oven?.temperature {
    print("Oven is preheated to \(ovenTemperature) degrees.")
} else {
    print("Seems like we can't preheat the oven right now.")
}

```