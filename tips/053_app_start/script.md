## App Start

Did you hear about MetricKit in Swift development? Well... MetricKit is like the secret agent toolkit for your app's performance. For instance, MetricKit can give you insights into your app's launch time, memory usage, battery life impact, and much more. In this example, we're registering for metric updates and then printing out the app's launch times. It's like getting a regular checkup for your app, ensuring it's always in tip-top shape!

```swift
import MetricKit

class PerformanceMonitor: NSObject, MXMetricManagerSubscriber {
    override init() {
        super.init()
        MXMetricManager.shared.add(self)
    }

    func didReceive(_ payloads: [MXMetricPayload]) {
        for payload in payloads {
            // Analyze your metric payload here
            print("Launch Time: \(payload.latestApplicationLaunchMetric)")
        }
    }
}
```

## Reference

[YouTube 👀](https://youtube.com/shorts/pThk0JEE7Ss?feature=share)