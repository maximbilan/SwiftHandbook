## Main Threadh Check

Did you know how to check if the app executes on the Main thread or in the Background in Swift? Well... There is a nifty little property that ensures that UI updates occur on the main thread. It's isMainThread function of the Thread class. In this example, serveDataToUI is your function for updating the UI with new data. If this function is called from the main thread, it updates the UI immediately. But if it's called from a background thread, it uses DispatchQueue.main.async to ensure the UI is updated on the main thread.

```swift
func serveDataToUI(_ data: String) {
    if Thread.isMainThread {
        // Serve the data directly
        self.uiLabel.text = "\(data)"
        print("Served \(data) on the main thread")
    } else {
        // Use the main thread's service elevator
        DispatchQueue.main.async {
            self.uiLabel.text = "\(data)"
        }
    }
}
```

## Reference

[YouTube 👀](https://youtube.com/shorts/s8Oes2J0IvI?feature=share)