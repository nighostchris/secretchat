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
    let verticalPadding: CGFloat
    
    init(label: String, verticalPadding: CGFloat) {
        self.label = label
        self.verticalPadding = verticalPadding
    }
    
    var line: some View {
        VStack {
            Divider()
                .frame(height: 2)
                .background(Color("BWDuet"))
        }
        .padding(.horizontal)
    }

    var body: some View {
        HStack {
            line
            Text(label)
                .foregroundColor(Color("BWDuet"))
                .font(.callout)
            line
        }
        .padding(.vertical, verticalPadding)
    }
}

struct CustomDivider_Previews: PreviewProvider {
    static var previews: some View {
        CustomDivider(label: "or", verticalPadding: 36)
    }
}
