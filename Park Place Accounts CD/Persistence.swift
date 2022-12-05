
import Foundation

class PersistanceService: ObservableObject {
    
    static let persistanceService: PersistanceService = PersistanceService()
    let defaults = UserDefaults.standard
    @Published var accounts: [String: String] = [:] {
        didSet {
            defaults.set(accounts, forKey: "accounts")
            print(accounts)
        }
    }
            
    func configure() {
        if let savedAccounts = defaults.object(forKey: "accounts") as? [String: String] {
            self.accounts = savedAccounts
        }
        print(accounts)
    }
}
