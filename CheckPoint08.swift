protocol Building {
    var rooms: Int {get set}
    var cost: Int {get set}
    var realEstateAgent: String {get set}
}

extension Building {
    func printSalesSummary(){
        print("Rooms: \(rooms) Cost: £\(cost) Agent: \(realEstateAgent)")
    }
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var realEstateAgent: String
    var occupants: Int
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var realEstateAgent: String
    var floorArea: Int
}

var myOffice = Office(rooms: 5, cost:500_000, realEstateAgent: "Bloggs", floorArea: 500)
var myHouse = House(rooms: 2, cost:200_000, realEstateAgent: "Fletchers", occupants: 1)

myOffice.printSalesSummary()
myHouse.printSalesSummary()
