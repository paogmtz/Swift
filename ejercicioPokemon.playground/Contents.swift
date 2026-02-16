var pikachu: [String : Int] = ["puntosDeAtaque": 10,
                               "puntosDeVida": 100]

var charmander: [String : Int] = ["puntosDeAtaque": 15,
                                 "puntosDeVida": 120]

func simularBatallaPokemon(pokemon: [String: Int], pokemon2: [String: Int]) -> String {
    var p1 = pokemon
    var p2 = pokemon2
    
    var ataquePokemon1 = pokemon["puntosDeAtaque"] ?? 0
    var ataquePokemon2 = pokemon2["puntosDeAtaque"] ?? 0
    var vidaPokemon1 = pokemon["puntosDeVida"] ?? 0
    var vidaPokemon2 = pokemon2["puntosDeVida"] ?? 0
    
    while (pokemon["puntosDeVida"] ?? 0) > 0 && (pokemon2["puntosDeVida"] ?? 0) > 0 {
        
        if (pokemon["puntosDeAtaque"] ?? 0) > 0{
            ataquePokemon1 -= 1
            vidaPokemon2 -= 1
            
            p1["puntosDeAtaque"] = ataquePokemon1
            p2["puntosDeVida"] = vidaPokemon2
            
        } else{
            print("El pokemon \(p1) ya no tiene puntos de ataque")
            
        }
        
        if (pokemon2["puntosDeAtaque"] ?? 0) > 0{
            ataquePokemon2 -= 1
            vidaPokemon1 -= 1
            
            p2["puntosDeAtaque"] = ataquePokemon2
            p1["puntosDeVida"] = vidaPokemon1
            
        } else{
            print("El pokemon \(p2) ya no tiene puntos de ataque")
            
        }
        
            
        }
    if (pokemon["puntosDeVida"] == 0){
        pokemonMuerto
        
    }
        
    return "El pokemon ganador es: "
}


simularBatallaPokemon(pokemon: pikachu, pokemon2: charmander)
