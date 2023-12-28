## How to use associated type in Swift

In Swift, associatedtype allows you to declare a placeholder type within a protocol. This placeholder, known as an associated type, is specified by the conforming type. It adds flexibility to your protocols, letting them be used in a variety of contexts while still maintaining type safety. For instance, a Storage protocol can have an associatedtype Item, allowing different storage types like Bookshelf or Garage to define what Item specifically means in their context. This approach enables writing generic, reusable code while allowing specific types to be defined when the protocol is implemented.

```swift
protocol Storage {
    associatedtype Item
    var items: [Item] { get set }
    mutating func store(_ item: Item)
    mutating func retrieve() -> Item?
}

struct Book {
    var title: String
    var author: String
}

struct Bookshelf: Storage {
    var items = [Book]()

    mutating func store(_ item: Book) {
        items.append(item)
    }

    mutating func retrieve() -> Book? {
        return items.isEmpty ? nil : items.removeLast()
    }
}

struct Tool {
    var name: String
    var brand: String
}

struct Garage: Storage {
    var items = [Tool]()

    mutating func store(_ item: Tool) {
        items.append(item)
    }

    mutating func retrieve() -> Tool? {
        return items.isEmpty ? nil : items.removeLast()
    }
}
```

## Reference

[YouTube 👀]()