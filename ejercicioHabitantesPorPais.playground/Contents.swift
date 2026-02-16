let habitantesPorPais: [String: Int] = [
    "Colombia" : 48000000,
    "México" : 120000000,
    "España" : 460000000,
    "Francia" : 67000000
]
/*
func obtenerHabitantesPorPais (pais: String) -> String {
    if (habitantesPorPais[pais] == nil){   //Se pone pais entre corchetes porque es un diccionario
        return "No tengo datos suficientes para una una respuesta exclarecedora"
    }else{
        let numeroHabitante = String(habitantesPorPais[pais]!)    //El "!" funciona pero no es buena práctica
        let frase: String = "En \(pais) hay \(numeroHabitante) de habitantes."
        return frase
    }
}
*/

//Otra manera de resolverlo
func obtenerHabitantesPorPais (pais: String) -> String {
    if let numeroHabitante = habitantesPorPais[pais]{
        let frase: String = "En \(pais) hay \(numeroHabitante) de habitantes."
        return frase
    }else{
        return "No tengo datos suficientes para una una respuesta exclarecedora"
    }
}

print(obtenerHabitantesPorPais(pais: "Francia"))
