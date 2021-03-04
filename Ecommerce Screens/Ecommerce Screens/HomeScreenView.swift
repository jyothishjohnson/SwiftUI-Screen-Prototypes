//
//  HomeScreenView.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 03/03/21.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        VStack {
            ZStack{
                HomeTopBannerView()
                
                VStack{
                    Spacer()
                    PageControl()
                }
            }
            .frame(height: 144)
            .padding()
            
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
            Spacer()
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
//            .previewLayout(.sizeThatFits)
    }
}
