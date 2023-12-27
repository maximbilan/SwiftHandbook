## 016_where_for_loop

In Swift, the where statement in a for-loop is your secret weapon for filtering on the fly. It allows you to include an additional condition that each element must meet to be included in the loop's body. This means you can skip the riff-raff and focus on the elements that really matter, all without needing a separate filtering step. In this snippet, the where clause ensures that only even numbers make it to the print statement. Happy coding!

```swift


let numbers = [1, 2, 3, 4, 5]

for number in numbers where number % 2 == 0 {
    print("\(number) is even and ready to party!")
}

/// Output: 2 is even and ready to party!
/// Output: 4 is even and ready to party!
```