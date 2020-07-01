//
//  LoginPageView.swift
//  secretchat
//
//  Created by Chris Liu on 1/7/2020.
//  Copyright © 2020 Secret Chat. All rights reserved.
//

import SwiftUI

struct LoginPageView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 0) {
                VStack(spacing: 15) {
                    CustomInputField(title: "Email Address")
                    
                    CustomInputField(title: "Password")
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        HStack {
                            Spacer()
                            Text("Login")
                                .foregroundColor(Color.black)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .frame(height: 40)
                        .background(Color("LoginButtonColor"))
                        .cornerRadius(10)
                    }
                    .padding(.horizontal)
                    .padding(.top, 10)
                }
                .padding(.horizontal)
                
                CustomDivider(label: "Or", verticalPadding: 36)
                    .padding(.horizontal)
                
                VStack(spacing: 24) {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        HStack {
                            Spacer()
                            Image("facebook-logo")
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFit()
                            Text("Continue with Facebook")
                                .foregroundColor(Color("ButtonTextColor"))
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .frame(height: 40)
                        .background(Color("FacebookLoginButtonColor"))
                        .cornerRadius(10)
                        .padding(.horizontal)
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        HStack {
                            Spacer()
                            Image("google-logo")
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFit()
                            Text("Continue with Google")
                                .foregroundColor(Color.black)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .frame(height: 40)
                        .background(Color("GoogleLoginButtonColor"))
                        .cornerRadius(10)
                        .padding(.horizontal)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginPageView().colorScheme(.dark)
        }
        .previewDevice(PreviewDevice(rawValue: "iPhone XS"))
    }
}
