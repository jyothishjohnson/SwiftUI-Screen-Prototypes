//
//  PDPProductInitialDescView.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 17/03/21.
//

import SwiftUI

struct PDPProductInitialDescView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8, content: {
            HStack(spacing: 10) {
                Text("New")
                    .terminaText(with: 10, weight: .regular)
                    .frame(width: 50, height: 20)
                    .padding(8)
                    .foregroundColor(.white)
                    .background(Color(0x83BA27))
                    .cornerRadius(8)
                
                Text("SOLD OUT")
                    .terminaText(with: 10, weight: .light)
                    .padding(8)
            }
            .padding(.top,8)
            .padding(.horizontal,8)
            .padding(.bottom)
            
            Text("RESERVED")
                .terminaText(with: 15, weight: .demi)
                .padding(.horizontal,8)
            
            Text("Light Grey Sports Style Blazer")
                .terminaText(with: 18)
                .padding(.horizontal,8)
                .padding(.bottom)
            
            Text("279.00 AED")
                .strikethrough()
                .terminaText(with: 11, weight: .light)
                .foregroundColor(Color.gray)
                .padding(.horizontal,8)
            
            HStack(spacing: 0){
                Text("195.30 AED")
                    .terminaText(with: 15)
                    .padding(.horizontal,8)
                Text("30% OFF")
                    .terminaText(with: 15)
                    .foregroundColor(.red)
                    .padding(.horizontal,8)
                
                Spacer()
                
                Image(systemName: "star.fill")
                    .foregroundColor(Color(0x83BA27))
                    .padding(.horizontal, 8)
                Text("4.9")
                    .terminaText(with: 10)
                    .padding(.trailing, 8)
                
                
            }
        })
    }
}

struct PDPProductInitialDescView_Previews: PreviewProvider {
    static var previews: some View {
        PDPProductInitialDescView()
            .previewLayout(.sizeThatFits)
    }
}
