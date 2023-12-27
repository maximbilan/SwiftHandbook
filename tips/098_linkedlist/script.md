## How to implement LinkedList in Swift

In Swift, a LinkedList is created using classes to leverage their reference type nature. It involves defining a Node class that holds a value and a reference to the next node. The LinkedList class maintains a reference to the first node, the head. Key functions include append for adding nodes, and traverse for iterating over the list. Using generics allows the LinkedList to store any data type. Remember, nodes being reference types means copying a LinkedList shares the same nodes, so deep copies require creating new nodes. This approach offers a simple yet flexible way to handle LinkedLists in Swift.

```swift


class Node<T> {
    var value: T
    var next: Node?

    init(value: T) {
        self.value = value
    }
}

class LinkedList<T> {
    var head: Node<T>?

    func append(value: T) {
        let newNode = Node(value: value)
        if let lastNode = self.last {
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }

    func traverse() {
        var current = head
        while current != nil {
            print(current!.value)
            current = current?.next
        }
    }
}
```

## Reference

[YouTube 👀]\(\)