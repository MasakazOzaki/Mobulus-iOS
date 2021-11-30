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
    
    var userName: String
    var userID: String
    var userImageURL: URL
    
    var carBrand: String
    var carName: String
    var carImageURL: URL
    var id = UUID()
    
    static let sample = Self.init(date: Date(),
                                  amountLitter: 40,
                                  distance: 100,
                                  userName: "Masakaz Ozaki",
                                  userID: "r2d28192",
                                  userImageURL: URL(string: "https://media.gqjapan.jp/photos/5f9a94adfc1527e64b45a440/3:2/w_1600%2Cc_limit/720s-12.jpg")!,
                                  carBrand: "McLaren",
                                  carName: "720S",
                                  carImageURL: URL(string: "https://media.gqjapan.jp/photos/5f9a94adfc1527e64b45a440/3:2/w_1600%2Cc_limit/720s-12.jpg")!
    )
}
