//
//  SplashView.swift
//  secretchat
//
//  Created by Chris Liu on 4/7/2020.
//  Copyright © 2020 Secret Chat. All rights reserved.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            
            Image("logo")
                .resizable()
                .frame(width: 200, height: 200)
                .padding(.top)
        }
        .transition(.opacity)
    }
}
