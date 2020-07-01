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
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                VStack(spacing: 15) {
                    CustomInputField(title: "Email Address")
                    
                    CustomInputField(title: "Password")
                    
                    CustomImageButton(label: "Login", height: 40, cornerRadius: 10, buttonColor: "LoginButtonColor", labelColor: "Black")
                    .padding(.top, 10)
                }
                .padding(.horizontal)
                
                CustomDivider(label: "or", verticalPadding: 36)
                    .padding(.horizontal)
                
                VStack(spacing: 24) {
                    CustomImageButton(image: "facebook-logo", label: "Continue with Facebook", height: 40, cornerRadius: 10, buttonColor: "FacebookLoginButtonColor", labelColor: "White")
                    
                    CustomImageButton(image: "google-logo", label: "Continue with Google", height: 40, cornerRadius: 10, buttonColor: "GoogleLoginButtonColor", labelColor: "Black")
                }
                .padding(.horizontal)
                
                HStack {
                    Text("Need an account ?")
                        .padding(.leading)
                    Spacer()
                    Text("Forget password ?")
                        .padding(.trailing)
                }
                .padding(.horizontal)
                .padding(.vertical, 24)
            }
        }
    }
}

struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 8", "iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in Group {
                LoginPageView().colorScheme(.dark)
            }
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
    }
}
