//
//  ContentView.swift
//  secretchat
//
//  Created by Chris Liu on 1/7/2020.
//  Copyright © 2020 Secret Chat. All rights reserved.
//

import SwiftUI

struct RootView: View {
    @State var switchToLogin: Bool = false
    @State var switchToMain: Bool = false
    
    @EnvironmentObject var authController: AuthController
    
    func checkAuthAndSwitchView() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            if self.authController.user == nil {
                self.switchToLogin = true
            } else {
                self.switchToMain = true
            }
        }
    }
    
    var body: some View {
        VStack {
            if !switchToLogin && !switchToMain {
                SplashView()
                    .transition(.opacity)
            }
            if self.switchToLogin {
                LoginPageView()
                    .transition(.opacity)
            } else if self.switchToMain {
                MainPageView()
                    .transition(.opacity)
            }
        }
        .onAppear {
            self.checkAuthAndSwitchView()
        }
    }
}
