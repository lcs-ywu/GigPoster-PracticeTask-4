//: # Gig Poster - Practice Task 4
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![the-clash-no-grid](the-clash-no-grid.png "The Clash")
 ![the-clash-with-grid](the-clash-with-grid.png "The Clash")

 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let orange = Color(hue: 21, saturation: 76, brightness: 94, alpha: 100)
let blue = Color(hue: 201, saturation: 72, brightness: 85, alpha: 65)
let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

// Begin your work below...
canvas.fillColor = orange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)
canvas.lineColor = offWhite
for y in stride(from: 0, through: 600, by: 50){
    canvas.drawLine(from: Point(x:0,y:y), to: Point(x:400,y:y))
}
for x in stride(from: 0, through: 400, by: 50){
    canvas.drawLine(from: Point(x: x, y: 0), to: Point(x: x, y: 600))
}
canvas.drawText(message: "the clash", at: Point(x: 20, y: 80), size: 48)
canvas.drawText(message: "with the brattles", at: Point(x: 20, y: 35), size: 8)
canvas.drawText(message: "with the brattles", at: Point(x: 20, y: 25), size: 8)

canvas.rotate(by: -45)
//canvas.drawAxes()
//canvas.fillColor = blue
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false

canvas.borderColor = offWhite
for n in 0...6{
    canvas.drawRectangle(at: Point(x: -106.6, y: 431.4), width: 12+48*n, height: 12+48*n,anchoredBy: AnchorPosition.centre, borderWidth: 12)
}
canvas.borderColor = blue
//canvas.drawRectangle(at: Point(x: -155, y: 389), width: 20, height: 20)
for n in 0...6{
    canvas.drawRectangle(at: Point(x: -150, y: 388), width: 12+48*n, height: 12+48*n,anchoredBy: AnchorPosition.centre, borderWidth: 12)
}

//canvas.lineColor = offWhite
//canvas.drawLine(from: Point(x: 15, y: 380), to: Point(x: 230, y: 590), lineWidth: 10)
//canvas.drawLine(from: Point(x: 230, y: 590), to: Point(x: 445, y: 380),lineWidth: 10)
//canvas.drawLine(from: Point(x: 445, y: 380), to: Point(x: 230, y: 160),lineWidth: 10)
//canvas.drawLine(from: Point(x: 230, y: 160), to: Point(x: 15, y: 380),lineWidth: 10)
//for n in stride(from: 0, through: 180, by: 30) {
//    canvas.drawLine(from: Point(x: 15+n, y: 380), to: Point(x: 230, y: 590-n), lineWidth: 10)
//    canvas.drawLine(from: Point(x: 230, y: 590-n), to: Point(x: 445-n, y: 380),lineWidth: 10)
//    canvas.drawLine(from: Point(x: 445-n, y: 380), to: Point(x: 230, y: 160+n),lineWidth: 10)
//    canvas.drawLine(from: Point(x: 230, y: 160+n), to: Point(x: 15+n, y: 380),lineWidth: 10)
//}




/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 *Be sure to commit your work multiple times as you make progress on completing this task.*

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

