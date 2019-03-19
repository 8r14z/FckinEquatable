protocol FckinEqualtable {
    func equalToAll(_ array: [Self]) -> Bool
    func equalToOne(_ array: [Self]) -> Bool
}

extension FckinEqualtable where Self: Equatable {
    func equalToAll(_ array: [Self]) -> Bool {
        return array.reduce(true, {$0 && ($1 == self)})
    }
    
    func equalToOne(_ array: [Self]) -> Bool {
        return array.contains(self)
    }
}


extension String: FckinEqualtable { }
