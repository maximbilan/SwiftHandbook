## How to use Prototype pattern in Swift

In Swift, the Prototype pattern is about cloning objects efficiently. It's useful when you need multiple instances of an object with the same or slightly modified properties. By defining a Prototype protocol with a clone method, objects like Enemy can be duplicated effortlessly. This approach streamlines the creation of similar objects, avoiding repetitive initialization, which is handy in scenarios like game development where numerous similar entities are needed. The Prototype pattern simplifies and optimizes object creation, making code more maintainable and elegant.

```swift
// Define a protocol for cloning
protocol Prototype {
    func clone() -> Prototype
}

// Here's our Enemy class
class Enemy: Prototype {
    var health: Int
    var attackPower: Int

    init(health: Int, attackPower: Int) {
        self.health = health
        self.attackPower = attackPower
    }

    // Implement the clone method
    func clone() -> Prototype {
        return Enemy(health: self.health,
                     attackPower: self.attackPower)
    }
}

// Usage
let originalEnemy = Enemy(health: 100, attackPower: 75)
let clonedEnemy = originalEnemy.clone() as! Enemy

// Now you have two enemies with the same attributes
print("\(originalEnemy.health), \(originalEnemy.attackPower)")
print("=\(clonedEnemy.health), \(clonedEnemy.attackPower)")
```

## Reference

[YouTube 👀](https://youtube.com/shorts/fer4mBm9vHg?feature=share)
