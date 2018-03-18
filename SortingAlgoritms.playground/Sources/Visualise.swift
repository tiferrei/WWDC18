import UIKit
import PlaygroundSupport

extension UIView {
    func setX(_ x: CGFloat) {
        var frame: CGRect = self.frame
        frame.origin.x = x
        self.frame = frame
    }
}

public class Visualise: UIView {
    public var elements: [Int]
    public var bars: [UIView] = []

    public init(_ elements: [Int]) {
        self.elements = elements
        let graphWidth = Double(elements.count * 55)
        var maxElement = 0
        for element in elements {
            if element > maxElement {
                maxElement = element
            }
        }
        let graphHeight = Double((maxElement * 20) + 10)
        super.init(frame: CGRect(x: 0.0, y: 0.0, width: graphWidth, height: graphHeight))
        backgroundColor = UIColor.white

        buildGraph()
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func buildGraph() {
        for elementIndex in 0...elements.count - 1 {
            let barXPosition = Double(elementIndex * 55)
            let barMagnitude = Double(elements[elementIndex] * 20)
            let barYPosition = Double(frame.height) - Double(barMagnitude)

            let elementBar = UIView(frame: CGRect(x: barXPosition, y: barYPosition, width: 50.0, height: barMagnitude))
            elementBar.backgroundColor = UIColor.orange
            addSubview(elementBar)
            bars.append(elementBar)
        }
    }

    func update(swap: Int, with: Int) {
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            let biggerX = self.subviews[swap].frame.origin.x
            let smallerX = self.subviews[with].frame.origin.x

            let sizeChange = UIViewPropertyAnimator(duration: 0.5, curve: .easeIn, animations: {
                self.subviews[swap].setX(smallerX)
                self.subviews[with].setX(biggerX)
            })

            sizeChange.startAnimation()
            self.elements.swapAt(swap, with)
            self.bars.swapAt(swap, with)
            self.exchangeSubview(at: swap, withSubviewAt: with)
//        }
    }
}
