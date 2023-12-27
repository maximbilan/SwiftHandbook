## 075_pure_function

Picture a function that's a model of predictability and consistency. In Swift, a pure function is one that always gives the same output for the same input, with no side effects like altering global state or interacting with the outside world. It's like a trusty old calculator, where pressing the same buttons always lights up the same numbers. This makes the function easy to test, a breeze to debug, and a joy to use. It's a clean, straightforward approach to coding - a little bit of order in the chaotic world of software development!


```swift




func squareEvenNumbers(from numbers: [Int]) -> [Int] {
    return numbers.filter { $0 % 2 == 0 }.map { $0 * $0 }
}

squareEvenNumbers(from: [1, 2, 3, 4])
// Output: [4, 16]

squareEvenNumbers(from: [10, 15, 20, 25])
// Output: 100, 400]
```