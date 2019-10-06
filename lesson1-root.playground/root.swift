import UIKit

print("Решение квадратного уравнения вида ax^2+bx+c=0")
let a: Double = 1
let b: Double = 1
let c: Double = -20
let discriminant: Double = (b * b) - (4 * a * c)
if discriminant >= 0{
    let oneRoot: Double = ((-b) + sqrt(discriminant))/2 * a
    let twoRoot: Double = ((-b) - sqrt(discriminant))/2 * a
    print("Первый квадратный корень равен \(oneRoot) , а второй равен \(twoRoot) ")
}else{
    print("Вещественных корней нет")
}
