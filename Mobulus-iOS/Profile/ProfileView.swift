//
//  ProfileView.swift
//  Mobulus-iOS
//
//  Created by Masakaz Ozaki on 2021/12/01.
//

import SwiftUI
import Kingfisher

struct ProfileView: View {
    @State var changedName = ""
    @State var selectedFuelUnit: Int = 0
    @State var selectedMileageUnit: Int = 0
    var user: User
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink(destination: TextField("name", text: $changedName)) {
                        HStack {
                            if user.profileImageURL == nil {
                                Image(systemName: "person.crop.circle")
                                    .foregroundColor(.secondary)
                                    .font(.system(size: 64, weight: .thin, design: .default))
                            } else {
                                KFImage(user.profileImageURL)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 64)
                            }
                            VStack(alignment: .leading) {
                                Text(user.name)
                                    .font(.headline)
                                Text("Signed in with Apple")
                                    .font(.footnote)
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                        }
                    }
                }
                
                Section("My Cars") {
                    ForEach(user.cars) { car in
                        HStack {
                            KFImage(car.imageURL)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 44, height: 44)
                                .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
                            VStack(alignment: .leading) {
                                Text(car.brand)
                                    .font(.footnote)
                                    .foregroundColor(.secondary)
                                Text(car.name)
                            }
                        }.swipeActions(edge: .trailing) {
                            Button(role: .destructive ,action: {
                                // Remove action
                            }) {
                                Image(systemName: "trash.fill")
                            }
                        }
                    }
                }
                
                Section("Settings") {
                    Picker("Fuel Unit", selection: $selectedFuelUnit) {
                        Text("L").tag(0)
                        Text("Gal").tag(1)
                    }
                    
                    Picker("Mileage Unit", selection: $selectedMileageUnit) {
                        Text("km").tag(0)
                        Text("miles").tag(1)
                    }
                }
                
                Section("Danger Zone") {
                    Button(role: .destructive, action: {
                        //remove account
                    }) {
                        Text("Delete Account")
                    }
                }
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.sample)
    }
}
