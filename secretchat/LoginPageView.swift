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
            Color("DarkModeBackground")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                CustomInputField(title: "Email Address")
                CustomInputField(title: "Password")
            }
        }
    }
}

struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
            .previewDevice(PreviewDevice(rawValue: "iPhone XS"))
    }
}
