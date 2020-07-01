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
    private var value = "chrisliupascal@gmail.com"

    var title: String
    
    public struct CustomTextFieldStyle: TextFieldStyle {
        public func _body(configuration: TextField<Self._Label>) -> some View {
            configuration
                .padding(.leading)
                .foregroundColor(Color("TextFieldColor"))
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.caption)
                .padding(.leading)
                .foregroundColor(Color("TextFieldLabelColor"))
            HStack {
                TextField("", text: $value)
                    .textFieldStyle(CustomTextFieldStyle())
            }
            .frame(height: 48)
            .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color("TextFieldBorderColor"), lineWidth: 1))
            .padding(.horizontal)
        }
    }
}

struct CustomInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputField(title: "Email Address")
            .previewDevice(PreviewDevice(rawValue: "iPhone XS"))
    }
}
