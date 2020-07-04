//
//  RegisterPageView.swift
//  secretchat
//
//  Created by Chris Liu on 3/7/2020.
//  Copyright © 2020 Secret Chat. All rights reserved.
//

import SwiftUI
import Firebase

struct RegisterPageView: View {
    @State var email: String
    @State var password: String
    @State var haveError: Bool = false
    @State var errorMessage: String?
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @EnvironmentObject var authController: AuthController
    
    func signUp() {
        authController.signUp(email: email, password: password, handler: { (result, error) in
            if error != nil {
                if let errorCode = AuthErrorCode(rawValue: error!._code) {
                    switch errorCode {
                        case .invalidEmail:
                            self.errorMessage = "Invalid email format."
                        case .emailAlreadyInUse:
                            self.errorMessage = "Email already in use."
                        default:
                            self.errorMessage = "Unknown error."
                    }
                }
                
                self.haveError = true
            } else {
                self.email = ""
                self.password = ""
            }
        })
    }
    
    var body: some View {
        NavigationView {
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
                                .foregroundColor(Color("BW2Duet"))
                                .fontWeight(.bold)
                                .font(.subheadline)
                        }
                        .frame(height: metrics.size.height * 0.3)
                        
                        VStack {
                            CustomInputField(title: "Email Address", value: self.$email)
                                .padding(.bottom)
                            
                            CustomInputField(title: "Password", value: self.$password)
                        }
                        .frame(height: metrics.size.height * 0.3)
                        
                        VStack {
                            Spacer()
                            
                            Button(action: self.signUp) {
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
                            .alert(isPresented: self.$haveError) {
                                Alert(title: Text(self.errorMessage!))
                            }
                            
                            Button(action: { self.mode.wrappedValue.dismiss() }) {
                                Text("Already have an account ? Sign in")
                                    .fontWeight(.bold)
                                    .padding()
                                    .font(.subheadline)
                            }
                        }
                        .frame(height: metrics.size.height * 0.3)
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct RegisterPageView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS"], id: \.self) { deviceName in Group {
                RegisterPageView(email: "testing@mail.com", password: "testing").colorScheme(.dark)
            }
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
    }
}
