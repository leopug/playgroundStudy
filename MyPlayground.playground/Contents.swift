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


var vazio1 = [String]()
var vazio2 : [Int:String] = [:]
var vazio3 = Set<String>()

var vazio2Agoravai = ["Leo":29,"Ninha":25]


let dirigirFuncaoSemNome = {
    print("Dirigir funcao sem nome chamada!")
}

dirigirFuncaoSemNome()

let dirigirFuncaoSemNomeComParamatro = { (nomeDaFuncao: String) in
    print("\(nomeDaFuncao) esse é o nome")
}

dirigirFuncaoSemNomeComParamatro("Bilbo")

let countDevNeon = {
    (typeOfDev: String) -> String in
    return "O tipo de dev neon é \(typeOfDev)"
}

print(countDevNeon("iOS"))

func funcComClosureDeParametro(_ closure:()-> Void,_ comecoTitulo: String) {
    
    print("\(comecoTitulo) comeco")
    closure()
    print("fim")
    
}
//lembrar de colocar o label da closure
funcComClosureDeParametro(dirigirFuncaoSemNome,"Aqui é o")


func funcComTraillingClosure(title:String, valueInDollars: Int, valueBeforeTaxes: Int,
                             taxCalc: () -> Void){
    print("O titulo é \(title) com valor em dolares \(valueInDollars) e em antes das taxas \(valueBeforeTaxes)")
    taxCalc()
}

funcComTraillingClosure(title: "Ola", valueInDollars: 2, valueBeforeTaxes: 1) {
    print("calculo eh de 20")
}

func falar(dizeres: (String) -> String ){
    print("start")
    dizeres("Default")
    print("end")
}

falar { (falaAberta: String ) in
    return "\(falaAberta) - result da closure"
}


func andar(local: (String, Int) -> String ) {
    print("Andar na "+local("praia de copacabana", 12))
}

andar {
    "na orla de \($0) no ano \($1)"
}

func doubleArrowReturnClosure() -> (String) -> Void {
    return {
        print("o bixo vai pegar \($0)")
    }
}

let result = doubleArrowReturnClosure()
result("vish")





func retornoMistico(_ tipoDoMistico: String) -> (Int,String) -> Void {
    
    print("o tipo de mistico é \(tipoDoMistico)")
    var counter = 1
    return {
        print("Print o primeiro argumento da closure \($0) e o segundo \($1) e contador \(counter)")
        counter+=1
    }
}

let retornoFinal = retornoMistico("Lendário")


retornoFinal(1,"dois")
retornoFinal(1,"dois")
retornoFinal(1,"dois")
retornoFinal(1,"dois")
retornoFinal(1,"dois")
retornoFinal(1,"dois")
retornoFinal(1,"dois")
retornoFinal(1,"dois")




struct Sport {
    var name: String
    var isOlympicSport: Bool
    //computed properties
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is olympic"
        }else{
            return "\(name) not olympic"
        }
    }
}

var sportFutebol = Sport(name: "futebol",isOlympicSport: true)

print("sport nome: \(sportFutebol.name) e o \(sportFutebol.olympicStatus)")

struct Loading{
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is \(amount)% complete")
        }
    }
}

var loading = Loading(task: "downloading data...", amount: 0)

loading.amount = 30
loading.amount = 35
loading.amount = 67
loading.amount = 99


struct City {
    var name: String
    var population: Int
    
    func taxFromPopulation() -> Int {
        return population * 1000
    }
    
}

var saoPauloCity = City(name: "Sao Paulo", population: 44444)
saoPauloCity.taxFromPopulation()

struct Notebook {
    var brand: String
    
    mutating func changeBrandToAnounemous(){
        brand = "anounemous"
    }
    
}

var notebook = Notebook(brand: "Samdung")
notebook.changeBrandToAnounemous()

// string da massa agora


let phrase = "Do or do not, there`s no try"

print(phrase.count)
let s = phrase[phrase.startIndex..<phrase.index(phrase.startIndex, offsetBy: 5)]

var letletlarray = ["jasou","maraz","turutuuu"]
print(letletlarray.count)
letletlarray.append("turutuus")
letletlarray.firstIndex(of: "maraz")
letletlarray.sorted()


struct User {
    var username: String
    init(_ username: String) {
        self.username = username
    }
}

var userNew = User("leo")


struct FamilyTree {
    init(){
        print("creating family tree")
    }
}

struct PersonTreeFamily{
 
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name:String){
        self.name = name
    }
    mutating func treeComunication(){
        print("talking treeee")
        self.name = "new tree"
    }
    
}

var personTree = PersonTreeFamily(name: "nomezaodapega")
personTree.treeComunication()

//5 important diferences class vs structs
//heranca na classe é possivel na hora de criacao exemplo:  ``class x:xFather{}``
// classe nao tem o init padrao, sempre tem que implementar
// copying struct sao diferentes e class sao as mesmas
// class tem deinitializers
// mutanting. em classes se tiver var pode ser mudado mesmo que a variavel da classe seja let(constante)...
// já em struct mesmo que seja uma propriedade var, nao da para mudar


