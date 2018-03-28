//
//  SortingAlgorithms.swift
//  Sorting Algorithms
//
//  Created by Tiago Ferreira on 12/03/2018.
//  Copyright © 2018 Tiago Ferreira.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
// OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
// IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
// CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
// TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
// SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

import Foundation

// MARK: - Bubble Sort
extension Visualise {
    /**
     A simple sorting algorithm that repeatedly steps through the list to be sorted, compares each pair of adjacent items and swaps them if they are in the wrong order.
     - O(n^2) performance.
     - Returns: Sorted list.
     */
    public func bubbleSorted() -> [Int] {
        if self.elements.count < 2 { return self.elements }
        var sorted = false
        while !sorted {
            sorted = true
            for index in 0..<self.elements.count - 1 {
                if self.elements[index] > self.elements[index + 1] {
                    self.update(swap: index, with: index + 1)
                    sorted = false
                }
            }
            if sorted {
                break
            }
        }
        self.showAnimation()
        return self.elements
    }
}

// MARK: - Insertion Sort
extension Visualise {
    /**
     A simple sorting algorithm that builds the final sorted array (or list) one item at a time.
     - O(n^2) performance on comparisons / swaps.
     - Returns: Sorted list.
     */
    public func insertionSorted() -> [Int] {
        if self.elements.count < 2 { return self.elements }
        for index in 0..<self.elements.count {
            for secondIndex in 0..<self.elements.count - 1 {
                if self.elements[index] < self.elements[secondIndex] {
                    self.update(swap: index, with: secondIndex)
                }
            }
        }
        self.showAnimation()
        return self.elements
    }
}

// MARK: - Selection Sort
extension Visualise {
    /**
     A sorting algorithm, specifically an in-place comparison sort. It has O(n2) time complexity, making it inefficient on large lists, and generally performs worse than the similar insertion sort.
     - O(n^2) performance on comparisons / O(n) on swaps.
     - Returns: Sorted list.
     */
    public func selectionSorted() -> [Int] {
        if self.elements.count < 2 { return self.elements }
        for index in 0..<self.elements.count {
            for secondIndex in (index..<self.elements.count).reversed() {
                if self.elements[index] > self.elements[secondIndex] {
                    self.update(swap: index, with: secondIndex)
                }
            }
        }
        self.showAnimation()
        return self.elements
    }
}

// MARK: - Heap Sort
extension Visualise {
    func heapify(_ size: Int, _ index: Int) {
        var largest = index
        let left = 2 * index + 1
        let right = left + 1

        if left < size && self.elements[left] > self.elements[largest] {
            largest = left
        }
        if right < size && self.elements[right] > self.elements[largest] {
            largest = right
        }
        if largest != index {
            self.update(swap: largest, with: index)
            heapify(size, largest)
        }
    }

    /**
     Heapsort can be thought of as an improved selection sort: like that algorithm, it divides its input into a sorted and an unsorted region, and it iteratively shrinks the unsorted region by extracting the largest element and moving that to the sorted region.
     - O(n log n) performance.
     @return Sorted list.
     */
    public func heapSorted() -> [Int] {
        let size = self.elements.count
        if size < 2 { return self.elements }

        for index in (0..<size/2).reversed() {
            heapify(size, index)
        }
        for index in (0..<size).reversed() {
            self.update(swap: 0, with: index)
            heapify(index, 0)
        }
        self.showAnimation()
        return self.elements
    }
}
