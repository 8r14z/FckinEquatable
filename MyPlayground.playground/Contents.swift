infix operator =&=
infix operator =|=

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
    
    static func =&=(_ left: Self, _ right: [Self]) -> Bool {
        return left.equalToAll(right)
    }
    
    static func =|=(_ left: Self, _ right: [Self]) -> Bool {
        return left.equalToOne(right)
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

if !(string =|= array) {
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


