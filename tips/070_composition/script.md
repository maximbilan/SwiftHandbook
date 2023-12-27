## 070_composition

In Swift, Composition is like assembling a custom creation with Lego blocks, rather than using a pre-built model. It involves creating objects that are made up of other, smaller objects, offering more flexibility and maintainability. For example, in a game, instead of extending a base Character class for Wizard and Warrior, you create components like SpellCasting and MeleeFighting. This allows an Adventurer to have a mix of abilities, like spell-casting and sword-fighting. Composition in Swift is all about crafting unique, modular, and easily understandable entities, avoiding the complexities and rigidity of traditional inheritance.

```swift




protocol SpellCasting {
    func castSpell()
}

protocol MeleeFighting {
    func swingSword()
}

class Wizard: SpellCasting {
    func castSpell() {
        print("Casting a spell 🪄")
    }
}

class Warrior: MeleeFighting {
    func swingSword() {
        print("Swinging a sword 🗡️")
    }
}

class Adventurer {
    var spellCasting: SpellCasting?
    var meleeFighting: MeleeFighting?

    func performAction() {
        spellCasting?.castSpell()
        meleeFighting?.swingSword()
    }
}

```