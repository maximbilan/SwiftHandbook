## 017_variadic_arguments

Did you hear about variadic arguments in Swift? Well.. Variadic arguments in Swift are the versatile all-stars of function parameters, allowing you to pass a flexible number of inputs. Treated as arrays within the function, they bring the convenience of handling multiple values with ease, while maintaining order in your code like a well-organized array. It's the Swiss Army knife for function parameters – adaptable and ready for any number of arguments! Happy coding!


```swift


func print(_ strings: [String]) {
    for string in strings {
        print(string)
    }
}

print(["1", "2", "3"])

func print(_ strings: String...) {
    for string in strings {
        print(string)
    }
}

print("1", "2", "3")

```