//
//  LoginPageView.swift
//  secretchat
//
//  Created by Chris Liu on 1/7/2020.
//  Copyright © 2020 Secret Chat. All rights reserved.
//

import SwiftUI

struct LoginPageView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var gradient: Gradient {
        let stops: [Gradient.Stop] = [
            .init(color: Color("LighterBackgroundColor"), location: 0.3),
            .init(color: Color("BackgroundColor"), location: 0.5)
        ]
        
        return Gradient(stops: stops)
    }
    
    var body: some View {
        NavigationView {
            GeometryReader { metrics in
                ZStack {
                    LinearGradient(gradient: self.gradient, startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)

                    VStack {
                        Spacer()
                        
                        Image("logo")
                            .resizable()
                            .frame(width: 175, height: 175)
                            .padding(.top)
                        
                        Spacer()
                        
                        VStack {
                            VStack {
                                CustomInputField(title: "Email Address", value: self.$email)
                                    .padding(.bottom)
                                
                                CustomInputField(title: "Password", value: self.$password)
                                    .padding(.bottom)
                                
                                CustomButton(label: "Login", height: 40, cornerRadius: 10, labelColor: "Black")
                                    .padding(.bottom)
                                    .padding(.horizontal)
                            }
                            .padding(.top)
                            
                            
                            CustomDivider(label: "or", haveLine: true, verticalPadding: 0)
                                .padding(.vertical)
                                
                            
                            VStack {
                                HStack {
                                    CustomButton(image: "facebook-logo", label: "Facebook", height: 40, cornerRadius: 10, buttonColor: "FacebookLoginButtonColor", labelColor: "White", imageSize: 35)
                                    
                                    Spacer()
                                    
                                    CustomButton(image: "google-logo", label: "Google", height: 40, cornerRadius: 10, buttonColor: "GoogleLoginButtonColor", labelColor: "Black", imageSize: 35)
                                }
                                
                                HStack {
                                    NavigationLink(destination: RegisterPageView(email: "", password: "")
                                        .navigationBarTitle("")
                                        .navigationBarHidden(true)
                                        .navigationBarBackButtonHidden(true)
                                    ) {
                                        HStack {
                                            Spacer()
                                            
                                            Text("Sign Up")
                                                .fontWeight(.bold)
                                                .foregroundColor(Color("White"))

                                            Spacer()
                                        }
                                        .frame(height: 40)
                                        .background(Color("Green"))
                                        .cornerRadius(10)
                                    }
                                    
                                    Spacer()
                                    
                                    NavigationLink(destination: RegisterPageView(email: "", password: "")
                                        .navigationBarTitle("")
                                        .navigationBarHidden(true)
                                        .navigationBarBackButtonHidden(true)
                                    ) {
                                        HStack {
                                            Spacer()
                                            
                                            Text("Reset Password")
                                                .fontWeight(.bold)
                                                .foregroundColor(Color("White"))

                                            Spacer()
                                        }
                                        .frame(height: 40)
                                        .background(Color("Red"))
                                        .cornerRadius(10)
                                    }
                                }
                            }
                            .padding(.horizontal)
                            .padding(.top)
                        }
                        .padding(.horizontal)
                        
                        Spacer()
                    }
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
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
