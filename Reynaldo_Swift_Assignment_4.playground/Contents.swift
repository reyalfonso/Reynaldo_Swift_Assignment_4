
import Foundation

protocol Trailer {
    func startEngine()
    func stopEngine()
    var fedEx: String { get set }
}

protocol EntertainmentSystem {
    func turnOnTV()
    func turnOffTV()
    var hasTV: Bool { get set }
}

class Camper: Trailer, EntertainmentSystem {
    var fedEx: String
    var hasTV: Bool = true
    var fuel: Int
    var battery: Bool

    init(fedEx: String, fuel: Int, battery: Bool) {
        self.fedEx = fedEx
        self.fuel = fuel
        self.battery = battery
    }

    func startEngine() {
        if trailer.fuel >= 50 && trailer.battery {
            print("Start the engine and go for Delivery..!")
        }
        else {
            if trailer.fuel < 50 && trailer.battery {
                print("Start the engine refuel the truck and go for delivery..! ")
            }
            else {
                print("Check the truck..!")
            }
            
        }
        
    }

    func stopEngine() {
        if trailer.battery != true{
            print("Stop the engine and call for a mechanic...")
        }
        else {
            ("Prepare for delivery")
        }
        
    }

    func turnOnTV() {
        if hasTV == true && trailer.battery == true{
            print("You can turn on the tv and watch")
        } else {
            print("No TV available, just play the music")
        }
    }

    func turnOffTV() {
        if !hasTV {
            print("You can turn on the tv and watch...")
        } else {
            print("No TV in this Truck....")
        }
    }
}

// Example usage
let trailer = Camper(fedEx: "XPO logistic", fuel: 80, battery: false)
print("""

FedEx   :   \(trailer.fedEx)
Has TV  :   \(trailer.hasTV)
Fuel    :   \(trailer.fuel)
Battery :   \(trailer.battery)

""")
trailer.startEngine()
trailer.stopEngine()
trailer.turnOnTV()
trailer.turnOffTV()
