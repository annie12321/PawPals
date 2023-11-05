//
//  Theme.swift
//  PawPalsApp
//
//  Created by Annie Chen on 11/5/23.
//

import Foundation
import SwiftUI

var accentColor: Color {
    return .white
}

enum Theme: String {
    case bubblegum
    case sage
    case orange
    case sky
    
    var mainColor: Color {
        Color(rawValue)
    }
}

