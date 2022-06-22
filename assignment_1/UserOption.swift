import Foundation
import Darwin

class UserOption{
    
    var input1 = "rock-paper-scissors"
    var input11 = "Rock-Paper-Scissors"
    var input111 = "1"
    var input2 = "enum"
    var input22 = "Enum"
    var input222 = "2"
    var input3 = "employee-student-manager"
    var input33 = "Employee-Student-Manager"
    var input333 = "3"
    var userInput = ""
    var game = Game()
    var searchEngines = SearhEngine()
    var eMS = employeeStudentManager()
    
    
    func initialSelection(){
        print("Please enter an input from \n\n" + "\(input111) " + "or" + " \(input1) \n" + " or \n" + "\(input222) " + "or" + " \(input2) \n" + " or \n" + "\(input333) " + "or" + " \(input3) \n" + " or \n" + "Type 'quit' at anytime to exit")
            userSelection()
    }
    
    func userSelection(){
        while let userInput = readLine() {
            guard userInput != "quit" else {
                exit(0)
            }
            if userInput == input1
            {
                game.initialSelection()
            }
            else if userInput == input11
            
            {
                game.initialSelection()
            }
            else if userInput == input111
            
            {
                game.initialSelection()
            }
            
            else if userInput == input2
            {
                searchEngines.search()
            }
            else if userInput == input22
            
            {
                searchEngines.search()
            }
            else if userInput == input222
            
            {
                searchEngines.search()
            }
            else if userInput == input3
            {
                eMS.initialPrompt()
                
            }
            else if userInput == input33
            {
                eMS.initialPrompt()
                
            }
            else if userInput == input333
            {
                eMS.initialPrompt()
                
            }else {
                print("\n\n\n" + "Sorry not a valid Input \n\n" + "Please try again an input from \n" + "\(input1)  \n" + " or \n" + "\(input2) \n" + " or \n" + "\(input3)")
            }
        }
        
    }
}
