## Open vs Public Access Level

In Swift, understanding Open vs Public access levels is like navigating a social event. Public access allows entities to be used within any module that imports the defining module, akin to sharing basic information with anyone at a party. However, Public doesn't permit subclassing or overriding. On the other hand, Open is like being an open book: it not only allows usage across modules but also enables subclassing and overriding, inviting others to build upon and extend the functionality. So, Public is for when you want your code to be widely used but not modified, while Open is for when you're open to others evolving your work.

```swift
// In your transportation module
open class Vehicle {
    public var numberOfWheels: Int

    public init(wheels: Int) {
        self.numberOfWheels = wheels
    }

    open func describeVehicle() -> String {
        return "A vehicle with \(numberOfWheels) wheels"
    }
}

// In a different module
class Car: Vehicle {
    override func describeVehicle() -> String {
        return "A car with \(numberOfWheels) wheels"
    }
}

let myCar = Car(wheels: 4)
print(myCar.describeVehicle()) 
// Outputs: "A car with 4 wheels"
```

## Reference

[YouTube 👀](https://youtube.com/shorts/qujU6e7GbJI?feature=share)
