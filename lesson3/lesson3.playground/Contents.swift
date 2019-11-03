import UIKit

enum AvtoType: String{
    case car = "легковой"
    case truck = "грузовой"
}
enum AvtoEngineStatus: String{
    case start = "заведен"
    case stop = "заглушен"
}
enum AvtoWindowsStatus: String{
    case open = "открыто"
    case close = "закрыто"
}
enum AvtoTrankStatus: String{
    case full = "загружен"
    case empty = "пуст"
}
enum IgnitionAvto: String{
    case on = "включен"
    case off = "выключен"
}
struct Avto{
    var avtoType: AvtoType
    var mark: String
    var eyar: Int
    var trankVolume: Int
    var trankStatus: AvtoTrankStatus {
        willSet {
            if newValue == .full {
                print("Багажник нужно освободить")
            }else {
                print("Багажник свободен")
            }
        }
    }
    var engienStatus: AvtoEngineStatus {
        willSet {
            if newValue == .start {
                print("Двигатель нужно заглушить")
            }else {
                print("Двигатель заглушен")
            }
        }
    }
    var windowsStatus: AvtoWindowsStatus {
        willSet {
            if newValue == .open {
                print("Окна нужно закрыть")
            }else {
                print("Окна закрыты")
            }
        }
    }
    mutating func ignitionAvto(statusKey: IgnitionAvto){
        switch statusKey{
        case.off:
            self.engienStatus = .stop
            self.windowsStatus = .close
            print("Автомобиль выключен, окна закрылись")
            
        case.on:
            self.engienStatus = .start
        }
    }
}
    


var car1 = Avto(avtoType: .car, mark: "Opel", eyar: 2012, trankVolume: 570, trankStatus: .empty, engienStatus: .stop, windowsStatus: .close)
var car2 = Avto(avtoType: .truck, mark: "Volvo", eyar: 2002, trankVolume: 20000, trankStatus: .empty, engienStatus: .stop, windowsStatus: .open)

car1.engienStatus = .start
car2.trankStatus = .full
car1.ignitionAvto(statusKey: .off)
car2.ignitionAvto(statusKey: .off)

