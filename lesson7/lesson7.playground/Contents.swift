import Foundation

enum Color {
    case black
    case white
    case blue
}

enum SiteError: Error {
    case notFound
    case notAvailable
}

enum UnknowтError: Error {
    case unknownError
}

struct Phone {
    var count: Int
    var position: Position
}
struct Position {
    var name: String
    var color: Color
}

class Site {
    var phones = [Phone(count: 15, position: Position (name: "IPhone X", color: .black)),
                  Phone(count: 1, position: Position (name:  "Iphone Xs", color: .white)),
                  Phone(count: 0, position: Position (name:  "Samsung A50",color: .blue))]
    
   
    func inBox (name: String, color: Color) throws -> Position {
        guard let phone = phones.first(where: { $0.position.name == name && $0.position.color == color}) else {
            throw SiteError.notFound
        }
        
        if phone.count == 0 {
            throw SiteError.notAvailable
        }
        
    
        return phone.position
    }
    
}

let site = Site()

do {
    var result = try site.inBox(name: "Samsung A50",color: .blue)
} catch SiteError.notFound {
    print("Нет позиций с данным названием")
} catch SiteError.notAvailable {
    print("Данной позиции нет на складе")
} catch {
    print("Неизвестная ошибка")
}
