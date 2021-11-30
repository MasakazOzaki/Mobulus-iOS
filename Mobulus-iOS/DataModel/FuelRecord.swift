//
//  FuelRecord.swift
//  Mobulus-iOS
//
//  Created by Masakaz Ozaki on 2021/11/29.
//

import Foundation

struct FuelRecord: Codable, Identifiable {
    var date: Date
    var amountLitter: Float
    var distance: Float
    var id = UUID()
}
