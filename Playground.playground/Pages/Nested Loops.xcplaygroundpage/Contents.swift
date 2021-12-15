//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics
import CoreText

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
canvas.translate(to: Point(x: canvas.width / 100,
                           y: canvas.height / 100))

// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */
/// Making a loop
canvas.highPerformance = true
for someValue in stride(from: 1, through: 600, by: 1) {
    
    canvas.lineColor = Color(hue: 100 ,
                             saturation: 80, brightness: 0,
                             alpha: 100)
    
    canvas.drawLine(from: Point(x: 0, y: someValue), to: Point(x: 600, y: someValue))
    
}


// Making a loop
canvas.highPerformance = true
for someValue in stride(from: 1, through: 600, by: 1) {
    
    canvas.lineColor = Color(hue: 100 ,
                             saturation: 80, brightness: 0,
                             alpha: 100)
    
    canvas.drawLine(from: Point(x: 0, y: someValue), to: Point(x: 600, y: someValue))
    
}



for verticalPosition in stride(from: 0, through: 400, by: 40){
    
    for horizontalPosition in stride(from: 0, through: 400, by: 40) {
        
        
        
        if verticalPosition == 0 ||
            horizontalPosition == 0 ||
            verticalPosition == 400 ||
            horizontalPosition == 400 ||
            verticalPosition + horizontalPosition > 400
        {
    
            
            canvas.fillColor = Color(hue: 100,
                                     saturation: 54,
                                     brightness: 72,
                                     alpha: 100)
        } else {
            
            canvas.fillColor = .white
        }
        
        
        canvas.drawEllipse(at: Point(x: horizontalPosition, y: verticalPosition), width: 35, height: 35)
        
        
       
    }
    
}


canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)
canvas.fillColor = .green

canvas.textColor = .black
canvas.drawText(message: "pixies", at: Point(x: 50, y: 500))
canvas.drawText(message: "21 december 1979", at: Point(x: 100, y: 400))



canvas.highPerformance = false
canvas.highPerformance = false



