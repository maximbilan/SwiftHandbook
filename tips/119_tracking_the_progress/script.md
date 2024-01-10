## Tracking Download Progress in URLSession

In Swift, to track the progress of a dataTaskWithURL from URLSession, you won't find a built-in method. Instead, create a custom session with a delegate implementing URLSessionDataDelegate. Use the delegate method didReceive to calculate the progress. This method is called as data is received, allowing you to determine how much of the expected data has been downloaded by comparing the length of received data against countOfBytesExpectedToReceive. This approach is like having a progress bar for your data task, keeping you updated on how much data has been fetched. Remember, handle cases where countOfBytesExpectedToReceive is unknown gracefully.

```swift
let configuration = URLSessionConfiguration.default
let session = URLSession(configuration: configuration,
                         delegate: self,
                         delegateQueue: nil)

extension YourClass: URLSessionDataDelegate {
    func urlSession(_ session: URLSession,
                    dataTask: URLSessionDataTask,
                    didReceive data: Data) {
        receivedData.append(data)
        
        let received = Float(receivedData.length)
        let expected = Float(dataTask.countOfBytesExpectedToReceive)
        let progress = received / expected
        print("Progress: \(progress)")
    }
}

if let url = URL(string: "https://example.com") {
    let dataTask = session.dataTask(with: url)
    dataTask.resume()
}
```

## Reference

[YouTube 👀](https://youtube.com/shorts/qJDmsHOEBWw)