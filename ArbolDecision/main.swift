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


var age = -6

//assert(age>=0, "La edad de la pesona no puede ser negativa")

if age >= 10{
    print("Se puede subir a la montana rusa")
} else if (age >= 0){
    print("No se puede subir a la montana rusa")
}else{
    assert(age >= 0, "La edad de la pesona no puede ser negativa")
}


// -- seguimos con el codigo