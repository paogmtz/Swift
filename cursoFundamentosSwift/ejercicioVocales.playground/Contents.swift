func contarVocales(texto: String) -> Int {
    var contador: Int = 0
    
    for letra in texto {
        if "aeiou".contains(letra) {
            contador += 1
        }
    }
    return contador
}

print(contarVocales(texto: "aeiourst"))



for numero in [10, 20, 30] {
    print(numero)
    }

