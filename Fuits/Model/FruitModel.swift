//
//  FruitModel.swift
//  Fuits
//
//  Created by Jigar Oza on 29/08/24.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
