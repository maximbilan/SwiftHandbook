## Convenience Initializer

In Swift, convenience initializers offer a simpler, more streamlined way to create instances of a class. They are secondary, supporting initializers that call the class's designated initializer. This allows for initializing an object with fewer or default parameters. For instance, in a FantasyCharacter class, while the designated initializer requires a name, role, and hit points, a convenience initializer can allow creation of a character with just a name, automatically assigning a default role and hit points. This simplifies object creation, especially when full customization isn't needed, making your code more flexible and user-friendly.

```swift
class FantasyCharacter {
    var name: String
    var role: String
    var hitPoints: Int

    // Designated initializer
    init(name: String, role: String, hitPoints: Int) {
        self.name = name
        self.role = role
        self.hitPoints = hitPoints
    }

    // Convenience initializer
    convenience init(name: String) {
        // Default role and hit points
        self.init(name: name, role: "Wizard", hitPoints: 100) 
    }
}

// Using the designated initializer
let warrior = FantasyCharacter(name: "Gorath",
                               role: "Warrior",
                               hitPoints: 150)

// Using the convenience initializer
let wizard = FantasyCharacter(name: "Merlin")
```

## Reference

[YouTube 👀](https://youtube.com/shorts/G4-WjtqGkoQ?feature=share)