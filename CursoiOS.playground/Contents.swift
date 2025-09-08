import UIKit

// Las variables se crean con "var"
var greeting = "Hello, playground"
var name = "Juan"
var age = 26
print(name)
print(age)

// Las constantes se crean con "let"

let constant = "i'm a constant"
let pi = 3.1416

// TIPOS DE VARIABLES
// Char: Solo aceptan un solo caracter.

// Podemos definir el tipado de las variables
var symbol:Character = "e"
var symbol2:Character = "🚀"
print(symbol)
print(symbol2)

// String
var lastName = "Montilla"

// INT - depende de la cantidad de memoria que vamos a utilizar

var year:Int = 2025

// Float
let PI:Float = 3.1416

// Double - Soporta más decimales
let piDouble:Double = 3.141516

// Boolean - bool
var imHappy = true

// OPERATORS

var a:Int = 5
var b:Int = 10

// sum
var sum:Int = a + b
print(sum)

// substract
var substract:Int = a - b
print(substract)

// multiplication
var multiply:Int = a * b
print(multiply)

// division
var divide:Int = a / b
print(divide)

// module
var module:Int = a % b
print(module)

// OPERATORS OF ASSIGNMENT

var example:Int = 5

example += 10
example -= 20
example *= 10
example /= 15
example %= 30

// OPERATOR LOGIC AND COMPARATION

let age2 = 19

let isOlder = age2 > 18
let isYounger = age2 < 18
let isEqual = age2 == 30
let isNotEqual = age2 != 20
let isOlderOrEqual = age2 >= 18
let isYoungerOrEqual = age2 <= 18

var isSunny:Bool = true
var temperature:Int = 30


let isPleasant:Bool = isSunny && temperature >= 30 // AND
let goToBeach:Bool = isSunny || temperature < 35 // OR
let wearHat:Bool = !isSunny

// CONVERTIONS
// TO NUMBER OF DIFF TYPE (INT TO DOUBLE)
let numberInteger:Int = 34
let numberDouble:Double = 25.94
let superNumber:Double = Double(numberInteger) + numberDouble
print(superNumber)

// OF NUMBER TO STRING
let convertFromIntToString = 123
let result = String(convertFromIntToString)
print(type(of: result))

/**Ejercicio 1
Registro de Asistencia: Declara una variable asistencias y asígnale un número de asistencias a una clase.
Declara una variable totalClases y asígnale el número total de clases.
Calcula el porcentaje de asistencia utilizando la fórmula: Porcentaje = (Asistencias / TotalClases) * 100.
Imprime el porcentaje de asistencia. */

var asistencias:Int = 10
var totalClases:Int = 20
var porcentaje = (Double(asistencias) / Double(totalClases)) * 100
print(Int(porcentaje))
// print("El total de clases es: " + String(Int(porcentaje)))
print("El total de asistencias es: \(Int(porcentaje))")

/** Ejercicio 2
 Calculadora de IMC (Índice de Masa Corporal):
 Declara dos variables: peso (en kilogramos) y altura (en metros).
 Calcula el IMC utilizando la fórmula: IMC = peso / (altura * altura).
 Imprime el resultado.*/

let pesoKG:Int = 50
let altura:Float = 1.60
let resultadoIMC:Float = Float(pesoKG) / (altura * altura)
print("Tu IMC es: \(resultadoIMC)")

/** Ejercicio 3
 Cálculo de Descuento:
 Declara dos variables: precioOriginal y porcentajeDescuento.
 Calcula el precio después del descuento utilizando la fórmula: PrecioDescuento = PrecioOriginal - (PrecioOriginal * PorcentajeDescuento / 100).
 Imprime el precio original y el precio con descuento.*/

let precioOriginal:Float = 50.25
let porcentajeDescuento:Float = 10
let calcularPrecioDescuento:Float = precioOriginal - (precioOriginal * porcentajeDescuento / 100)
print("El precio original es \(precioOriginal)$ más el porcentaje de descuento de \(Int(porcentajeDescuento))% da un total de \(calcularPrecioDescuento)$")

// FUNCTIONS

func showMessageInScreen(){
    print("My firts function")
}

showMessageInScreen()

// Params
func greeting(name:String){
    print("Hello, \(name)!")
}

greeting(name: "Juan")
greeting(name: "Carlos")

// Multi params

func substraction(a:Int, b:Int){
    let result = a + b
    print("The result is = \(result)")
}

