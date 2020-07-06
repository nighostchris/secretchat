//
//  ChannelsListView.swift
//  secretchat
//
//  Created by Chris Liu on 6/7/2020.
//  Copyright © 2020 Secret Chat. All rights reserved.
//

import SwiftUI

struct ChannelsListView: View {
    @State var searchText: String = ""
    
    @ObservedObject var channelsData = Channels()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(channelsData.channels.filter { channel in
                    searchText.isEmpty ? true : channel.name.lowercased().contains(searchText.lowercased())
                }) { channel in
                    HStack {
                        NavigationLink(destination: LoginPageView()) {
                            EmptyView()
                        }
                        .opacity(0)

                        Text(channel.name)
                    }
                }
            }
            .onAppear() {
                self.channelsData.fetch()
            }
            .navigationBarSearch(self.$searchText)
            .navigationBarItems(leading: Button(action: {}) {
                Text("Edit")
            })
            .navigationBarTitle("Chats", displayMode: .inline)
        }
    }
}

struct ChannelsListView_Previews: PreviewProvider {
    static var previews: some View {
        ChannelsListView()
    }
}
