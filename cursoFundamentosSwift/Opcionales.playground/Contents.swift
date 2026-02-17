var intOpcional: Int? = nil //El signo de interrogación quiere decir que es una variable opcional, puede que tenga un valor o puede que no.
//intOpcional = 9

//print(intOpcional!) //Ese signo de admiracion es un unwrap , el unwrap saca el valor que hay dentro del opcional. Estás confiando en que si hay un valor

var opcionalSinValor: Int? = nil

//print(opcionalSinValor) Esto daría un error porque no hay valor que imprmir. No tiene el unwrap


//Valor ternario:
let value = intOpcional ?? 0
print("Value es: \(value)")
//print("intOpcional es : \(intOpcional!)")

func saludar (nombre: String?){
    if nombre != nil{
        print("Hola \(nombre!)")
    } else {
        print("Hola humano :)")
    }
}

saludar(nombre: "Jorge")


func suma (numero1: Double?, numero2: Double?){
    let suma: Double
    if numero1 != nil && numero2 != nil {
        suma = numero1! + numero2!
        print("La suma es: \(suma)")
    } else {
        print("Necesito mas info")
    }
    
}

suma(numero1: 9.1, numero2: 0.1)
