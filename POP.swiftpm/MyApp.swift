
protocol Animal {
    func fazerBarulho()
}

enum TipoAnimal {
    case cachorro
    case gato
}

struct Pet: Animal {
    let nome: String
    let tipo: TipoAnimal
    
    func fazerBarulho() {
        switch tipo {
        case .cachorro:
            print("\(nome) faz au au!")
        case .gato:
            print("\(nome) faz miau!")
        }
    }
}

func fazerAnimaisFazerBarulho(_ animais: [Animal]) {
    for animal in animais {
        animal.fazerBarulho()
    }
}

let cachorro1 = Pet(nome: "Rex", tipo: .cachorro)
let gato1 = Pet(nome: "Whiskers", tipo: .gato)
let cachorro2 = Pet(nome: "Buddy", tipo: .cachorro)
let pets: [Animal] = [cachorro1, gato1, cachorro2]

fazerAnimaisFazerBarulho(pets)
