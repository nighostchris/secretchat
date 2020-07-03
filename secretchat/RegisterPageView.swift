//
//  RegisterPageView.swift
//  secretchat
//
//  Created by Chris Liu on 3/7/2020.
//  Copyright © 2020 Secret Chat. All rights reserved.
//

import SwiftUI

struct RegisterPageView: View {
    var body: some View {
        GeometryReader { metrics in
            ZStack {
                Color("BackgroundColor")
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    Spacer()
                    
                    VStack {
                        Spacer()
                        
                        Image("logo")
                            .resizable()
                            .frame(width: 125, height: 125)
                        
                        Text("Create Account")
                            .foregroundColor(Color("BWDuet"))
                            .fontWeight(.bold)
                            .font(.largeTitle)
                        
                        Text("spend 1 min and start to chat")
                            .foregroundColor(Color("TextFieldColor"))
                            .fontWeight(.bold)
                            .font(.subheadline)
                    }
                    .frame(height: metrics.size.height * 0.3)
                    
                    VStack {
                        CustomInputField(title: "Email Address")
                            .padding(.bottom)
                        
                        CustomInputField(title: "Password")
                    }
                    .frame(height: metrics.size.height * 0.3)
                    
                    VStack {
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Spacer()
                            
                            Text("Create")
                                .foregroundColor(Color("Black"))
                                .fontWeight(.bold)
                            
                            Spacer()
                        }
                        .frame(height: 56)
                        .background(Color("GeneralButtonColor"))
                        .cornerRadius(14)
                        .padding(.horizontal)
                        .padding(.bottom)
                        
                        Text("Already have an account ? Sign in")
                            .fontWeight(.bold)
                            .padding()
                            .font(.subheadline)
                    }
                    .frame(height: metrics.size.height * 0.3)
                    
                    Spacer()
                }
                .padding(.horizontal)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct RegisterPageView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in Group {
                RegisterPageView().colorScheme(.dark)
            }
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
    }
}
