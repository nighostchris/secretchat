//
//  CustomDivider.swift
//  secretchat
//
//  Created by Chris Liu on 1/7/2020.
//  Copyright © 2020 Secret Chat. All rights reserved.
//

import SwiftUI
import UIKit

struct CustomDivider: View {
    let label: String
    let haveLine: Bool
    let lineHeight: CGFloat
    let verticalPadding: CGFloat
    
    init(label: String, haveLine: Bool = false, lineHeight: CGFloat = 2, verticalPadding: CGFloat) {
        self.label = label
        self.haveLine = haveLine
        self.lineHeight = lineHeight
        self.verticalPadding = verticalPadding
    }
    
    var line: some View {
        VStack {
            Divider()
                .frame(height: lineHeight)
                .background(Color("BW2Duet"))
        }
        .padding(.horizontal)
    }

    var body: some View {
        HStack {
            haveLine ? line : nil

            Text(label)
                .font(.callout)
                .fontWeight(.bold)
                .foregroundColor(Color("BWDuet"))
            
            haveLine ? line : nil
        }
        .padding(.vertical, verticalPadding)
    }
}

struct CustomDivider_Previews: PreviewProvider {
    static var previews: some View {
        CustomDivider(label: "or", haveLine: true, verticalPadding: 0)
    }
}
