# How to compare dates

When comparing dates in Swift, you can use standard comparison operators like less, more, and equal This is because Swift's Date type conforms to the Comparable protocol. These operators allow you to determine if one date is earlier, later, or the same as another. Just be mindful of time zones to ensure accurate comparisons. It's a straightforward yet powerful way to handle date comparisons, akin to comparing numbers.

```swift
let now = Date()

// 10 minutes later
let futureDate = Date().addingTimeInterval(600) 

if now < futureDate {
    print("Now is earlier than the future date")
} else if now > futureDate {
    print("Now is later than the future date")
} else {
    print("Now and the future date are the same")
}
```

## Reference

[YouTube 👀](https://www.youtube.com/shorts/eCA9M9wsoXM)