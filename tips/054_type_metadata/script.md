## 054_type_metadata

In Swift, you can use the type of function to access the metadata of a type. This metadata reveals details like the type's name, properties, and methods. It's a handy tool for inspecting types dynamically, especially in generics and runtime type manipulation. This function essentially offers a way to peek into the characteristics of any Swift type.

```swift


class Spaceship {
    var name: String
    init(name: String) {
        self.name = name
    }
}

struct Planet {
    var name: String
}

let falcon = Spaceship(name: "Millennium Falcon")
let tatooine = Planet(name: "Tatooine")

print("Type of falcon: \(type(of: falcon))")
// Output: Spaceship
print("Type of tatooine: \(type(of: tatooine))")
// Output: Planet

func printType<T>(of value: T) {
    print("The type of the value is \(type(of: value))")
}

printType(of: falcon)  // Output: Spaceship
printType(of: tatooine)  // Output: Planet
printType(of: 42)  // Output: Int

```