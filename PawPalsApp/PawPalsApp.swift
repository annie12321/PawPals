//
//  PawPalsAppApp.swift
//  PawPalsApp
//
//  Created by Annie Chen on 11/5/23.
//

import SwiftUI

@main
struct PawPalsApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(pet: CurrentPet.sampleData[0]) 
        }
    }
}
