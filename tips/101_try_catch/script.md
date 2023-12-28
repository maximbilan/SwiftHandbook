## How to use try-catch in Swift

In Swift, try-catch is used for error handling. You mark code that might throw an error with try. If an error occurs, it's caught using catch. There are three ways to use try: first, it converts an error to an optional value, returning nil on failure. Second, it forcefully unwraps the result, causing a crash if an error occurs. Third, try within a do-catch block handles errors gracefully. The provided code example demonstrates reading a file with potential errors like 'file not found' or 'unreadable file.' It uses do-catch to handle these errors elegantly. This approach is essential for robust and error-resistant Swift applications.

```swift
import Foundation

enum FileError: Error {
    case fileNotFound, unreadable, unexpected
}

func readDataFromFile(filename: String) throws -> Data {
    guard let fileURL = Bundle.main.url(forResource: filename, withExtension: nil) else {
        throw FileError.fileNotFound
    }
    
    do {
        let data = try Data(contentsOf: fileURL)
        return data
    } catch {
        throw FileError.unreadable
    }
}

func processData() {
    do {
        let data = try readDataFromFile(filename: "SecretRecipe.txt")
        // Process the data here
        print("Success! Secret recipe acquired: \(data)")
    } catch FileError.fileNotFound {
        print("Whoops! File not found.")
    } catch FileError.unreadable {
        print("Uh-oh! Can't read the file.")
    } catch {
        print("Unexpected error: \(error).")
    }
}

processData()
```

## Reference

[YouTube 👀](https://youtube.com/shorts/Piz6qkWIsLc?feature=share)