substraction(a: 10, b: 30)

// function without help

func multiply(_ a:Int, _ b:Int){
    print("The result of multiply \(a) for \(b) is = \(a * b)")
}

multiply(70, 7)

// function with params of out

func calculate(a:Int, b:Int) -> Int {
    let result = a + b
    return result
}

let functionResult = calculate(a: 20, b: 20)
print("This is a function with params of out: \(functionResult)")

// IF - ELSE

var userAge = 18

if userAge >= 18 {
    print("You are an adult")
} else {
    print("You are an kid")
}

// If, else if and else in functions

func greeting2(hour:Int){
    if hour < 12 {
        print("Good Morning!")
    } else if hour < 18 {
        print("Good Afternoon!")
    } else {
        print("Good Night!")
    }
}

greeting2(hour: 20)


// SWITCH CASE

func getMonthWithSwitch(_ month:Int){
    switch month {
    case 1: print("January")
    case 2: print("Febrary")
    case 3: print("March")
    case 4: print("April")
    case 5: print("May")
    case 6: print("June")
    case 7: print("July")
    case 8: print("August")
    case 9: print("September")
    case 10: print("October")
    case 11: print("November")
    case 12: print("December")
    default: print("Ingresa el número del mes válido")
    }
}

getMonthWithSwitch(10)

// SWITCH CASE SHORT

func getTrimester(trimester:Int) {
    switch trimester {
    case 1, 2, 3: print("First Trimester")
    case 4, 5, 6: print("Second Trimester")
    case 7, 8, 9: print("Thirth Trimester")
    case 10, 11, 12: print("Forth Trimester")
    default: print("Invalid number of trimester")
    }
}

getTrimester(trimester: 10)

// RANGE IN SWITCH

func getSemester(month:Int){
    switch month {
    case 1...6: print("First Semester")
    case 7...12: print("Second Semester")
    default: print("Invalid number of Semester")
    }
}

getSemester(month: 2)

/** Ejercicio 4
 Calcula el área de un círculo:
 Crea una función que reciba el radio de un círculo y devuelva su área (PI * Radio * Radio).
 Luego pinta el resultado por pantalla. */

func calculateRadius(_ radius:Int) -> Double{
    // Con el Double.pi tengo la forma de obtener el valor de PI
    let PI:Double = Double.pi
    let result:Double = PI * Double(radius) * Double(radius)
    return result
}

let getResult = calculateRadius(25)
print("El resultado del calculo del radio es \(getResult)")

/** Ejercicio 5
 Crea una función que reciba un número y con la ayuda de un IF pinte en pantalla si el número
 es positivo, negativo o cero */

func getNumber(num:Double){
    if num == 0 {
        print("El número pasado es cero.")
    } else if num > 0 {
        print("El número \(Int(num)) es positivo.")
    } else {
        print("El número \(Int(num)) es negativo.")
    }
}

getNumber(num: -25)
getNumber(num: 15)
getNumber(num: 0)

/** Ejercicio 6
 Crea una función que reciba un número y con la ayuda de un SWITCH pinte en pantalla si el número
 es positivo, negativo o cero */

func getNumberWithSwitch(_ number:Int){
    switch number {
    case _ where number > 0: print("El número \(number) es positivo.")
    case _ where number < 0: print("El número \(number) es negativo.")
    default: print("El número \(number) es cero.")
    }
}

getNumberWithSwitch(10)
getNumberWithSwitch(-10)
getNumberWithSwitch(0)

// ARRAYS
let names:[String] = ["Juan", "Carlos", "Vicente", "Maria"]
print(names[0]) // "Juan"

