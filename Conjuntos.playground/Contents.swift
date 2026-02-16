var animales : Set<String> = Set(["Perro", "Gato", "Conejo"])
var otrosAnimales = Set<String>()
print(animales)

animales.insert("Vaca")
print(animales)

animales.remove("Vaca")
print(animales)

animales.removeAll()
print(animales)

let alumnosMatematicas : Set<String> = Set(["Jorge", "Camila", "Eduardo", "Laura"])
let alumnosEspaniol = Set<String>(["Jorge", "Camila", "Eduardo", "Marco", "Andrick"])

let union = alumnosMatematicas.union(alumnosEspaniol)
print(union)

let interseccion = alumnosMatematicas.intersection(alumnosEspaniol)
print(interseccion)

let resta = alumnosMatematicas.subtracting(alumnosEspaniol)
print(resta)

let diff = alumnosMatematicas.symmetricDifference(alumnosEspaniol)
print(diff)

