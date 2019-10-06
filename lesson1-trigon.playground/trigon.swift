import UIKit

let a: Float = 3
let b: Float = 5
let c: Float = sqrt((a*a)+(b*b))
let hypotenuse = c.rounded(.toNearestOrAwayFromZero)
print("Длинна гипотенузы равна \(hypotenuse)")
let areaOfTriangle = (a * b)/2
print("Площадь треугольника равна \(areaOfTriangle)")
let perimeterTriangle = a + b + hypotenuse
print("Периметр треугольника равен \(perimeterTriangle)")

