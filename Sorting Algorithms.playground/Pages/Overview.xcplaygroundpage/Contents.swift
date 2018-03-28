//#-hidden-code
//
//  Overview
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

import UIKit
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
//#-end-hidden-code

/*:
Welcome! Sorting algorithms are a key concept of computing, they define different ways to sort and organise data.

 There are many different sorting algoriths, each with its pros and cons. These pros and cons are usually measured in something called the BigO Notation.

 This notation helps us document how "efficient" an algorithm is depending on the input it is given.

 In this page you'll be introduced to the Visualiser. It's a little tool (a `class`, actually) that I have developed to visualise sorting algorithms.
*/

//: Initialise `Visualise` with a list of `Integers` to sort.
//#-editable-code
let graph = Visualise([12, 23, 8, 1, 5, 20, 23])
//#-end-editable-code
//: Have a play visualising the `Integers` you entered. When you're ready, we can move on to the [algorithms](@next).

//#-hidden-code
PlaygroundPage.current.liveView = graph
//#-end-hidden-code
