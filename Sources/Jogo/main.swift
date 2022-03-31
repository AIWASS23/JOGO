import Foundation

struct Item {
    let name: String
    let winner: String
    let loser: String
    
    func checkVictory(contra opponent: String) -> String {
        if self.name == opponent{
            return "Draw"
        }
        else if self.winner == opponent {
            return "You won, because \(self.name) wins from \(opponent)!"
        }
        return "Computer won, because \(opponent) wins from \(self.name)"
    }
}

let rock = Item(name: "Rock", winner: "Scissors", loser: "Paper")
let paper = Item(name: "Paper", winner: "Rock", loser: "Scissors")
let scissors = Item(name: "Scissors", winner: "Paper", loser: "Rock")
let possibleMoves = [rock, paper, scissors]

print("🪨 Rock\n 📝 Paper\n ✂️ Scissors\n")
print("Enter 0 for 🪨 rock, 1 for 📝 paper or 2 for ✂️ scissors")

var validNumberBetweenZeroAndTwo = false

while !validNumberBetweenZeroAndTwo {
    let userResponse = readLine()!
        
    if let userResponseInInterger = Int(userResponse) {
        if userResponseInInterger < 3 && userResponseInInterger > -1 {
            let cpuResponse = Int.random(in: 0...2)
            let cpuItem = possibleMoves[cpuResponse]
            let userItem = possibleMoves[userResponseInInterger]
                            
            print("Rock!")
            sleep(1)
            print("Paper!")
            sleep(1)
            print("Scissors!")
            sleep(1)
                
            print("\nYour move: \(userItem.name)")
            print("CPU move: \(cpuItem.name)")
                
            print("\nRESULT.....")
            print(userItem.checkVictory(contra: cpuItem.name))
            print("Enter 0 for 🪨 rock, 1 for 📝 paper or 2 for ✂️ scissors")
        }
    }
}
