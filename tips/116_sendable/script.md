## How to use Sendable protocol in Swift

In Swift's concurrency model, the Sendable protocol ensures safe passage of types across thread or task boundaries, preventing data races in concurrent code. The example demonstrates a Sendable struct, SecretAgent, which is safely used within a concurrent task, symbolizing its ability to maintain data integrity in multi-threaded operations, much like a skilled secret agent on a mission. This protocol is essential for writing robust, thread-safe Swift code.

```swift
// Define a simple Sendable type
@Sendable struct SecretAgent {
    var codeName: String
}

// Function to dispatch a secret agent to a mission
func dispatchAgent(agent: SecretAgent) {
    Task {
        // This is where our agent goes on a daring adventure...
        print("Agent \(agent.codeName) is on the mission!")
    }
}

// Create a secret agent and send them on a mission
let agent007 = SecretAgent(codeName: "Bond")
dispatchAgent(agent: agent007)
```

## Reference

[YouTube 👀](https://youtube.com/shorts/NpCnC2_KAsA?feature=share)
