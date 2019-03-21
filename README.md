# FckinEquatable
***A new way to deal wiht Equatable***
Provide a new protocol name **FckinEquatable**
````
protocol FckinEqualtable {
    func equalToAll(_ array: [Self]) -> Bool
    func equalToOne(_ array: [Self]) -> Bool
}
````

## Example ##

````
if string != "string1" && string != "string2" && string != "string3" {
  // Do something
}
````
#### With FckinEquatable ####
````
let array = ["string1", "string2", "string3"]
if !str.equalToOne(array) {
  // Do something
}
````
