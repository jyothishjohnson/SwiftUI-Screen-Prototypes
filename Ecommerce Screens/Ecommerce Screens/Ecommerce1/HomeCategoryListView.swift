//
//  HomeCategoryListView.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 04/03/21.
//

import SwiftUI

struct HomeCategoryListView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                VStack{
                    Text("All")
                        .terminaText(with: 16, weight: .light)
                        .foregroundColor(.white)
                }
                .frame(minWidth: 100, maxWidth: 200, minHeight: 40, maxHeight: 40)
                .background(Color.black)
                .cornerRadius(26)
                .padding(.trailing)
                VStack{
                    Text("New Arrivals")
                        .terminaText(with: 16, weight: .light)
                        .foregroundColor(.black)
                }
                .padding()
                .frame(minWidth: 100, maxWidth: 200, minHeight: 40, maxHeight: 40)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 26)
                        .stroke(Color(0xcfcfcf), lineWidth: 1.0)
                )
                .cornerRadius(32)
                .padding(.trailing)
                
                VStack{
                    Text("Men")
                        .terminaText(with: 16, weight: .light)
                        .foregroundColor(.black)
                }
                .padding()
                .frame(minWidth: 100, maxWidth: 200, minHeight: 40, maxHeight: 40)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 26)
                        .stroke(Color(0xcfcfcf), lineWidth: 1.0)
                )
                .cornerRadius(32)
                .padding(.trailing)
                
                VStack{
                    Text("Women")
                        .terminaText(with: 16, weight: .light)
                        .foregroundColor(.black)
                }
                .padding()
                .frame(minWidth: 100, maxWidth: 200, minHeight: 40, maxHeight: 40)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 26)
                        .stroke(Color(0xcfcfcf), lineWidth: 1.0)
                )
                .cornerRadius(32)
                .padding(.trailing)
                
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}

struct HomeCategoryListView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCategoryListView()
            .previewLayout(.sizeThatFits)
    }
}
