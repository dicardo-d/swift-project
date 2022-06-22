import Foundation

struct Details {
    var id: Int
    var name: String
    var address: String
    var isStudent: Bool
}

class employeeStudentManager {
    var help             = "help"
    var addStudent       = "addStudent"
    var addEmployee      = "addEmployee"
    var delete           = "delete"
    var listAll          = "listAll"
    
    func initialPrompt()
    {
        print("\nWelcome to Employee-Student Manager Program \nPlease enter an input from \n" + "\(help)" + "\n" + "\(addStudent)" + "\n" + "\(addEmployee)\n" + "\(delete)\n" + "\(listAll)\n" + "Type 'help' at anytime to access help menu")
        mainMenu()
    }
    
    var students : [Details] = []
    var employee : [Details] = []
    
    
    func mainMenu(){
        while let userInput = readLine() {
            guard userInput != "quit" else {
                exit(0)
            }
            
            if userInput == help {
                print("Here are different commands to help you \n" + "\n" + "\(addStudent)" + "\n" + "\(addEmployee)\n" + "\(delete)\n" + "\(listAll)\n")
            }
            
            else if userInput == addStudent { // adding student to students array, with validation check (if studentID already in list ,it wont be added)
                print("Please enter student ID")
                guard let newStudentId = readLine() else { return }
                
                let i = students.filter {$0.id == Int(newStudentId)}
                let j = employee.filter {$0.id == Int(newStudentId)}// checking if same id already added in list
                if (i.count > 0 ) || (j.count > 0) {
                    print("Id alread in list, please enter a different ID")
                    initialPrompt()
                    return
                }
                
                print("Please enter student Name")
                guard let newStudentName = readLine() else { return }
                
                print("Please enter student address")
                guard let newStudentAddress = readLine() else { return  }
                
                if (newStudentId.isEmpty || newStudentName.isEmpty || newStudentAddress.isEmpty) {
                    print("Record Not added - one of the field is nil, Please try again\n")
                    initialPrompt()
                }
                else {
                    students.append(Details(id: Int(newStudentId)!, name: newStudentName, address: newStudentAddress, isStudent: true))
                    print("Student \(newStudentName) added to list successfully")
                    initialPrompt()
                }
            }
            
            
            else if userInput == delete { //deleting people from student's array.
                print("Please enter ID")
                guard let deletingId = readLine() else { return }
                let i = students.filter {$0.id == Int(deletingId)}
                let j = employee.filter {$0.id == Int(deletingId)}
                //
                if (i.count < 1 ) && (j.count < 1){
                    print("\(deletingId) is not in list please add first")
                    initialPrompt()
                    return
                }
                
                else if (i.count > 0 ){
                    if let i = students.firstIndex(where: {$0.id == Int(deletingId) }){
                        students.remove(at: i)
                        print("\(deletingId) Deleted successfully")
                        initialPrompt()
                    }
                }
                else {
                    if let j = employee.firstIndex(where: {$0.id == Int(deletingId) }){
                        employee.remove(at: j)
                        print("\(deletingId) Deleted successfully")
                        initialPrompt()
                    }
                }
                
            }
            
            else if userInput == addEmployee {
                print("Please enter Employee ID")
                guard let newEmployeeId = readLine() else { return }
                
                let i = employee.filter {$0.id == Int(newEmployeeId)}
                let j = students.filter {$0.id == Int(newEmployeeId)}
                if (i.count > 0) || (j.count > 0) {
                    print("I'd is the same, please enter a different ID")
                    initialPrompt()
                    return
                }
                print("Enter Employee Name")
                guard let newEmployeeName = readLine() else { return }
                
                print("Enter Employee address")
                guard let newEmployeeAddress = readLine() else { return  }
                
                
                if (newEmployeeId.isEmpty || newEmployeeName.isEmpty || newEmployeeAddress.isEmpty) {
                    print("Record Not added - one of the field is nil, Please try again\n")
                    initialPrompt()
                }
                else {
                    employee.append(Details(id: Int(newEmployeeId)!, name: newEmployeeName, address: newEmployeeAddress, isStudent: false))
                    print("Employee \(newEmployeeName) added to list successfully")
                    initialPrompt()
                }
            }
            
            else if userInput == listAll {
                if students.count < 1 && employee.count < 1 {
                    print("List is nil")
                }
                else {
                    if students.count < 1 {
                        print("Student list is nil")
                    }
                    
                    if (students.count > 0) {
                        print("Students")
                        print("number\t\t name\t\t address")
                        for i in students {
                            print(" \(i.id)\t\t\(i.name)\t\t\(i.address)")
                        }
                    }
                    
                    if employee.count < 1 {
                        print("No Employee in the list")
                    }
                    
                    if (employee.count > 0) {
                        print("Employees")
                        print("number\t\t name\t\t address")
                        for j in employee {
                            print("\(j.id)\t\t\(j.name)\t\t\(j.address)")
                        }
                    }
                }
            }
            
            
            else {
                print("\n\n\n" + "Invalid Input \n\n" + "Please enter an input from \n\n" + "\(help)" + "\n" + "\(addStudent)" + "\n" + "\(addEmployee)\n" + "\(delete)\n" + "\(listAll)\n" + "Type 'help' at anytime to see list of all commands")
            }
        }
        
    }
}
