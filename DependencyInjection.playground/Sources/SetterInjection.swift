import Foundation

final class StudentFileManager: FileHandling {
    func saveToFileManager() {
        // save Employee information to file manager.
    }
}

final class StudentServiceManager: ServiceHandling {
    func fetchRecord() {
        // get Employee information from server.
    }
}

final class StudentViewModel {
    
    var fileHandler: FileHandling?
    var serviceHandler: ServiceHandling?
    
    func setFileHandler(fileHandler: FileHandling) {
        self.fileHandler = fileHandler
    }
    
    func setServiceHandler(serviceHandler: ServiceHandling) {
        self.serviceHandler = serviceHandler
    }
}

/*
 Usage:
 
 let studentViewModel = StudentViewModel()
 studentViewModel.setFileHandler(fileHandler: StudentFileManager())
 studentViewModel.setServiceHandler(serviceHandler: StudentServiceManager())
 studentViewModel.serviceHandler.fetchRecord()
 studentViewModel.fileHandler.saveToFileManager()
 
 OR
 
 let studentViewModel = StudentViewModel()
 studentViewModel.serviceHandler = StudentServiceManager()
 studentViewModel.fileHandler = StudentFileManager()
 studentViewModel.serviceHandler.fetchRecord()
 studentViewModel.fileHandler.saveToFileManager()
 */
