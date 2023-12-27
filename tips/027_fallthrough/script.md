## 027_fallthrough

In Swift, the fallthrough keyword is used in switch statements to allow the execution to continue to the next case without checking its conditions. It's like skipping a step in a typical switch case where each case is exclusive. With fallthrough, you can move from one case to the next in a sequence, regardless of the case conditions. It's useful but should be used cautiously to avoid unexpected behavior. Happy coding!

```swift




let value = 3
var description = "The number \(value) is"

switch value {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}

print(description)
// "The number 3 is a prime number, and also an integer."

```