## 020_dump

Did you hear about the dump function in Swift? Well... The dump function in Swift – the lesser-known cousin of print, often overlooked but surprisingly handy. The print function in Swift, as you probably know, is like that friend who gives you a straightforward answer without much detail. It's great for simple outputs. dump doesn't just show you the value of an object; it dives deep, revealing its properties and sub-properties in a neatly indented format. It's like having X-ray vision for your code's data structures. You can see not only the value of the variable but also its structure, which is incredibly useful for debugging complex objects. Happy coding!

```swift

struct Author {
    var name: String
}

struct Book {
    var title: String
    var author: Author
    var publicationYear: Int
}

let book = Book(title: "Swift Programming", 
                author: Author(name: "Matthew Mathias"),
                publicationYear: 2022)

print(book)
// Output
// Book(title: "Swift Programming", author: 
// SwiftPlayground.Author(name: "Matthew Mathias"),
// publicationYear: 2022) 

dump(book)
// Output
// ▿ Book
//  - title: "Swift Programming"
//  ▿ author: Author
//    - name: "Matthew Mathias"
//  - publicationYear: 2022

```