//
//  ContentView.swift
//  Mobulus-iOS
//
//  Created by Masakaz Ozaki on 2021/11/29.
//

import SwiftUI

struct ContentView: View {
    var user: User = User.sample
    @State var isNotchDevice = false
    var body: some View {
        ZStack {
            GeometryReader { geometry in
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
                }.onAppear {
                    // iPhone 12's safearea is 44 pt
                    isNotchDevice = geometry.safeAreaInsets.top > 40
                }
                
                if isNotchDevice {
                    VStack {
                        //FIXME: Not using HStack to centralize Text
                        HStack {
                            Spacer()
                            Text("🦄🦄🦄")
                            Spacer()
                        }.frame(maxHeight: 40)
                        Spacer()
                    }
                    .edgesIgnoringSafeArea(.all)
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
