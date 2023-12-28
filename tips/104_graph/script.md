## How to implement Graph in Swift

This Swift tip provides a code example for implementing Depth-First Search (DFS) in a graph data structure. It demonstrates how to create a Graph class with an adjacency list and perform a DFS traversal starting from a specified vertex. DFS is a fundamental algorithm for exploring graphs by following paths as deeply as possible before backtracking, making it essential for various graph-related tasks in Swift programming.

```swift
class Graph {
    var adjacencyList: [Int: [Int]] = [:]
    
    func addEdge(_ from: Int, _ to: Int) {
        if adjacencyList[from] == nil {
            adjacencyList[from] = []
        }
        adjacencyList[from]?.append(to)
    }
    
    func depthFirstSearch(from vertex: Int) {
        var visited: Set<Int> = []
        dfsHelper(vertex, visited: &visited)
    }
    
    private func dfsHelper(_ vertex: Int, visited: inout Set<Int>) {
        guard let neighbors = adjacencyList[vertex] else {
            return
        }
        
        print("Visiting vertex \(vertex)")
        visited.insert(vertex)
        
        for neighbor in neighbors {
            if !visited.contains(neighbor) {
                dfsHelper(neighbor, visited: &visited)
            }
        }
    }
}

// Example usage:
let graph = Graph()
graph.addEdge(0, 1)
graph.addEdge(0, 2)
graph.addEdge(1, 2)
graph.addEdge(2, 0)
graph.addEdge(2, 3)
graph.addEdge(3, 3)

print("DFS starting from vertex 2:")
graph.depthFirstSearch(from: 2)
```

## Reference

[YouTube 👀]()