import UIKit

var str = "Hello, playground"

let cities : [String] = ["san andreas", "Rio", "panama"]

cities[2]
cities[1]

cities[0]

var furniture = Set(["table","chair","guitar","and so on"])

let leo = (altura: 21 , corDosOlhos: "pretos")

leo.corDosOlhos
leo.altura

let banco = ( altura: 22, largura: 100, cor: "cinza")
banco.altura

let cozinha = Set(["garfo", "faca", "casacos"])
cozinha.reversed()

var mochila : [Int] = [1,2,3,4,5]
mochila[1]

var show : [String : Int] = [
    "Leo": 1,
    "Ninha": 2,
    "Andre": 3
]

show["Leo"]
show["Jose", default: 12]

var arrayVazio = [Int]()
arrayVazio.append(1)
arrayVazio[0]

var setVazio = Set<String>()
setVazio.insert("leo")
setVazio.insert("Ninha")
setVazio

var dicioVazio = [Int:String]()
dicioVazio[1] = "Leo"
dicioVazio

enum status {
    case success
    case fail
}

var realStatus = status.success
realStatus

enum activities {
    case running(to:String)
    case talking(about:String)
    case jumping(height: Int)
}

var runningToAlasca = activities.running(to: "Alasca")
print(runningToAlasca)

let card1 = 11
let card2 = 10

if card1 + card2 == 2 {
    print("acessss!")
} else if card1 + card2 == 21 {
    print("uhuuul")
} else {
    print("mais sorte da proxima")
}

print( card1 == card2 ? "igualzin" : "diferentin")

let corDoSofa = "amarelo"

switch corDoSofa {
case "azul" :
    print("o sofa é azul")
case "amarelo":
    print("o sofa é amarelo")
default:
    print("não tem cor o sofa")
}

let notaDoAluno = 6

switch notaDoAluno {
case 0..<6:
    print("reprovou legal")
case 6..<10:
    print("passou de ano")
default:
    print("nao conseguimos verificar a nota")
}

let colors = ["azul", "amarelo", "vermelho"]

for color in colors {
    print("\(color) é a cor do momento")
}

for _ in colors {
    print("cor")
}

firstLoop: for i in 1...10 {
    for x in 1...20{
        print("\(i) e \(x)")
        if i > 2 {
            print("sai fora")
            break firstLoop
        }
        
    }
}


func callMyHelp(appendThis:String) {
    let message =
    """
agora vai essa pirueta dupla
carpada esticada e
boraaaaaaaaaaaa
""" + appendThis
    print(message)
}

callMyHelp(appendThis: "vish")

func quadrado(de number: Int) -> Int {
    return number * number
}

print(quadrado(de: 3))

func comprimentar(_ name: String) -> String {
    return "name \(name)"
}

print(comprimentar("jose")+" olá")

func pegarCaronaCom(_ motorista: String,estaDe conducao: String = "carro") -> String {
    
    if conducao == "carro" {
        return "\(motorista) está de carro"
    }else{
        return "\(motorista) está de \(conducao)"
    }
    
}

pegarCaronaCom("lucas")

pegarCaronaCom("Pedro",estaDe: "barco")


func quadradoQuadratico(numbers: Int...) {
    for number in numbers{
        print("o quadrado do numero \(number) é \(number*number)")
    }
}

quadradoQuadratico(numbers: 1,2,3,4,5,65)


enum passwordErrors : Error {
    case zuado
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "1234"{
        throw passwordErrors.zuado
    }
    return true
}

do {
    try checkPassword("1234")
    print("password ok")
} catch  {
    print("esse password é zuado")
}

func returnTuplesExample(_ r:String) -> (Int,String,Bool) {
    return (1,"string",true)
}

var resultX = returnTuplesExample("lol")

let ioio = 2
