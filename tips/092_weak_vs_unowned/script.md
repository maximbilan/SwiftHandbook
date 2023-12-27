## What Is the Difference Between Weak and Unowned References in Swift

In Swift, use weak references when the referenced object might become nil at some point, as they are optional and automatically turn to nil upon object deallocation. Opt for unowned references when you're certain the object will not be deallocated while the reference is in use, but be cautious as accessing an unowned reference after the object has been deallocated can cause a crash. This distinction is key for efficient and safe memory management in your Swift adventures!

```swift
class Wizard {
    var apprentice: Apprentice?

    deinit {
        print("Wizard is now part of the ethereal realm.")
    }
}

class Apprentice {
    // Use 'unowned' because an apprentice always has a wizard.
    unowned var master: Wizard
    // Use 'weak' for a spell that might not always be there.
    weak var favoriteSpell: Spell?

    init(master: Wizard) {
        self.master = master
        print("An apprentice has been assigned to a wizard.")
    }

    deinit {
        print("Apprentice is now free to roam the world.")
    }
}

class Spell {
    var name: String

    init(name: String) {
        self.name = name
    }

    deinit {
        print("\(name) spell has dissipated.")
    }
}

var gandalf: Wizard? = Wizard()
var frodo: Apprentice? = Apprentice(master: gandalf!)
gandalf?.apprentice = frodo

var invisibility: Spell? = Spell(name: "Invisibility")
frodo?.favoriteSpell = invisibility

gandalf = nil
invisibility = nil
frodo = nil
```

## Reference

[YouTube 👀]\(\)