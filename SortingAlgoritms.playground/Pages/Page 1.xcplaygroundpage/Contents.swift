import UIKit
import PlaygroundSupport
//: # Sorting Algorithms
//: Demonstrating Sorting Algorithms visually with bars in a graph.
/// Initialise `Visualise` with a list of Integers to sort.
let graph = Visualise([12, 23, 8, 1, 5, 20, 23, 7])
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = graph

/// Call one of `Visualise`s methods that sorts the list.
graph.bubbleSorted()

