struct Order: Codable, Equatable {
    
    let id: String
    let status: String
    var paymentSource: PaymentSource?
    
    struct PaymentSource: Codable, Equatable {
        
        let card: Card
    }

    init(id: String, status: String, paymentSource: PaymentSource? = nil) {
        self.id = id
        self.status = status
        self.paymentSource = paymentSource
    }

    struct Card: Codable, Equatable {

        let lastDigits: String?
        let brand: String?
        let attributes: Attributes?
    }

    struct Attributes: Codable, Equatable {
        
        let vault: Vault
    }

    struct Vault: Codable, Equatable {
        
        let id: String
        let status: String
        let customer: Customer
    }

    struct Customer: Codable, Equatable {
        
        let id: String
    }
}
