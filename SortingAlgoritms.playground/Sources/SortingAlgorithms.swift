import Foundation

// MARK: - Bubble Sort
extension Visualise {
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
        return self.elements
    }
}

// MARK: - Insertion Sort
extension Visualise {
    public func insertionSorted() -> [Int] {
        if self.elements.count < 2 { return self.elements }
        for index in 0..<self.elements.count {
            for secondIndex in 0..<self.elements.count - 1 {
                if self.elements[index] < self.elements[secondIndex] {
                    self.elements.swapAt(index, secondIndex)
                }
            }
        }
        return self.elements
    }
}

// MARK: - Selection Sort
extension Visualise {
    public func selectionSorted() -> [Int] {
        if self.elements.count < 2 { return self.elements }
        for index in 0..<self.elements.count {
            for secondIndex in (index..<self.elements.count).reversed() {
                if self.elements[index] > self.elements[secondIndex] {
                    self.elements.swapAt(index, secondIndex)
                }
            }
        }
        return self.elements
    }
}

// MARK: - Merge Sort
extension Visualise {
    func merge(left: [Int], right: [Int]) -> [Int] {
        var data: [Int] = []
        var mutableLeft = left
        var mutableRight = right

        while mutableLeft.count > 0 && mutableRight.count > 0 {
            if let firstElement = mutableLeft.first, let secondElement = mutableRight.first {
                if  firstElement > secondElement {
                    data.append(secondElement)
                    mutableRight.remove(at: 0)
                } else {
                    data.append(firstElement)
                    mutableLeft.remove(at: 0)
                }
            }
        }

        data.append(contentsOf: mutableLeft)
        data.append(contentsOf: mutableRight)
        return data
    }

    func recursiveMergeSort(_ data: [Int]) -> [Int] {
        if data.count < 2 { return data }
        let leftData = Array(data[..<Int(data.count / 2)])
        let rightData = Array(data[Int(data.count / 2)..<data.count])
        return merge(left: recursiveMergeSort(leftData), right: recursiveMergeSort(rightData))
    }

    public func mergeSorted() -> [Int] {
        let data = self.elements
        return recursiveMergeSort(data)
    }
}

// MARK: - Quick Sort
extension Visualise {
    func recursiveQuickSort(_ array: [Int]) -> [Int] {
        var data = array
        if data.count < 2 { return data }
        let pivot = data.remove(at: 0)

        let left = data.filter { $0 < pivot }
        let right = data.filter { $0 >= pivot }
        let middle = [pivot]

        return recursiveQuickSort(left) + middle + recursiveQuickSort(right)
    }

    public func quickSorted() -> [Int] {
        return recursiveQuickSort(self.elements)
    }
}

// MARK: - Bucket Sort
extension Visualise {
    public func bucketSorted() -> [Int] {
        var data = self.elements
        guard data.count > 0 else { return [] }
        let max = data.max()!
        var buckets = [Int](repeating: 0, count: (max + 1))
        var dataOutput = [Int]()

        for index in 0..<data.count {
            buckets[data[index]] = buckets[data[index]] + 1
        }

        buckets.enumerated().forEach { index, value in
            guard value > 0 else { return }
            dataOutput.append(contentsOf: [Int](repeating: index, count: value))
        }

        return dataOutput
    }
}

// MARK: - Heap Sort
extension Visualise {
    func heapify(_ data: inout [Int], _ size: Int, _ index: Int) {
        var largest = index
        let left = 2 * index + 1
        let right = left + 1

        if left < size && data[left] > data[largest] {
            largest = left
        }
        if right < size && data[right] > data[largest] {
            largest = right
        }
        if largest != index {
            data.swapAt(largest, index)
            heapify(&data, size, largest)
        }
    }

    public func heapSorted() -> [Int] {
        var data = self.elements
        let size = data.count
        if size < 2 { return data }

        for index in (0..<size/2).reversed() {
            heapify(&data, size, index)
        }
        for index in (0..<size).reversed() {
            data.swapAt(0, index)
            heapify(&data, index, 0)
        }
        return data
    }
}
