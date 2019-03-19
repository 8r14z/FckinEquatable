protocol FckinEqualtable {
    func equalToAll(_ array: [Self]) -> Bool
    func equalToOne(_ array: [Self]) -> Bool
}

extension FckinEqualtable where Self: Equatable {
    
    func equalToAll(_ array: [Self]) -> Bool {
        return array.reduce(true, {$0 && ($1 == self)})
    }
    
    func equalToOne(_ array: [Self]) -> Bool {
        return array.reduce(false, {$0 || ($1 == self)})
    }
}


extension String: FckinEqualtable { }


let string = "string"
let array = ["string1", "string2", "string3"]

if !string.equalToOne(array) {
    print("YESS")
} else {
    print("NOOO")
}


if !(string == "string1" || string == "string2") {
    // Do something
    print("-----YES")
} else {
    print("-----NO")
}

