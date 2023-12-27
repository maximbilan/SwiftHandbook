## 009_zip

Did you know what the `zip` function is aimed for in Swift?
Well...
It's a fantastic tool for combining two sequences into a sequence of tuples. This comes in handy when you need to iterate over two collections in parallel. But remember, zip is like that chaperone at the prom; it stops the fun when the shortest collection runs out of elements.
If you want to pair names with scores and avoid the "Index out of range" error, this is a great option.
Happy coding!

```swift

import Foundation

let names = ["Anna", "Alex", "Brian", "Jack"]
let scores = [75, 88, 91]

for (name, score) in zip(names, scores) {
    print("\(name) scored \(score)")
}

// Prints:
// Anna scored 75
// Alex scored 88
// Brian scored 91
```