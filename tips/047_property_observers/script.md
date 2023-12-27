## Property Observers

willSet and didSet are Swift's way of giving you a heads-up before and a report after a property's value changes, making them incredibly useful for managing and responding to data dynamics within your classes. willSet: It's a property observer that executes just before a property's value is changed. In this example, willSet is used to display a message about the upcoming temperature change. didSet: This observer activates right after a property's value has been changed. didSet checks the new temperature and prints a warning if it's too high. They're like having a before-and-after snapshot of your property's state.

```swift
class TemperatureSensor {
    var temperature: Double {
        willSet(newTemperature) {
            print("About to set to \(newTemperature)°C")
        }
        didSet {
            if temperature > 30 {
                print("High temperature detected \(temperature)°C")
            } else {
                print("Temperature set to \(temperature)°C")
            }
        }
    }

    init(temperature: Double) {
        self.temperature = temperature
    }
}

let sensor = TemperatureSensor(temperature: 25)
sensor.temperature = 32
sensor.temperature = 22
```

## Reference

[YouTube 👀](https://youtube.com/shorts/KLKqtnHHsc4?feature=share)