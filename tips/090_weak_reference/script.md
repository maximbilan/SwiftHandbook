## What does weak mean?

In Swift, use weak references to prevent retain cycles in your code, especially in relationships between objects where one doesn't necessarily need to have a strong ownership of the other. For example, in a school app, a Teacher object might have a strong reference to a list of Students, but each Student might have a weak reference to their FavoriteTeacher. This setup ensures that when the teacher is no longer in use, the teacher object can be deinitialized without being held in memory by the students' weak references. It's a smart way to manage memory efficiently and avoid memory leaks in your Swift applications.

```swift
class Teacher {
    var name: String
    var students: [Student]

    init(name: String, students: [Student]) {
        self.name = name
        self.students = students
        print("\(name) is initialized")
    }

    deinit {
        print("\(name) is being deinitialized")
    }
}

class Student {
    var name: String
    weak var favoriteTeacher: Teacher?

    init(name: String, favoriteTeacher: Teacher?) {
        self.name = name
        self.favoriteTeacher = favoriteTeacher
        print("\(name) is initialized")
    }

    deinit {
        print("\(name) is being deinitialized")
    }
}

do {
    let mrSmith = Teacher(name: "Mr. Smith", students: [])
    let alice = Student(name: "Alice", favoriteTeacher: mrSmith)
    let bob = Student(name: "Bob", favoriteTeacher: mrSmith)
    mrSmith.students = [alice, bob]
    // At this point, Mr. Smith is Alice and Bob's favorite teacher.
    // But this relationship is a weak reference from the students' side.
}

// At this point, the 'do' block is exited
// Mr. Smith, Alice, and Bob should be deinitialized.
```

## Reference

[YouTube 👀](https://youtube.com/shorts/rDNpobF35_A?feature=share)
