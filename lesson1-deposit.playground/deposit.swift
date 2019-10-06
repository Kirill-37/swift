import UIKit

var deposit: Int = 50000
var timeDeposit: Int = 5
var rateDeposit: Int = 12
var result = deposit + (deposit/100) * rateDeposit
var resultTwo = result + (result/100) * rateDeposit
var resultTree = resultTwo + (resultTwo/100) * rateDeposit
var resultFour = resultTree + (resultTree/100) * rateDeposit
var resultFive = resultFour + (resultFour/100) * rateDeposit
print("По итогу 5 лет вклада на Вашем счете будет сумма в размере \(resultFive) рублей")

