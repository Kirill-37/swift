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
    init(model: String) {
        self.model = model
    }
    
    func testCar(){
        print(mark + model + " тестирование прошел")
    }
}

class SportCar: Car {
    var mark: String = "Ford"
    var model: String = "Focus ST"
    var engienVolume: Int = 2500
    init(model: String) {
        self.model = model
    }
    
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

struct Stack<T> {
    private var collection = [T]()
    
    mutating func push(object: T) {
        collection.append(object)
        }
    
    mutating func pop() -> T {
        return collection.removeLast()
    }
    
    func count() -> Int {
        return collection.count
    }
    
    subscript(index: Int) -> T? {
        if index >= collection.count {
            return nil
        }
        return collection[index]
    }
    
    func carFilter(closure: (T) -> Bool ) -> T {
        var result = [T]()
        for element in collection {
            if closure(element) {
                result.append(element)
            }
        }
        return result as! T
    }
}


var focusST = SportCar(model: "Focus ST")
var focusRS = SportCar(model: "Focus RS")

var array = [1,2,3,4,5]


var stackSport = Stack<SportCar>()
stackSport.push(object: focusST)
stackSport.push(object: focusRS)
print(stackSport.count())
stackSport.carFilter { car -> Bool in
    car.model == "Focus RS"
}


