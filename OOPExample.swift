enum PokemonType {
    case fire
    case water
    case grass
    case normal 
    case fighting
    case poison
    case dark 
    case psychic
    case ghost
    case fairy
    case rock
    case ground
    case steel
    case ice 
    case flying
    case dragon
    case bug
    case electric
}
class Pokemon {
    //    let type: PokemonType // enum
    let type: PokemonType
    let name: String
    let trainer: String?
    //    let trainer: String?
    
    init(name: String, trainer: String?, type: PokemonType) {
        self.type = type
        self.name = name
        self.trainer = trainer 
    }
    func sayName() -> String {
        return name
    }
    
    func trainerName() {
        if let haveTrainer = trainer {
            print("/(haveTrainer)")
        }
        else {
            print("I'm wild and free")
        }
    }
}

class FirePokemon: Pokemon{
    func useFlameThrower() {
        print("🔥🔥🔥")
    }
}

class WaterPokemon : Pokemon{
    func useWaterGun(){
        print("💧 💧 💧 ")
    }
}
class GrassPokemon: Pokemon{
    
    func useRazorLeaf(){
        print("🍃🍃🍃")
    }
}
let initial = FirePokemon(name: "Charmander", trainer: "Red", type: .fire )
let second = Pokemon(name: "Ratatta", trainer: nil, type: .normal)
let third = WaterPokemon(name: "Mudkip", trainer: "Oscar", type: .water)
let fourth = GrassPokemon(name:"Bayleef", trainer: nil, type: .grass)
fourth.useRazorLeaf()
third.useWaterGun()
initial.useFlameThrower()
second.trainerName()

