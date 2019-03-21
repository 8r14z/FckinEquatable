# FckinEquatable
***A new way to deal with Equatable***.

Provide a new protocol name **FckinEquatable**. 

This is also an example for overloading operator in Swift. You can easily create your own operator.

````
protocol FckinEqualtable {
    func equalToAll(_ array: [Self]) -> Bool
    func equalToOne(_ array: [Self]) -> Bool
}
````
With default implementation (protocol extension), you will have this ability for free with just doing something like below:
````
extension String: FckinEqualtable { }
````

## Example ##

````
if string != "string1" && string != "string2" && string != "string3" {
  // Do something
}
````
With **FckinEquatable**
````
let array = ["string1", "string2", "string3"]
if !str.equalToOne(array) {
  // Do something
}
````
