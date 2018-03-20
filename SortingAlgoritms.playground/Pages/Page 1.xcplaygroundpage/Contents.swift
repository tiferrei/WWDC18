import PlaygroundSupport
import UIKit

//: # Sorting Algorithms
//: Demonstrating Sorting Algorithms visually with bars in a graph.

PlaygroundPage.current.needsIndefiniteExecution = true

/// Initialise `Visualise` with a list of Integers to sort.
let graph = Visualise([12, 23, 8, 1, 5, 20, 23, 7, 2, 7, 34, 7])
PlaygroundPage.current.liveView = graph

/// Call one of `Visualise`s methods that sorts the list.
graph.bubbleSorted()
