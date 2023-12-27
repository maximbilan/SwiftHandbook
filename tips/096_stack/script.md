## How to use Stack in Swift

This tip is about creating a stack data structure in Swift, which operates on a Last In, First Out (LIFO) principle. The core of the tip involves defining a Stack struct with generic elements, providing methods like push to add elements, pop to remove the top element, and peek to view the top element without removing it. Additionally, the isEmpty property checks if the stack is empty. To enhance functionality, an extension is added, making the Stack conform to the Sequence protocol, allowing iteration over the stack elements.

```swift



struct Stack<Element> {
    private var elements = [Element]()

    mutating func push(_ element: Element) {
        elements.append(element)
    }

    mutating func pop() -> Element? {
        return elements.popLast()
    }

    func peek() -> Element? {
        return elements.last
    }

    var isEmpty: Bool {
        return elements.isEmpty
    }
}

extension Stack: Sequence {
    func makeIterator() -> IndexingIterator<[Element]> {
        return elements.reversed().makeIterator()
    }
}

var myStack = Stack<Int>()
myStack.push(1)
myStack.push(2)
print(myStack.pop() ?? "The stack is empty")
// Prints 2
```

## Reference

[YouTube 👀]\(\)