//
//  BerryModel.swift
//  berries
//
//  Created by Albin Joseph on 29/05/21.
//

import SwiftUI

struct Berry: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
