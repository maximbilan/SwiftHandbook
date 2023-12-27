## Equatable

The Equatable protocol allows you to define custom rules for comparing instances of your custom types (like structs or classes) for equality. For more complex scenarios or when specific comparison criteria are needed, you can manually implement the == operator to dictate exactly how two instances should be compared. This is particularly useful when your objects have unique identifiers or specific properties that define their identity.

```swift
struct Spell: Equatable {
    var name: String
    var incantation: String

    static func ==(lhs: Spell, rhs: Spell) -> Bool {
        return lhs.incantation == rhs.incantation
    }
}

let spell1 = Spell(name: "Spell 1", incantation: "Fireball")
let spell2 = Spell(name: "Spell 2", incantation: "Buble")
print(spell1 == spell2)
// Prints "false"
```

## Reference

[YouTube 👀](https://youtube.com/shorts/dZC7C4uCL1o?feature=share)