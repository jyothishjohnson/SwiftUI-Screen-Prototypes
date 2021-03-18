//
//  PDPColorsView.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 17/03/21.
//

import SwiftUI

struct PDPColorsView: View {
    let color : Color
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 18, height: 18)
                .foregroundColor(color)
            Circle()
                .stroke(color.opacity(0.6), style: StrokeStyle(lineWidth: 4))
                .frame(width: 26, height: 26)
                
        }
        .padding(8)
    }
}

struct PDPColorsView_Previews: PreviewProvider {
    static var previews: some View {
        PDPColorsView(color: .blue)
            .previewLayout(.sizeThatFits)
    }
}