// Changing values of the array
var daysOfWeek:[String] = ["Monday", "Tuesday", "wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
print(daysOfWeek[2])
daysOfWeek[2] = "Wednesday"
print(daysOfWeek)


// Remove a value of the array
daysOfWeek.remove(at: 2)
print(daysOfWeek)

// Add a new value to array
daysOfWeek.append("Wednesday")
print(daysOfWeek)

// FOR LOOP
for i in 1...5 {
    print(i)
}

for day in daysOfWeek{
    print("The days of week are: \(day)")
}

for day in daysOfWeek{
    if day == "Thursday" {
        print("It's Thursday!")
    }
}

// WHILE LOOP

var count = 0
while count < 10{
    print("I'm a count and my value is: \(count)")
    count += 1
}

// WHILE REPEAT LOOP - ESTE LOOP NOS PERMITE INTERACTUAR AL MENOS UNA SOLA VEZ, ES DECIR, NOS PERMITE AL MENOS UNA SOLA VEZ SE ITERA.
var countRepeat = 5
repeat {
    print("repeat at least once")
} while countRepeat < 0

// Loop with continue and break
for day in daysOfWeek{
    print("--------------")
    if day == "Thursday"{
        print("It's thursday!")
        continue
    }
    print("xxxxxxxxxx")
}

/** Ejercicio 7
 Escribe una función que reciba un númera e imprima su tabla de multiplicar del 1 al 10.
*/

func getNumberForMultiply(number:Int){
    let numberToMultiplicate:[Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    var resultList:[Int] = []
    for i in numberToMultiplicate {
        var result:Int = number * i
        resultList.append(result)
    }
    print("The table of multiply of \(number) is \(resultList)")
}

getNumberForMultiply(number: 2)

// Extra:

func multiplication(_ number:Int, _ initialNumber:Int = 1, _ finishNumber:Int = 10){
    for i in initialNumber...finishNumber{
        print("\(number) multiply for \(i) is \(number * i)")
    }
}

multiplication(7, 1, 12)

/** Ejercicio 8
 Escribe un programa que calcule la suma de todos los números pares del 1 al 100 y muestre el resultado.
 Para saber si un número es par se tiene que dar la siguiente condificón (número % 2 == 0)
*/

func excersiveEight(_ initialNumber:Int = 1, _ finishNumber:Int = 100){
    var listPair:[Int] = []
    var total:Int = 0
    for i in initialNumber...finishNumber{
        if (i % 2 == 0){
            listPair.append(i)
        }
    }
    for i in listPair{
        total += i
    }
    print("The sum total is \(total)")
}

excersiveEight(1, 10)

/** Ejercicio 9
 Escribe una función que cuente el número de vocales en una palabra y lo pinte.
 TIP: Las palabras (strings) puedes recorrerse con bucle for.
*/

func excersiveNine(word:String){
    // El "_" representa una variable que no será utilizada en nuestro proyecto
    var _:[String] = ["a", "e", "i", "o", "u"]
    var totalVowels:Int = 0
    for i in word {
        switch i.lowercased() {
        case "a": totalVowels += 1
        case "e": totalVowels += 1
        case "i": totalVowels += 1
        case "o": totalVowels += 1
        case "u": totalVowels += 1
        default: totalVowels += 0
        }
    }
    print("The total vowels in this word is \(totalVowels)")
}

excersiveNine(word: "Hello World")

// Tuplas

var tuple = ("Juan", 26, 26334593, "Venezolano", true, 1.60)
print(tuple.0)

// Dictionary

var dict:[String: Any] = ["name": "Juan", "age": 26, "dni": 26334593, "nationality": "Venezolano", "passport": true, "height": 1.60]
var dataDict = dict["name"] as? String ?? "Defaul Value" // Acá forzamos el tipado, es decir, certificamos que el valor va a ser "String" y evitamos el opcional.

print(dataDict)

// For in Dictionary
for (key, value) in dict{
    print("The key of the dictionary is \(key) and the value is \(value)")
}

// Optionality - Nullabilidad

var stringWithText:String = "Hello world!"
var stringWithOptional:String? = nil

print(stringWithText)
print(stringWithOptional)

func exampleNil(_ text:String){
    return
}

exampleNil(stringWithText)
exampleNil(stringWithOptional ?? "Text") // Optionals
//exampleNil(stringWithOptional!) // Afirmar los valores

// Esta forma funciona para certificar los valores
func exampleNilTwo(_ text:String?){
    /*if let example = text {
        print(example)
    } else {
        print("Introduce un nombre para continuar")
    }
    */
    
//    guard let example = text else {
//        return
//    }
}


// CLASS

class Person {
    var name:String
    var age:Int
    
    // init es el contructor
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
    
    func greeting() {
        print("Hello, my name is \(name) and i'm \(age) years old")
    }
}

var personOne:Person = Person(name:"Juan", age:26)
personOne.greeting()

// Struct es una forma de clase pero para ser más específica.

struct ExampleStruct {
    var name:String
    var age:Int
}

var exampleVariableStruct:ExampleStruct = ExampleStruct(name: "Carlos", age: 27)
