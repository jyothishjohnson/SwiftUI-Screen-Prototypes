//
//  PDPColorsCollectionView.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 17/03/21.
//

import SwiftUI

struct PDPColorsCollectionView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            
            Text("Colors")
                .terminaText(with: 12, weight: .demi)
                .padding(.top,8)
                .padding(.horizontal,8)
            
            HStack{
                ForEach(0...4, id: \.self){ _ in
                    PDPColorsView(color: Color.random)
                }
            }
        }
    }
}

struct PDPColorsCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        PDPColorsCollectionView()
            .previewLayout(.sizeThatFits)
    }
}
