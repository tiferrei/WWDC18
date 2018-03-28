//#-hidden-code
//
//  The Algorithms
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
In the [previous page](@previous) you were introduced to the visualiser and should now be able to pass it Integers.
Here we will also call one of the visualiser's properties to not only sort the Integers but also demonstrate the sort through the live view.
*/

//: Initialise `Visualise` with a list of Integers to sort.
//#-editable-code
let graph = Visualise([12, 23, 8, 1, 5, 20, 23])
//#-end-editable-code

//: Call one of the graph's methods to sort the list.
//: In this case, we'll be bubble sorting the data.
//#-editable-code
graph.bubbleSorted()
//#-end-editable-code

//#-hidden-code
PlaygroundPage.current.liveView = graph
//#-end-hidden-code
