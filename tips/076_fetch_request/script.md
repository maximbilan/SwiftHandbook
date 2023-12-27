## FetchRequest

in SwiftUI, Fetch Request is used to efficiently fetch data from a CoreData model. It emphasizes the importance of specifying sort descriptors and predicates in your fetch request. Sort descriptors organize how data is presented, like sorting tasks by due date. Predicates are used to filter data, like showing only incomplete tasks. It's a neat way to manage data retrieval, ensuring you get exactly what you need from your CoreData, akin to a butler fetching your specific requests!

```swift
import SwiftUI
import CoreData

struct TaskListView: View {
    // Setting up the fetch request
    @FetchRequest(
        entity: Task.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \Task.dueDate, ascending: false)],
        predicate: NSPredicate(format: "isComplete == %@", NSNumber(value: false))
    ) var tasks: FetchedResults<Task>

    var body: some View {
        List(tasks, id: \.self) { task in
            Text(task.name ?? "Unknown Task")
        }
    }
}
```

## Reference

[YouTube 👀](https://youtube.com/shorts/dX6aRWfWOic?feature=share)