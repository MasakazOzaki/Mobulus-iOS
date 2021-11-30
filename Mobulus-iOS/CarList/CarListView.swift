//
//  CarListView.swift
//  Mobulus-iOS
//
//  Created by Masakaz Ozaki on 2021/11/30.
//

import SwiftUI

struct CarListView: View {
    var user: User
    var body: some View {
        NavigationView {
            List {
                ForEach(user.cars) { car in
                    ZStack {
                        NavigationLink(destination: CarDetailView(car: car)) {
                            EmptyView()
                        }
                        CarListCell(car: car)
                            .aspectRatio(16 / 10, contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 32, style: .continuous))
                    }
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("My Cars")
        }
    }
}

struct CarListView_Previews: PreviewProvider {
    static var previews: some View {
        CarListView(user: .sample)
    }
}
