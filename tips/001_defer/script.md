## Defer statement

Did you know what the “defer” statement is used for in Swift programming?

Well…
A defer statement executes code right before transferring control of the program flow from the current scope where the statement is located.
The defer statement is like a reminder to do something before we finish working on a specific part of our program.

A practical example could be: closing the file after writing.

But what happens if you use “defer” multiple times?
The last deferred action is the first one to be executed, essentially reversing the order like unstacking items.

Deferred statements do not capture the reference or current value of a variable.

Defer statements in Swift prove valuable in specific scenarios, helping with resource cleanup and preventing potential errors by ensuring necessary actions aren't forgotten.

### Example 1

```swift
import Foundation

func execute() {
    defer {
        print("last thing to do")
    }

    print("start")
    print("end")
}

execute()
```

### Example 2

```swift
import Foundation

func writeFile() {
    defer {
        closeFile()
    }

    openFile()

    write("text 1")
    write("text 2")
}

func openFile() {
    print("Opening a file")
}

func write(_ string: String) {
    print("Writing \(string) to the file")
}

func closeFile() {
    print("Close the file")
}

writeFile()
```
### Example 3

```swift
import Foundation

func execute() {
    defer { print("1st defer") }
    defer { print("2nd defer") }
    defer { print("3rd defer") }

    print("end")
}

execute()
```

### Example 4

```swift
import Foundation

func execute() {
    var value = 0

    defer { print(value) }

    value = 100
    print(value)
}

execute()
```

### Example 5

```swift
import Foundation

func execute() {
    defer {
        print("Thanks for watching 🔥")
    }
    print("wait 🙉")
}

execute()
```

## Reference

[YouTube 👀](https://youtube.com/shorts/DwjfsO-2h8I?feature=share)