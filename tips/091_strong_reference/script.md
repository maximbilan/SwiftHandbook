## What does Strong reference mean?

In Swift, managing strong references is crucial to prevent memory leaks. A strong reference keeps an object in memory, and it's not deallocated as long as at least one strong reference to it exists. However, this can lead to strong reference cycles, where two objects hold strong references to each other, preventing their deallocation. To avoid this, use weak or unowned references in situations like parent-child relationships, where the child shouldn't keep the parent in memory. This practice ensures efficient memory management and prevents your app from becoming a memory-hogging sorcerer!

```swift
class Wizard {
    var name: String
    var spellbook: Spellbook?

    init(name: String) {
        self.name = name
        print("\(name) is ready for some Swift magic!")
    }

    deinit {
        print("\(name) has left the realm of Swift.")
    }
}

class Spellbook {
    weak var owner: Wizard?
    var spell: String

    init(spell: String) {
        self.spell = spell
        print("A spellbook containing the \(spell) spell is created.")
    }

    deinit {
        print("The spellbook with the \(spell) spell has vanished.")
    }
}

// Example Usage
var merlin: Wizard? = Wizard(name: "Merlin")
var fireballSpellbook: Spellbook? = Spellbook(spell: "Fireball")

merlin?.spellbook = fireballSpellbook
fireballSpellbook?.owner = merlin

// Breaking the strong reference
merlin = nil
fireballSpellbook = nil
```

## Reference

[YouTube 👀](https://youtube.com/shorts/j0_drVXi5dg?feature=share)
