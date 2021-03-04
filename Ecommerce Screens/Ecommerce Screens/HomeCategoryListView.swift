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
                        .foregroundColor(.white)
                }
                .frame(minWidth: 100, maxWidth: 200, minHeight: 64, maxHeight: 64)
                .background(Color.black)
                .cornerRadius(32)
                .padding(.trailing)
                VStack{
                    Text("New Arrivals")
                        .foregroundColor(.black)
                }
                .padding()
                .frame(minWidth: 100, maxWidth: 200, minHeight: 64, maxHeight: 64)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 32)
                        .stroke(Color(0xcfcfcf), lineWidth: 1.0)
                )
                .cornerRadius(32)
                .padding(.trailing)
                
                VStack{
                    Text("Men")
                        .foregroundColor(.black)
                }
                .padding()
                .frame(minWidth: 100, maxWidth: 200, minHeight: 64, maxHeight: 64)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 32)
                        .stroke(Color(0xcfcfcf), lineWidth: 1.0)
                )
                .cornerRadius(32)
                .padding(.trailing)
                
                VStack{
                    Text("Women")
                        .foregroundColor(.black)
                }
                .padding()
                .frame(minWidth: 100, maxWidth: 200, minHeight: 64, maxHeight: 64)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 32)
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
