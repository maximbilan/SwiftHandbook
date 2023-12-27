## 042_task

In Swift, the Task structure allows you to perform asynchronous operations independently of the surrounding scope's lifecycle. It's like launching a self-sufficient operation that continues to run in the background, even after the initiating function has completed. This feature is handy for operations like fetching data from the internet without blocking the main thread, ensuring your app remains responsive. The provided code example demonstrates how to use Task to asynchronously fetch data, showcasing how the task completes its mission independently, without the calling function needing to wait for it. It's a great way to keep your app efficient and smooth!

```swift




import Foundation

// Mock function to simulate data fetching
func fetchData() async -> String {
    // Simulating a network request
    try? await Task.sleep(nanoseconds: 1_000_000_000)
    return "Data from the internet!"
}

// Using Task to fetch data
func fetchWithTask() {
    Task {
        let data = await fetchData()
        print("Fetched: \(data)")
    }
    print("Task started, but I'm not waiting for it!")
}

// Call the function
fetchWithTask()

```