//
//  Manager.swift
//  AztecaBakery
//
//  Created by Julio Paniagua on 10/13/21.
//

import Foundation
import Metal

//Manages Inventory **Possibly change the class name to 'Inventory' **
struct Manager{
    
    var selectedItem = 0
    var locations = [
        Location(name: "Azteca Bakery #1", address: "148 Henderson Crossing Plaza #148, Hendersonville, NC 28792", phoneNumber: "(828) 698-8676", hours: "Mon-Sun: 9am - 9pm"),
        Location(name: "Azteca Bakery #2", address: "996 Patton Ave # B, Asheville, NC 28806", phoneNumber: "(828) 251-7283", hours: "Mon-Sun: 9am - 9pm")
    ]

    var currentInventory = [
    
        Inventory(item: "Concha", quantity: 30, purchased: 0),
        Inventory(item: "Puerquitos", quantity: 30, purchased: 0),
        Inventory(item: "Orejas", quantity: 30, purchased: 0)
    
    ]
    
    
    func getItem() -> String{
        return currentInventory[selectedItem].item
    }
    
    func getQuantity() -> Int{
        return currentInventory[selectedItem].quantity
    }
    
    func getStoreInfo(_ storeNumber: Int) -> String{
        let storeInfo = locations[storeNumber].name + "\nAddress: " + locations[storeNumber].address + "\nPhone: " + locations[storeNumber].phoneNumber + "\nHours: " + locations[storeNumber].hours
        return storeInfo
    }
    
    mutating func purchase(){
        if currentInventory[selectedItem].quantity > 0 {
            currentInventory[selectedItem].quantity -= 1
            currentInventory[selectedItem].purchased += 1
        }

    }
    
    //Method replenishes item inventory **need to find code to either iterate through array or use a hashmap **
    func replenishInventory(item: String, quantity: Int){
        
    }
    
}
