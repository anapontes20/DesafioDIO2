
enum Genero {
    case masculino
    case feminino
    case outro
}

class Pessoa {
    var nome: String
    var idade: Int
    var genero: Genero
    
    init(nome: String, idade: Int, genero: Genero) {
        self.nome = nome
        self.idade = idade
        self.genero = genero
    }
    
    func cumprimentar() -> String {
        return "Olá, meu nome é \(nome) e eu tenho \(idade) anos."
    }
}

var pessoas: [Pessoa] = []

let pessoa1 = Pessoa(nome: "João", idade: 30, genero: .masculino)
let pessoa2 = Pessoa(nome: "Maria", idade: 25, genero: .feminino)
let pessoa3 = Pessoa(nome: "Alex", idade: 35, genero: .outro)

pessoas.append(pessoa1)
pessoas.append(pessoa2)
pessoas.append(pessoa3)

for pessoa in pessoas {
    print(pessoa.cumprimentar())
}

let pessoasComMaisDe30Anos = pessoas.filter { $0.idade > 30 }

print("Pessoas com mais de 30 anos:")
for pessoa in pessoasComMaisDe30Anos {
    print("\(pessoa.nome) tem mais de 30 anos.")
}
