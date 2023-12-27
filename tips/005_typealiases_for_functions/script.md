## Typealiases

Did you know that type aliases can help express function signatures in Swift Programming? Well... For instance, sometimes, the completion block might be really complicated. One of the most straightforward solutions could be putting it into a type alias before having a refactoring. That will make the code a bit cleaner.

```swift
import Foundation

func getItems(completion: @escaping (Bool, Int, [String: Any]) -> Void) {
    completion(true, 0, ["data": "null"])
}

getItems { result, status, data in
    print(result)
    print(status)
    print(data)
}
```

## Reference

[YouTube 👀](https://youtube.com/shorts/52Zz2R6jGMM?feature=share)