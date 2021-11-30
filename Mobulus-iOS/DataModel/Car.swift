//
//  Car.swift
//  Mobulus-iOS
//
//  Created by Masakaz Ozaki on 2021/11/29.
//

import Foundation

struct Car: Codable, Identifiable {
    var name: String
    var brand: String?
    var imageURL: URL?
    var fuelRecord: [FuelRecord]
    var id = UUID()
}
