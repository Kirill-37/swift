import UIKit

enum AvtoEngineStatus: String{
    case base = "базовый"
    case powerfull = "мощный"
}
enum AvtoWindowsStatus: String{
    case clear = "прозрачные"
    case dark = "затемненные"
}
enum FordDriveUnit: String{
    case front = "передний"
    case all = "полный"
}
enum FordBrakeSystem: String{
    case focusSystem = "обычный режим"
    case focusSTSystem = "спортивный режим"
}
class Ford {
    let model: String
    let color: UIColor
    let trankVolume: Int
    var engienStatus: AvtoEngineStatus
    var windowsStatus: AvtoWindowsStatus
    
    static var carCount = 0
    init(model: String, color: UIColor, trankVolume: Int, engienStatus: AvtoEngineStatus, windowsStatus: AvtoWindowsStatus) {
        self.model = model
        self.color = color
        self.trankVolume = trankVolume
        self.engienStatus = engienStatus
        self.windowsStatus = windowsStatus
        Ford.carCount += 1
    }
    static func countInfo() {
        print("Выпущено \(self.carCount) автомобилей Focus")
    }
}
    
let car1 = Ford(model: "Focus", color: .black, trankVolume: 250, engienStatus: .base, windowsStatus: .clear)
let car2 = Ford(model: "Focus", color: .gray, trankVolume: 250, engienStatus: .base, windowsStatus: .clear)
let car3 = Ford(model: "Focus", color: .blue, trankVolume: 250, engienStatus: .base, windowsStatus: .clear)

class FordST: Ford {
    var brakeSystem: FordBrakeSystem
    init(model: String, color: UIColor, trankVolume: Int, engienStatus: AvtoEngineStatus, windowsStatus: AvtoWindowsStatus, brakeSystem: FordBrakeSystem){
    self.brakeSystem = brakeSystem
        super.init(model: model, color: color, trankVolume: trankVolume, engienStatus: engienStatus, windowsStatus: windowsStatus)
    }
    func sportAktive(){
        brakeSystem = .focusSTSystem
    }
    func sportNotAktive(){
        brakeSystem = .focusSystem
    }
}

let car4 = FordST(model: "Focus ST", color: .orange, trankVolume: 220, engienStatus: .powerfull, windowsStatus: .dark, brakeSystem: .focusSTSystem)

class FordRS: FordST {
    var driveUnit: FordDriveUnit
    init(model: String, color: UIColor, trankVolume: Int, engienStatus: AvtoEngineStatus, windowsStatus: AvtoWindowsStatus, brakeSystem: FordBrakeSystem, driveUnit: FordDriveUnit) {
        self.driveUnit = driveUnit
        super.init(model: model, color: color, trankVolume: trankVolume, engienStatus: engienStatus, windowsStatus: windowsStatus, brakeSystem: brakeSystem)
    }
    func allUnitOn(){
        driveUnit = .all
    }
    func allUnitOff(){
        driveUnit = .front
    }
}

let car5 = FordRS(model: "Focus RS", color: .red, trankVolume: 200, engienStatus: .powerfull, windowsStatus: .dark, brakeSystem: .focusSTSystem, driveUnit: .all)


print(Ford.carCount)



