//
//  CustomInputField.swift
//  secretchat
//
//  Created by Chris Liu on 1/7/2020.
//  Copyright © 2020 Secret Chat. All rights reserved.
//

import SwiftUI

struct CustomInputField: View {
    var title: String
    @Binding var value: String
    
    public struct CustomTextFieldStyle: TextFieldStyle {
        public func _body(configuration: TextField<Self._Label>) -> some View {
            configuration
                .padding(.leading)
                .foregroundColor(Color("BW2Duet"))
        }
    }
    
    var body: some View {
        HStack {
            TextField(title, text: $value)
                .textFieldStyle(CustomTextFieldStyle())
        }
        .frame(height: 48)
        .overlay(RoundedRectangle(cornerRadius: 10)
        .stroke(Color("BWDuet"), lineWidth: 1))
        .padding(.horizontal)
    }
}
