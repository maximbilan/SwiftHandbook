## 085_waitsForConnectivity

Set to true waitsForConnectivity property to make network requests wait for a viable internet connection before starting. This is useful in scenarios with intermittent connectivity. timeoutIntervalForResource specifies the maximum time (in seconds) a resource request should take, once it begins. In our example, we set it to 300 seconds, ensuring that downloads don't drag on indefinitely once they've started.

```swift





let config = URLSessionConfiguration.default
config.waitsForConnectivity = true
config.timeoutIntervalForResource = 300 // in seconds
let session = URLSession(configuration: config)

```