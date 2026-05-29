var str = "Hola Mundo"
print(str)
 
// Type safe language
 
// para definir variables : var
// para definir constantes : let
 
let maxIntent = 3
var intentCurrent = 0
 
var x = 3, y = 5, z = 6
 
var welcomeMassage = "Mensaje de bienvenida"
print(welcomeMassage)
 
var welcomeMassage2 = String()
 
welcomeMassage2 = "Hola que tal"
print(welcomeMassage2)
 
var text1, text2, text3 : String
 
// Definición de variables
 
var my_age = 30
var myAge = 30
 
var π = 3.1416
var 원주율 = 3.1416
 
var 😒 =  "Feliz"
 
print(😒)
print(π)
print(원주율)
 
 
print("El intento actual es : ", intentCurrent)
print("El intento actuel es : \(intentCurrent)")
 
// comentario
 
/* hola
esto es un comentario largo */
 
//definir flotentes
 
var pi = 3.1416
print(type(of:pi))
 
let test: Float = 2.56
print(type(of:test))
 
 
let result = pi + 0.56
print(type(of:result))
 
let decimalInteger = 17
let binaryInteger = 0b10001
print(binaryInteger)
 
let hexadecimalEntero = 0x11
print(hexadecimalEntero)
 
let octalInteger = 0o21
print(octalInteger)
 
let num = 1000
let num2 = 1e3
print(num, num2)
print(type(of:num2))


print("hola")

// valores opcionales (valor que puede estar o no estar dentro de una variable), no es null, no es un nil(vacio)
// es diferente 

let possibleAge = "pp"
let convertAge = Int(possibleAge)
//print(convertAge)


//var error: Int = 404
//error = nil

var error: Int? = 404
error = nil

//force unwrapping
//print(convertAge!)

// optional Binding

if let age = convertAge {

    print("Mi edad es \(age)")

    }else{
        print("\(possibleAge) no se pueder convertir a entero")
    }


if let number = Int("3"), let number2 = Int("4"), number2 > number {
    print("todo ok")
}

// Implicito 

let possibleString : String? = "Esto es un string opcional"
let forceString : String! = possibleString!

print(forceString as Any)


// Manerjo de errores: Try y catch

func pruebas() throws{
    // aqui puedo tener codigo que causa error 
}

do{
    try pruebas()
   // si llego hasta aqui, no hay error
}catch{
    // aqui hay error
}

func makebrekfast() throws{
    // 
}

do{
    try makebrekfast()
        // me puedo comer el desayuno
    

}catch{
    // revisar posibles error del porque no puedo desayunar  
}


// crear una funcion para divir dos numeros 

enum Mierro: Error {
    
    case dividirPorCero   
     
}

// a/ b
func dividir(a: Int,b: Int) throws -> Int{

    if b == 0 {
        throw Mierro.dividirPorCero
    }
    return a/b
}    

do{
    let resul = try dividir(a:10,b:0)
    print("resultado = \(resul)" )
}catch{
    print("Error, no es posible dividir por cero", error)
}



// assert: funcion de depuración para verificar si una condición es verdadera 


var age = 6

//assert(age>=0, "La edad de la pesona no puede ser negativa")

if age >= 10{
    print("Se puede subir a la montana rusa")
} else if (age >= 0){
    print("No se puede subir a la montana rusa")
}else{
    assert(age >= 0, "La edad de la pesona no puede ser negativa")
}


// operaciones 

// operaciones unarias 
// operaciones binarias (dos elementos)
// operaciones ternarias (tres elementos)


// operaciones unarias 

let a = 5 
var b = 10 
b = a
// esto no se puede: a = b 

print(b)

let (x,y) = (1,2)

// no puedo hacer 1 = x

print(1+3, 4-5, 2*3, 10/4)

print(10/7.0)
print(10.0/4.0)
print(10%4) // resto 
print(13%4) 


var number = 5 
number += 1 // number = number + 1
print(number)
number -= 1 // number = number - 1
print(number)


// comparar 

print(1 == 2)
print(1 != 2)
print(1 > 2)
print(1 < 2)
print(1 >= 2)
print(1 <= 2)

// if 


// operaciones binarias 

print( (1,"juan") < (2, "pedro"))
print( (3,"zahir") < (2, "pedro")  )
print( (15, "ximena") < (10, "juan") )

print( (15, "ximena") == (10, "juan") )
print( (15, "ximena") != (10, "juan") )

// print((4, true) < (6, false)) error 
print((4, true) != (6, false))


// operaciones ternarias

let sueldo   = 1000
var comision = false 
var totalSueldo = 0

totalSueldo = sueldo + (comision ? 100 : 0)
print(totalSueldo)

let defaulAge = 20 
var userAge : Int? 

userAge = 30

var currentAge = userAge ?? defaulAge
print(currentAge)


// rango 

// rango cerrado 

for j in 1...5 {
    print(j)
}

// rango semi abierto 

for i in 1..<5 {
    print(i)
}


let nombres = ["Juan", "Maria", "Sergio"]

for nombre in 0..<nombres.count{
    print("la persona \(nombre) es \(nombres[nombre])")
}

for nombre in nombres[0...]{
    print(nombre)
}

for nombre in nombres[...]{
    print(nombre)
}


for nombre in nombres[...]{
    print(nombre)
}


let numeros = ...10
print(numeros)
print(numeros.contains(30))

// jugar ... 


// operadores logicos 

let cartonU = true 
let examen = true 

if (cartonU && examen) {
   print("Bienvenido al cargo") 
}else{
    print("Gracias por .... ")
}


let efectivo = true 
let tarjeta = true

if (efectivo || tarjeta){
    print("Puedo comprar el producto")
}else{
    print("No puedo comprar el producto")
}


// strings 

let someString = "Soy un string cualquiera"
let multiString = """
este es un ejemplo
de un multi string 
con swift
"""

// unicoder emojis swift

let blackHeart = "\u{2665}"
print(blackHeart)
let heart = "\u{1F496}"
print(heart)

let stringVacio = ""
let otroStringVacio = String()


print(stringVacio.isEmpty)
print(otroStringVacio.isEmpty)

var animales = "Un perro"
animales += " y un gato"
animales += " y un caballo"

print(animales)