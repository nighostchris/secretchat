//
//  CustomButton.swift
//  secretchat
//
//  Created by Chris Liu on 1/7/2020.
//  Copyright © 2020 Secret Chat. All rights reserved.
//

import SwiftUI
import UIKit

struct CustomButton: View {
    let image: String
    let label: String
    let height: CGFloat
    let cornerRadius: CGFloat
    let buttonColor: String
    let labelColor: String
    let imageSize: CGFloat
    
    init(image: String = "", label: String, height: CGFloat, cornerRadius: CGFloat, buttonColor: String = "GeneralButtonColor", labelColor: String, imageSize: CGFloat = 0) {
        self.image = image
        self.label = label
        self.height = height
        self.cornerRadius = cornerRadius
        self.buttonColor = buttonColor
        self.labelColor = labelColor
        self.imageSize = imageSize
    }
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            HStack {
                Spacer()
                
                if !image.isEmpty {
                    Image(image)
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: imageSize, height: imageSize)
                }

                Text(label)
                    .fontWeight(.bold)
                    .foregroundColor(Color(labelColor))

                Spacer()
            }
            .frame(height: self.height)
            .background(Color(buttonColor))
            .cornerRadius(self.cornerRadius)
        }
    }
}

struct CustomImageButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(image: "facebook-logo", label: "Test", height: 40, cornerRadius: 20, buttonColor: "FacebookLoginButtonColor", labelColor: "White", imageSize: 30)
    }
}
