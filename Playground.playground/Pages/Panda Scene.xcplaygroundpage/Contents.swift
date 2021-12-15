//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
let preferredHeight = 600
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



// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)

// Draw a circle, using the canvas objectdirectly

canvas.highPerformance = true
canvas.fillColor = .white
canvas.drawShapesWithBorders = true
canvas.borderColor = .black
canvas.drawEllipse(at: Point(x: 220, y: 180), width: 20, height: 60)
canvas.drawEllipse(at: Point(x: 180, y: 180), width: 20, height: 60)
canvas.drawEllipse(at: Point(x: 200, y: 150), width: 100, height: 60)
canvas.drawEllipse(at: Point(x: 180, y: 150), width: 30, height: 10)
canvas.drawEllipse(at: Point(x: 220, y: 150), width: 30, height: 10)
canvas.lineColor = .black

canvas.drawLine(from: Point(x: 180, y: 125), to: Point(x: 180, y: 100))
canvas.drawLine(from: Point(x: 220, y: 125), to:  Point(x: 220, y: 100))
canvas.drawLine(from: Point(x: 220, y: 100), to: Point(x: 280, y: 100))
canvas.drawLine(from: Point(x: 180, y: 100), to: Point(x: 120, y: 100))
canvas.drawLine(from: Point(x: 160, y: 80), to: Point(x: 160, y: 40))
canvas.drawLine(from: Point(x: 240, y: 40), to: Point(x: 240, y: 80))
//12canvas.highPerformance = false

///*:
// ## Show the Live View
// Don't see any results?
//
// Remember to show the Live View (1 then 2):
//
// ![timeline](timeline.png "Timeline")
//
// ## Use source control
// To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
//
// Please commit and push your work often.
//
// ![source_control](source-control.png "Source Control")
// */
