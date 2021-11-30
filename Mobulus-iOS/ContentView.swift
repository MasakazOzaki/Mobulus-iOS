//
//  ContentView.swift
//  Mobulus-iOS
//
//  Created by Masakaz Ozaki on 2021/11/29.
//

import SwiftUI

struct ContentView: View {
    var user: User = User.sample
    var body: some View {
        TabView {
            CarListView(user: user)
                .tabItem {
                    VStack {
                        Image(systemName: "car")
                        Text("My Cars")
                    }
                }
            FuelListView(user: user)
                .tabItem {
                    VStack {
                        Image(systemName: "fuelpump")
                        Text("Fuel Records")
                    }
                }
            
            ProfileView(user: user)
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(user: User.sample)
        }
    }
}