class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String){
        self.name = name
        self.breed = breed
    }
    
    func makeNoise(){
        print("Noiseeeeee")
    }
    
}

var dogao = Dog(name: "auau", breed: "lulu")

//com final nada pode mudar o que a classe faz
final class Lulu: Dog {
     init(name:String){
        super.init(name: name, breed: "lulu")
    }
    override func makeNoise() {
        print("lulu noiseeee")
    }
}

var novoLulu = Lulu(name: "hulk")

func dogBark(dog:Lulu) -> String {
    return "esse cao é o \(dog.name) da raca \(dog.breed)"
}

print(dogBark(dog: novoLulu))

dogao.makeNoise()
novoLulu.makeNoise()

class Singer{
    var name = "Taylor Swift"
    init(name:String) {
        self.name = name
    }
}

var dingr = Singer(name: "Josefa")
print(dingr.name)

var dinger2 = dingr
dinger2.name = "Luan santana"

print(dingr.name)
print(dinger2.name)

class PersonDude{
    
    var name: String
    
    init(name:String) {
        self.name = name
    }
    func sayDuuuuude(){
        print("Duuuuuuuuuude")
    }
    
    deinit {
        print("adeus duuuuuuuuude")
    }
}

for _ in 1...10 {
    let personDude = PersonDude(name: "vish")
    personDude.sayDuuuuude()
}

protocol Identifiable {
    var id: String { get set}
}

struct PersonProtocolTest: Identifiable {
    var id: String
}

func myIdIs(objectThatHasAnId: Identifiable) {
    print("My ID is \(objectThatHasAnId.id)")
}

var personProtocolTest = PersonProtocolTest(id: "Leo")

myIdIs(objectThatHasAnId: personProtocolTest)
    
protocol Payable {
    func getSalary(month:String) -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func hasVacation() -> Bool
}

protocol Employee: Payable, NeedsTraining, HasVacation{
    
}

struct RegularEmployee: Employee {
    
    func hasVacation() -> Bool {
        print("com certeza tem férias")
        return true;
    }
    
    func study() {
        print("Nunca deixe de estudar")
    }
    
    func getSalary(month: String) -> Int {
        return 20000;
    }
    
}

extension Int {
    func squared() -> Int {
        return self * self
    }
}

var squaredO = 3
squaredO.squared()

let pythons = ["john","lenon","braxa","richter","da silva","sauro","poeple","problms","junjo","tauler"]
let beatles = Set(["lilo", "fino", "bino", "kolos"])

extension Collection {
 
    func printAllDuckers(){
        print("Temos \(count) elementos, e eles sao: ")
        
        for name in self {
            print(name)
        }
        
    }
    
}

pythons.printAllDuckers()
beatles.printAllDuckers()


protocol Identifiable2 {
    var id: String {get set}
    func identify()
}

// cria uma implementacao default aqui
extension Identifiable2 {
    func identify() {
        print("Item identificado")
    }
}

struct UserIndentifiable2: Identifiable2 {
    var id: String
}

var userI2 = UserIndentifiable2(id: "Jon")

userI2.identify()

//optionals

var myFirstOptional: Int? = nil
var nameOptional: String? = nil

if let unwrapped = nameOptional {
    print("Unwrapping \(unwrapped)")
} else {
    print("NIL ALONE")
}

//guard you can use variable after the unwrapping, this differs from if let that you use only inside the "if let "
func greeting(_ greet: String?){
    guard let sentenseGreeter = greet else {
        print("Agora vai \(greet ?? "nil")")
        print(greet as Any)
        return
    }
    print("finalizoou \(sentenseGreeter)")
}

greeting(nameOptional)

let str2 = "5"
let resultIntStr = Int(str2)!

func userAge(_ age: Int) -> String? {

    if age >= 10 {
        return "bigger than 10"
    } else {
        return nil
    }
}

var unwrap = userAge(9) ?? "smaller than 10"

let newBand = [ "john","ninha","felips"]
let firstNameNewBand = newBand.first?.uppercased()
print(firstNameNewBand ?? "nil")

enum NewErrorsGonnaBlow: Error {
    case Fuuuuh
}

func gonnaBlowUp(_ quant: Int) throws -> Bool {
    
    if quant > 0 {
        throw NewErrorsGonnaBlow.Fuuuuh
    }
    return true
    
}

if let result123123 = try? gonnaBlowUp(1) {
    print("Deu certo! \(result123123)")
    } else {
    print("fuuuuuuuuuuuu")
    }

try! gonnaBlowUp(0)
print("nothing xplods")

let str3 = "5"
let resultIntStr2 = Int(str2)!

struct PersonFailableInitializer {
    var id: String
    init?(id:String) {
        if id.count < 8 {
            self.id = id
        }else {
            return nil
        }
    }
}

class Animal {}
class Fish: Animal{}

class Dogao: Animal {
    var noise: String = ""
    func makeNoise(){
        print("Rouf")
    }
    
}

let manyAniamlsssa = [Dogao(),Fish(),Dogao(),Fish()]

for animal in manyAniamlsssa {
    if let pet = animal as? Dogao {
        pet.makeNoise()
    }
}
