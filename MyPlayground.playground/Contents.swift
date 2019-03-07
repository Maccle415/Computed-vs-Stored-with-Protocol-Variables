import UIKit

/*
 
 Conforming to the protocol does not mean that it has to be read only even though
 the protocol specifies read only.
 
 - If you use stored properties the properties are read and write.
 - If you use computed properties the properties are read only(in this case)
 
 */

protocol VarProtocol {
    var one: String { get }
    var two: String { get }
}

class StoredProperties: VarProtocol {
    var one: String = "StoredOne"
    var two: String = "StoredTwo"
}

class ComputedPropeties: VarProtocol {
    var one: String {
        return "StoredOne"
    }
    var two: String {
        return "StoredTwo"
    }
}

var stored = StoredProperties()
stored.one = "UpdatedStoredOne"
stored.two = "UpdateStoredTwo"

var computed = ComputedPropeties()
computed.one = "UpdatedComputedOne"
computed.two = "UpdatedComputedTwo"
