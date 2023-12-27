## 043_task_detached

Detached Task is particularly useful when you want to execute work in parallel, independent of the current task's priority or cancellation state. Imagine you're building a fancy app that fetches data from two different sources. You want these fetch operations to be independent of each other. If one gets cancelled, the other shouldn't care. In this example, fetchPrimaryData and fetchSecondaryData are executed in parallel, independently of each other, thanks to detached Task. Even if one task takes longer or encounters an issue, the other task merrily continues on its journey. This approach is ideal for tasks that should not be influenced by the state or lifecycle of the parent task, ensuring they can continue or complete their work regardless of changes in the parent task's environment.

```swift




import Foundation

func fetchPrimaryData() async throws -> String {
    try await Task.sleep(nanoseconds: 1_000_000_000)
    return "Primary"
}

func fetchSecondaryData() async throws -> String {
    try await Task.sleep(nanoseconds: 2_000_000_000)
    return "Secondary"
}

func fetchDataConcurrently() async {
    do {
        async let primaryData = Task.detached {
            try await fetchPrimaryData()
        }
        async let secondaryData = Task.detached {
            try await fetchSecondaryData()
        }

        let result = try await (primaryData.value, secondaryData.value)
        print("Fetched data: \(result.0) and \(result.1)")
    } catch {
        print("Oops: \(error)")
    }
}

Task {
    await fetchDataConcurrently()
}

```