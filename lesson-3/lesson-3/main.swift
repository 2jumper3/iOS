//
//  main.swift
//  lesson-3
//
//  Created by Елизавета Кубански on 14.12.2018.
//  Copyright © 2018 Удалов Сергей. All rights reserved.
//

import Foundation

enum engine {
    case turnOn, turnOff
}
enum windows {
    case turnOn, turnOff
}
enum trunk: String {
    case full = "500 liters"
    case half = "250 liters"
    case empty = "almoust 0 liters"
}
enum model {
    case mazda
    case honda
    case mercedes
    case bmw
    case vaz
}


func whatAuto(type: model, engine: engine, windows: windows, trunk: trunk) {
    print("In model \(type), engine \(engine), windows \(windows), trunk \(trunk.rawValue) at this moment")
}
struct auto {
    var year: Int
    var model: model
    var engineOn: engine {
        willSet {
            if newValue == .turnOn {
            print("Engine will be turn on")
            }
            else {
                print("Engine will be torn off")
            }
        }
    }
    let windowsTurnOn: windows
    let trunkSpaceFree: trunk
//    init (year: Int, engineOn: engine) {
//        self.engineOn = engine.turnOff
//        self.year = 1990
//    }
}


whatAuto(type: .bmw, engine: .turnOn, windows: .turnOn, trunk: .empty)

var car1 = auto(year: 23, model: .bmw, engineOn: .turnOn, windowsTurnOn: .turnOn, trunkSpaceFree: .empty)
print (car1.trunkSpaceFree.rawValue, car1.engineOn)

car1.engineOn = .turnOff
