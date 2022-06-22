import Foundation

class Game {
    
    var input1 = "Rock"
    var input2 = "Paper"
    var input3 = "Scissors"
    var userInput = ""
    var compInput = ""
    var userNumber = ""
    
    

    func initialSelection(){
        print("\nPlease enter an input from \n"+"\(input1)" + "/" + "\(input2)" + "/" + "\(input3)")
        userSelection()
    }
    
    
    
    func userSelection(){
        
        let compInput1 = [input1,input2,input3]
        let compInput = compInput1.randomElement()
        
        
        while let userInput = readLine() {
            guard userInput != "quit" else {
                return
            }
            
            if userInput != "Rock" && userInput != "Paper" && userInput != "Scissors" {
                 print("Invalid option please choose an option from \(input1)/\(input2)/\(input3)")
            }
            else if userInput == compInput
            {
                print("It's a TIE!! you chose \(userInput), computer selected \(compInput!)")
                restartGame()
            }
            
            else if userInput == "Rock" && compInput == "Scissors"
            {
                print( "you: \(userInput), computer: \(compInput!) -> YOU WIN")
                restartGame()
            }
            
            else if userInput == "Rock" && compInput == "Paper"
            {
                print( "you: \(userInput), computer: \(compInput!) -> YOU Loose")
                restartGame()
            }
            
            else if userInput == "Paper" && compInput == "Rock" {
                print( "you: \(userInput), computer: \(compInput!) -> YOU WIN")
                restartGame()
            }
            
            else if userInput == "Paper" && compInput == "Scissors" {
                print( "you: \(userInput), computer: \(compInput!) -> YOU Loose")
                restartGame()
            }
            
            else if userInput == "Scissors" && compInput == "Paper"
            {
                print( "you: \(userInput), computer: \(compInput!) -> YOU WIN")
                restartGame()
            }
            
            else if userInput == "Scissors" && compInput == "Rock"
            {
                print( "you: \(userInput), computer: \(compInput!) -> YOU Loose")
                restartGame()
            }
            else if userInput == "quit"
            {
                return
            }
            
            
        }
        
    }
    
    func restartGame() {
        print("Would you like to play again? Y/N")
        while let userInput = readLine() {
            if userInput != "Y" && userInput != "N" {
                 print("Please enter Y or N")
            } else if userInput != "N" {
                initialSelection()
            }
            else
            {
                userOption.initialSelection()
            }
            
        }
        
    }
}



