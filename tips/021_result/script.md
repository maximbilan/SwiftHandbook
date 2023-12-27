## 021_result

Did you know about the Result enum in Swift? Well... It's a type added in Swift 5, which is essentially a more sophisticated, type-safe way to represent either a success or a failure. Result is a generic enum with two cases: success and failure. The success case carries the successful return value, and failure carries an error. Result makes your error handling explicit and clear. No more guessing what a nil return value means. Combine Result with switch statements for ultra-clear handling of both success and failure cases. Happy coding!

```swift


enum DataError: Error {
    case networkError
    case dataNotFound
    case parsingError
}

func fetchData(completion: (Result<[Data], DataError>) -> Void) {
    // ...
}

fetchData { result in
    switch result {
    case .success(let data):
        print("Fetched data: \(data)")
    case .failure(let error):
        print("An error occurred: \(error)")
    }
}
```