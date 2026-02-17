func saludar(){
    print("Hola Mundo")
    
}

saludar()


func saludarAlguien(nombre: String){
    print("Hola \(nombre)")
    
}

saludarAlguien(nombre: "Paco")


func calcularPromedio (numero1: Double, numero2: Double, numero3: Double) -> Double {
    let suma = numero1 + numero2 + numero3
    let promedio = suma/3
    return promedio
}

print ("El promedio es: \(calcularPromedio(numero1: 10, numero2: 10, numero3: 10))") //Para agregar variables a string se pone \ y la variable entre paréntesis


