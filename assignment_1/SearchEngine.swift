import Foundation


class SearhEngine{
    
    enum searhEngine: CaseIterable {
        case Baidu
        case Bing
       case  google
        case duckduckgo
        case ask
        
    }
    func search()
    {
        print("5 search engines are")
        for platform in searhEngine.allCases
        {
            print(platform)
        }
        
        backToMainMenu()
    }
    
    func backToMainMenu() {
        print("Would you like to go back main Menu? Y/N")
        while let userInput = readLine() {
            if userInput != "Y" && userInput != "N" {
                print("Please enter Y or N")
            } else if userInput == "N" {
                exit(0)
            }
            else
            {
                userOption.initialSelection()
            }
            
        }
    }
    
}
