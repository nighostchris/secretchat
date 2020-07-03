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

            VStack {
                Spacer()
                
                Image("logo")
                    .resizable()
                    .frame(width: 175, height: 175)
                
                Spacer()
                
                VStack {
                    Group {
                        CustomInputField(title: "Email Address")
                            .padding(.bottom)
                        
                        CustomInputField(title: "Password")
                            .padding(.bottom)
                        
                        CustomImageButton(label: "Login", height: 40, cornerRadius: 10, buttonColor: "GeneralButtonColor", labelColor: "Black")
                            .padding(.bottom)
                    }
                    
                    CustomDivider(label: "or", verticalPadding: 0)
                        .padding(.vertical)
                    
                
                    Group {
                        CustomImageButton(image: "facebook-logo", label: "Continue with Facebook", height: 40, cornerRadius: 10, buttonColor: "FacebookLoginButtonColor", labelColor: "White", imageSize: 35)
                            .padding(.vertical)
                        
                        CustomImageButton(image: "google-logo", label: "Continue with Google", height: 40, cornerRadius: 10, buttonColor: "GoogleLoginButtonColor", labelColor: "Black", imageSize: 35)
                            .padding(.bottom)
                        
                        HStack {
                            Text("Need an account ?")
                                .fontWeight(.bold)
                                .padding(.leading)
                                .font(.subheadline)
                            
                            Spacer()
                            
                            Text("Forget password ?")
                                .fontWeight(.bold)
                                .padding(.trailing)
                                .font(.subheadline)
                        }
                        .padding(.vertical)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS"], id: \.self) { deviceName in Group {
                LoginPageView().colorScheme(.dark)
            }
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
    }
}
