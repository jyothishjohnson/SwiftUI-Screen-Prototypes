//
//  PDPProductInitialDescView.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 17/03/21.
//

import SwiftUI

struct PDPProductInitialDescView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10, content: {
            HStack(spacing: 10) {
                Text("New")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 50, height: 20)
                    .padding(8)
                    .foregroundColor(.white)
                    .background(Color(0x83BA27))
                    .cornerRadius(8)
                
                Text("SOLD OUT")
                    .font(.headline)
                    .fontWeight(.thin)
                    .padding(8)
            }
            .padding(.top,8)
            .padding(.horizontal,8)
            
            Text("RESERVED")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.horizontal,8)
            
            Text("Light Grey Sports Style Blazer")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.horizontal,8)
            
            Text("279.00 AED")
                .strikethrough()
                .foregroundColor(Color.lightGray)
                .padding(.horizontal,8)
            
            HStack(spacing: 0){
                Text("195.30 AED")
                    .font(.title)
                    .padding(.horizontal,8)
                Text("30% OFF")
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.red)
                    .padding(.horizontal,8)
                
                Spacer()
                
                Image(systemName: "star.fill")
                    .foregroundColor(Color(0x83BA27))
                    .padding(.horizontal, 8)
                Text("4.9")
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
