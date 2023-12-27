## 014_inout

Did you know how inout parameters work in Swift? Well... When you pass a variable to a function with an inout parameter, it is like saying: Hey, feel free to change this, and let those changes reflect back in the original variable. Remember, you need to use the & symbol to indicate that you are passing the variable by reference, not by value. Happy coding!

```swift


func makeItDouble(number: inout Int) {
    number *= 2
}

var myNumber = 10
makeItDouble(number: &myNumber)
print(myNumber) // It's 20 now


```