//
//  CustomButton.swift
//  secretchat
//
//  Created by Chris Liu on 1/7/2020.
//  Copyright © 2020 Secret Chat. All rights reserved.
//

import SwiftUI
import UIKit

struct CustomImageButton: View {
    var image: String
    var label: String
    var height: CGFloat
    var cornerRadius: CGFloat
    var buttonColor: String
    var labelColor: String
    
    init(image: String = "", label: String, height: CGFloat, cornerRadius: CGFloat, buttonColor: String, labelColor: String) {
        self.image = image
        self.label = label
        self.height = height
        self.cornerRadius = cornerRadius
        self.buttonColor = buttonColor
        self.labelColor = labelColor
    }
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            HStack {
                Spacer()
                
                if !image.isEmpty {
                    Image(image)
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                }

                Text(label)
                    .foregroundColor(Color(labelColor))
                    .fontWeight(.bold)
                Spacer()
            }
            .frame(height: self.height)
            .background(Color(buttonColor))
            .cornerRadius(self.cornerRadius)
            .padding(.horizontal)
        }
    }
}

struct CustomImageButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomImageButton(label: "Test", height: 40, cornerRadius: 20, buttonColor: "FacebookLoginButtonColor", labelColor: "White")
    }
}
