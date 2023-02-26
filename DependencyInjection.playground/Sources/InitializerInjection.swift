import Foundation

protocol FileHandling {
    func saveToFileManager()
}

protocol ServiceHandling {
    func fetchRecord()
}

final class EmployeeFileManager: FileHandling {
    func saveToFileManager() {
        // save Employee information to file manager.
    }
}

final class EmployeeServiceManager: ServiceHandling {
    func fetchRecord() {
        // get Employee information from server.
    }
}

final class EmployeeViewModel {
    
    private let fileHandler: FileHandling
    private  let serviceHandler: ServiceHandling
    
    init(fileHandler: FileHandling, serviceHandler: ServiceHandling) {
        self.fileHandler = fileHandler
        self.serviceHandler = serviceHandler
    }
}

/*
 Usage:
 
 let employeeViewModel = EmployeeViewModel(fileHandler: EmployeeFileManager(), serviceHandler: EmployeeServiceManager())
 employeeViewModel.serviceHandler.fetchRecord()
 employeeViewModel.fileHandler.saveToFileManager()
 */
