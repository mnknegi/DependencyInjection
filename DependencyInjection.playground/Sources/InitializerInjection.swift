import Foundation

protocol FileHandling {
    func saveToFileManager()
}

protocol ServiceHandling {
    func fetchRecord()
}

final class EmployeeViewModel {
    
    let fileHandler: FileHandling
    let serviceHandler: ServiceHandling
    
    init(fileHandler: FileHandling, serviceHandler: ServiceHandling) {
        self.fileHandler = fileHandler
        self.serviceHandler = serviceHandler
    }
}
