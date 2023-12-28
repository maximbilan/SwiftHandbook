## How to implement a Queue in Swift

Implementing a Queue in Swift is similar to organizing a line at a cafe, based on a first-come, first-serve basis. The Queue is built using a generic structure, allowing it to hold various types of elements. It internally uses an array for storage. Key functions include: isEmpty to check if the Queue is empty, front to view the first item without removing it, enqueue to add an item to the end of the Queue, and dequeue to remove and return the first item. This approach is simple yet effective, embodying the essence of Swift programming much like the indispensable role of a morning espresso in daily life!

```swift
struct Queue<Element> {
    private var elements: [Element] = []

    // Check if the queue is empty
    var isEmpty: Bool {
        return elements.isEmpty
    }

    // Peek at the first element
    var front: Element? {
        return elements.first
    }

    // Add an element to the end of the queue
    mutating func enqueue(_ element: Element) {
        elements.append(element)
    }

    // Remove and return the first element
    mutating func dequeue() -> Element? {
        return isEmpty ? nil : elements.removeFirst()
    }
}

var myQueue = Queue<Int>()
myQueue.enqueue(42)
myQueue.enqueue(10)
myQueue.enqueue(7)

if let firstElement = myQueue.front {
    print("First in line: \(firstElement)")
}

if let dequeuedElement = myQueue.dequeue() {
    print("Served and removed from queue: \(dequeuedElement)")
}
```

## Reference

[YouTube 👀](https://youtube.com/shorts/57wGHDCgKms?feature=share)
