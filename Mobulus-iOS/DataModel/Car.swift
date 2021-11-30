//
//  Car.swift
//  Mobulus-iOS
//
//  Created by Masakaz Ozaki on 2021/11/29.
//

import Foundation

struct Car: Codable, Identifiable {
    var name: String
    var brand: String
    var imageURL: URL?
    var fuelRecord: [FuelRecord]
    var id = UUID()
    
    static let sample = Self.init(name: "720S Spider",
                                  brand: "McLaren",
                                  imageURL: URL(string: "https://media.gqjapan.jp/photos/5f9a94adfc1527e64b45a440/3:2/w_1600%2Cc_limit/720s-12.jpg"),
                                  fuelRecord: [.sample, .sample, .sample])
}
