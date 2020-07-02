//
//  CustomInputField.swift
//  secretchat
//
//  Created by Chris Liu on 1/7/2020.
//  Copyright © 2020 Secret Chat. All rights reserved.
//

import SwiftUI

struct CustomInputField: View {
    @State
    private var value = ""

    var title: String
    
    public struct CustomTextFieldStyle: TextFieldStyle {
        public func _body(configuration: TextField<Self._Label>) -> some View {
            configuration
                .padding(.leading)
                .foregroundColor(Color("TextFieldColor"))
        }
    }
    
    var body: some View {
        HStack {
            TextField("Email Address", text: $value)
                .textFieldStyle(CustomTextFieldStyle())
        }
        .frame(height: 48)
        .overlay(RoundedRectangle(cornerRadius: 10)
        .stroke(Color("BWDuet"), lineWidth: 1))
        .padding(.horizontal)
    }
}

struct CustomInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputField(title: "Email Address")
            .previewDevice(PreviewDevice(rawValue: "iPhone XS"))
    }
}
