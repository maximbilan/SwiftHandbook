## Recursion

In recursion, a function calls itself to solve a problem. It's essential to define base cases, which are conditions that stop further recursive calls, thereby avoiding infinite loops. For example, in a factorial calculation, the base case could be when the input number is 0 or 1. Each recursive call should bring the function closer to this base case to ensure efficient and safe execution, preventing stack overflow issues.

```swift
func factorial(_ n: Int) -> Int {
    if n <= 1 {
        // Base case
        return 1
    } else {
        // Recursive call
        return n * factorial(n - 1)
    }
}

factorial(5)
// Output: 120
```

## Reference

[YouTube 👀](https://youtube.com/shorts/BKXLShCuXdo?feature=share)