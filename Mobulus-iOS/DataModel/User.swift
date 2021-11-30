//
//  User.swift
//  Mobulus-iOS
//
//  Created by Masakaz Ozaki on 2021/11/29.
//

import Foundation

struct User: Codable, Identifiable {
    var name: String
    var profileImageURL: URL?
    var cars: [Car]
    var fuelRecords: [FuelRecord]
    var id = UUID()
    
    static let sample = Self.init(name: "Masakaz Ozaki", cars: [.sample, .sample, .sample], fuelRecords: [.sample, .sample, .sample])
}
