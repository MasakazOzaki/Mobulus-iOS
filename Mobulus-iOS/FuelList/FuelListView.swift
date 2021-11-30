//
//  FuelListView.swift
//  Mobulus-iOS
//
//  Created by Masakaz Ozaki on 2021/12/01.
//

import SwiftUI

struct FuelListView: View {
    var user: User
    @State var isPresentedAddFuel = false
    var body: some View {
        NavigationView {
            List {
                ForEach(user.fuelRecords) { fuelRecord in
                    NavigationLink(destination: FuelDetailView(fuelRecord: fuelRecord)) {
                        FuelListCell(fuelRecord: fuelRecord)
                    }
                }
            }
            .navigationTitle("Fuel Records")
            .navigationBarItems(trailing: Button(action: {
                isPresentedAddFuel.toggle()
            }) {
                Image(systemName: "plus")
            })
        }.sheet(isPresented: $isPresentedAddFuel) {
            AddFuelRecordView()
        }
    }
}

struct FuelListView_Previews: PreviewProvider {
    static var previews: some View {
        FuelListView(user: User.sample)
    }
}
