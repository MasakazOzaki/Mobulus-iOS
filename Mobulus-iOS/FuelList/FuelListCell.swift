//
//  FuelDetailCell.swift
//  Mobulus-iOS
//
//  Created by Masakaz Ozaki on 2021/11/30.
//

import SwiftUI

struct FuelListCell: View {
    var fuelRecord: FuelRecord
    var body: some View {
        VStack {
            HStack {
                Text(fuelRecord.userName)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                Spacer()
                Text(fuelRecord.date.toFuzzy())
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            
            HStack {
                Text(fuelRecord.carBrand + " " + fuelRecord.carName)
                    .font(.headline)
                Spacer()
                Text("\(fuelRecord.amountLitter )" + " L")
                    .font(.system(.headline, design: .rounded))
            }
        }
    }
}

struct FuelListCell_Previews: PreviewProvider {
    static var previews: some View {
        FuelListCell(fuelRecord: .sample)
    }
}
