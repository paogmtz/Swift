var frutas: [String] = ["Manzana", "Piña", "Pera"]
var frutas2 = [String]() //Esta arranca vacía

let conteoDeFrutas = frutas.count
let conteoDeFrutas2 = frutas2.count

if (!frutas.isEmpty){
    let primeraFruta = frutas[0]
    print(primeraFruta)
}

let segudaFruta = frutas[1]
let tercerFruta = frutas[2]

print(frutas)

//Inserción de nuevos elementos
frutas.append("Fresa") //Con append insertas el elemnto al final
print(frutas)

frutas.insert("Uva", at: 1)  //Con insert tu decides en que posición del arreglo agregas el elemnto
print(frutas)


//Inserción de elementos de una lista a otra
var nuevasFrutas: [String] = ["Naranja", "Durazno"]

frutas.append(contentsOf: nuevasFrutas)
print(frutas)


// Validación de elementos
let existeFresa = frutas.contains("Fresa")
let existePlatano = frutas.contains("Platano")

//Eliminación de elementos
print("Frutas finales: \(frutas)")
frutas.remove(at: 2) //Aquí eliminas dependiendo la posición
print("Eliminando fruta queda: \(frutas)")

frutas.removeLast()
print("Eliminando la ultima fruta \(frutas)")

frutas.removeAll()
print("Frutas: \(frutas)")
