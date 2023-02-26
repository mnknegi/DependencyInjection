import Foundation

final class ProductFileManager: FileHandling {
    func saveToFileManager() {
        // save Employee information to file manager.
    }
}

final class ProductServiceManager: ServiceHandling {
    func fetchRecord() {
        // get Employee information from server.
    }
}

protocol OperationsHandling {
    func service(with service: ServiceHandling)
    func file(with service: FileHandling)
}

final class ProductViewModel: OperationsHandling {
    
    var fileHandler: FileHandling?
    var serviceHandler: ServiceHandling?
    
    func service(with service: ServiceHandling) {
        self.serviceHandler = service
    }
    
    func file(with service: FileHandling) {
        self.fileHandler = service
    }
}

/*
 Usage:
 
 let productViewModel: OperationsHandling = ProductViewModel()
 productViewModel.service(with: ProductServiceManager())
 productViewModel.file(with: ProductFileManager())
 productViewModel.serviceHandler.fetchRecord()
 productViewModel.fileHandler.saveToFileManager()
 */
