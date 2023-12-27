## 065_async_sequence

In this top, we're orchestrating an AsyncSequence in Swift. The NumberEmitter struct is our AsyncSequence, emitting a sequence of integers asynchronously. It uses an AsyncIterator to emit numbers from 1 to 5, with a one-second pause between each number. The magic happens in the processNumbers function, where we utilize a for await loop to iterate over this sequence. This loop elegantly awaits each number from the AsyncIterator, allowing the code to pause and resume. It's a fine example of blending the familiar with the new in Swift's async world, maintaining readability and rhythm in your code.

```swift



import Foundation

// Let's define a simple AsyncSequence that emits numbers
struct NumberEmitter: AsyncSequence {
    typealias Element = Int

    struct AsyncIterator: AsyncIteratorProtocol {
        var current = 0

        mutating func next() async throws -> Int? {
            // Let's pretend we're waiting for some asynchronous event
            // 1 second delay
            try await Task.sleep(nanoseconds: 1_000_000_000)
            current += 1
            return current <= 5 ? current : nil // Emit numbers 1 to 5
        }
    }

    func makeAsyncIterator() -> AsyncIterator {
        return AsyncIterator()
    }
}

// Let's use our AsyncSequence
func processNumbers() async {
    let numberEmitter = NumberEmitter()
    for await number in numberEmitter {
        print("Received number: \(number)")
    }
    print("All numbers received!")
}

// Start the async process
Task {
    await processNumbers()
}

```