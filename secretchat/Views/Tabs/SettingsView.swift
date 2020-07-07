//
//  SettingsView.swift
//  secretchat
//
//  Created by Chris Liu on 7/7/2020.
//  Copyright © 2020 Secret Chat. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    init() {
        UITableView.appearance().tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: Double.leastNonzeroMagnitude))
    }
    
    var body: some View {
        NavigationView {
            Form {
                NavigationLink(destination: LoginPageView()) {
                    VStack {
                        Text("Chris")
                        Text("@Nighost")
                    }
                }
                Section {
                    NavigationLink(destination: LoginPageView()) {
                        HStack {
                            Image(systemName: "app.badge")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color.white)
                                .background(RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 32, height: 32)
                                    .foregroundColor(Color.red)
                                )
                                
                            Text("Notifications and Sounds")
                                .padding(.leading)
                        }
                    }
                    NavigationLink(destination: LoginPageView()) {
                        HStack {
                            Image(systemName: "globe")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color.white)
                                .background(RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 32, height: 32)
                                    .foregroundColor(Color.purple)
                                )
                            Text("Language")
                                .padding(.leading)
                            
                            Spacer()
                            
                            Text("English")
                        }
                    }
                    NavigationLink(destination: LoginPageView()) {
                        HStack {
                            Image(systemName: "paintbrush.fill")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color.white)
                                .background(RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 32, height: 32)
                                    .foregroundColor(Color.blue)
                                )
                            Text("Appearance")
                                .padding(.leading)
                        }
                    }
                }
            }
            .navigationBarTitle("Settings", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {}) {
                Text("Edit")
            })
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().colorScheme(.dark)
    }
}
