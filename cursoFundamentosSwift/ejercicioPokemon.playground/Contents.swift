var pikachu: [String : Int] = ["puntosDeAtaque": 10,
                               "puntosDeVida": 500]

var charmander: [String : Int] = ["puntosDeAtaque": 15,
                                 "puntosDeVida": 120]

func simularBatallaPokemon(pokemon1: [String: Int], pokemon2: [String: Int]) -> String {
    var p1 = pokemon1
    var p2 = pokemon2
    var turno=1
    
    while (p1["puntosDeVida"] ?? 0) > 0 && (p2["puntosDeVida"] ?? 0) > 0 {
        
        if turno == 1 {
            p2["puntosDeVida"] = p2["puntosDeVida"]! - p1["puntosDeAtaque"]!
            if p2["puntosDeVida"]! > 0 {
                turno = 2
            } else {
                return "Ganó el pokemon1"
            }
            
            
        } else {
            p1["puntosDeVida"] = p1["puntosDeVida"]! - p2["puntosDeAtaque"]!
            if p1["puntosDeVida"]! > 0 {
                turno = 1
            } else {
                return "Ganó el pokemon2"
            }
            
        }
        
        
        
    }
    
    return " "
}


let resultado = simularBatallaPokemon(pokemon1: pikachu, pokemon2: charmander)
print(resultado)
