//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 700
let preferredHeight = 300
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

// Move the origin from the bottom-left corner of the canvas to it's centre point


// Show a grid
canvas.drawAxes(withScale: true, by: 100, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
//loop[ that starts
canvas.highPerformance = true
for xPostion in stride(from: 0, through: 700, by: 100) {
    
// green or red
    if xPostion > 300 { canvas.lineColor = .green
       
        
    } else{
        canvas.lineColor = .red
    }
//    draw line
    canvas.drawLine(from: Point(x: xPostion, y: 0), to: Point(x: xPostion, y: 300))
}

//draw text
canvas.highPerformance = false
//canvas.drawText(message: String (HI), at: Point(x: 200, y: 200))
