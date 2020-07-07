//
//  MainPageView.swift
//  secretchat
//
//  Created by Chris Liu on 5/7/2020.
//  Copyright © 2020 Secret Chat. All rights reserved.
//

import SwiftUI

struct People: Identifiable, Hashable {
    var id: String
    var name: String
}

struct MainPageView: View {
    @State var currentTab: Int = 2
    //@State var searchText: String = ""
    
    @EnvironmentObject var authController: AuthController
    
    let people: [People] = [
        People(id: "A", name: "A"),
        People(id: "B", name: "B"),
        People(id: "C", name: "C"),
        People(id: "D", name: "D"),
        People(id: "E", name: "E"),
        People(id: "F", name: "F"),
        People(id: "G", name: "G"),
        People(id: "H", name: "H"),
        People(id: "I", name: "I"),
        People(id: "J", name: "J"),
        People(id: "K", name: "K"),
        People(id: "L", name: "L"),
        People(id: "M", name: "M"),
        People(id: "N", name: "N"),
        People(id: "O", name: "O"),
        People(id: "P", name: "P"),
        People(id: "Q", name: "Q")
    ]

    var body: some View {
        TabView(selection: $currentTab) {
            NavigationView {
                Text("empty view")
            }
            .tabItem{
                Image(systemName: "person.crop.circle.fill")
                Text("Contacts")
            }
            .tag(1)
            
            ChannelsListView()
            .environmentObject(authController)
            .tabItem {
                Image(systemName: "bubble.left.and.bubble.right.fill")
                Text("Chats")
            }
            .tag(2)
            
//            NavigationView {
//                VStack {
//                    HStack {
//                        Spacer()
//
//                        Button(action:{}) {
//                            Text("Log Out")
//                                .foregroundColor(Color("Red"))
//                        }
//
//                        Spacer()
//                    }
//                }
//                .navigationBarTitle("Edit Profile", displayMode: .inline)
//            }
            SettingsView()
            .tabItem{
                Image(systemName: "gear")
                Text("Settings")
            }
            .tag(3)
        }
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS"], id: \.self) { deviceName in Group {
                MainPageView().colorScheme(.light)
            }
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
    }
}
