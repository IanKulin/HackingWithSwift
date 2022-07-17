struct Car {
    static let maxGear = 10
    static let minGear = 1
    var model = "no model"
    var seats = 4
    private (set) var currentGear = Car.minGear
    
    init (model: String, seats: Int) {
        self.model = model
        self.seats = seats
    }
    
    mutating func gearUp() {
        if currentGear < Car.maxGear{
            currentGear += 1
        }
    }
    
    mutating func gearDown() {
        if currentGear > Car.minGear{
            currentGear -= 1
        }
    }
    
}

var myUte = Car(model: "Rodeo", seats:2)
print("My \(myUte.model) has \(myUte.seats) seats and is in gear: \(myUte.currentGear)")
myUte.gearDown()
print("My \(myUte.model) has \(myUte.seats) seats and is in gear: \(myUte.currentGear)")
myUte.gearUp()
print("My \(myUte.model) has \(myUte.seats) seats and is in gear: \(myUte.currentGear)")
