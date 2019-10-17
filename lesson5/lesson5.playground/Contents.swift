import Foundation


protocol Car {
    var mark: String { get }
    var model: String { get }
    var engienVolume: Int { get}
    
    func testCar()
}

class BaseCar: Car {
    var mark: String = "Ford"
    var model: String = "Focus"
    var engienVolume: Int = 1600
    
    func testCar(){
        print(mark + model + " тестирование прошел")
    }
}

class SportCar: Car {
    var mark: String = "Ford"
    var model: String = "Focus ST"
    var engienVolume: Int = 2500
    
    func testCar() {
        print("Автомобиль тестирование прошел")
    }
}

    extension SportCar {
        func sportAktive(){
            print("Sport is aktivate")
        }
        func sportNotAktive(){
            print("Sport is disaktivate")
        }
    }

extension BaseCar: CustomStringConvertible, Hashable, Comparable {
    static func < (lhs: BaseCar, rhs: BaseCar) -> Bool {
         return lhs.mark == rhs.mark
    }
    
    static func == (lhs: BaseCar, rhs: BaseCar) -> Bool {
         return lhs.mark == rhs.mark
    }
    
        
    var description: String {
        return mark + " " + model
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(mark)
    }
    
}

var car = BaseCar()
var carReplay = BaseCar()


print(car == carReplay)

var set = Set([car,carReplay])
print(set)

let car1 = BaseCar()
print(car1)
car1.testCar()

let car2 = SportCar()
print(car2)
car2.testCar()
car2.sportAktive()

let car3 = SportCar()
print(car3)
car3.testCar()
car3.sportNotAktive()
