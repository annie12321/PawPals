//
//  CurrentPet.swift
//  PawPalsApp
//
//  Created by Annie Chen on 11/5/23.
//

import Foundation

struct CurrentPet {
    var name: String
    var animalType: String
    var affectionLvl: Int
    var theme: Theme
}

extension CurrentPet {
    static let sampleData: [CurrentPet] =
    [
        CurrentPet(name: "Little White",
                   animalType: "Arctic Wolf",
                   affectionLvl: 50,
                   theme: .bubblegum)
    ]
}
