import UIKit

// Функция определения четного числа
/*var evenNumber = [Int] ()
for i in 0...100{
    if i % 2 == 0{
        evenNumber.append(i)
    }
}
print(evenNumber)*/

// Функция определения делится ли число на 3

/*var treeNumber = [Int]()
for i in 0...100{
    if i % 3 == 0{
        treeNumber.append(i)
    }
}
print(treeNumber)*/

// Создание возрастающего массива

var array = [Int](0...100)

// Удаление всех четных и чисел, которые делятся на 3

array.removeAll(where: { $0 % 2 == 0 || $0 % 3 == 0} )
print(array)



