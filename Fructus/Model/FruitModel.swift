//
//  FruitModel.swift
//  Fructus
//
//  Created by Marcos Barbosa on 10/02/21.
//

import SwiftUI

// MARK: - Fruits Data Model

struct Fruit: Identifiable {
    var id: UUID = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}

