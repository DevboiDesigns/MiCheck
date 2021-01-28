//
//  MicModel.swift
//  Mics
//
//  Created by Christopher Hicks on 12/19/20.
//

import SwiftUI

struct Mic: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var bestUsed: [String]
}
