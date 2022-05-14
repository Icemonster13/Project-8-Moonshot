//
//  CustomDivider.swift
//  Moonshot
//
//  Created by Michael & Diana Pascucci on 5/7/22.
//

import SwiftUI

struct CustomDivider: View {
    
    let width: Double
    
    var body: some View {
        Rectangle()
            .frame(width: width, height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

struct CustomDivider_Previews: PreviewProvider {
    static var previews: some View {
        CustomDivider(width: 300)
            .previewLayout(.sizeThatFits)
    }
}
