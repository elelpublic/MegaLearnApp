//
//  SomeAny.swift
//  MegaLearnApp
//
//  Created by Lars Löffler on 13.03.23.
//

import Foundation

protocol Vehicle {

    var name: String { get }

    associatedtype FuelType
    func fillGasTank(with fuel: FuelType)
    
}

struct Car: Vehicle {

    let name = "car"

    func fillGasTank(with fuel: Gasoline) {
        print("Fill \(name) with \(fuel.name)")
    }
}

struct Bus: Vehicle {

    let name = "bus"

    func fillGasTank(with fuel: Diesel) {
        print("Fill \(name) with \(fuel.name)")
    }
}

struct Gasoline {
    let name = "gasoline"
}

struct Diesel {
    let name = "diesel"
}

func test() {
    
    var merc : some Vehicle = Car()
//    merc = Car()
    
}


