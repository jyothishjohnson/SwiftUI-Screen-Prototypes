//
//  PDPView.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 17/03/21.
//

import SwiftUI

struct PDPView: View {
    
    let images = ["img0","img1","img2","img3","img4"]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            GeometryReader { reader in
                Image("img3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .offset(y: -reader.frame(in: .global).minY)
                    .frame(height: reader.frame(in: .global).minY + 480)
            }
            .frame(height: 440)
            
            VStack(alignment: .leading){
                PDPProductInitialDescView()
                
                PDPColorsCollectionView()
                
                Text("Description")
                    .terminaText(with: 13, weight: .demi)
                    .padding(.horizontal,8)
                    .padding(.top)
                
                HStack {
                    Text("""
                    SWEATERS FL_SWEATERS
                    L12D16
                    """)
                        .terminaText(with: 14, weight: .light)
                        .padding(.horizontal,8)
                    Spacer()
                }
                .padding(.vertical, 4)
                
                HStack {
                    Text("Similar Products")
                        .terminaText(with: 13, weight: .demi)
                        .padding(.horizontal,8)
                    
                    Spacer()
                    
                    Text("View All")
                        .foregroundColor(.lightGray)
                        .terminaText(with: 12)
                        .padding(.horizontal,8)
                }
                .padding(.top, 8)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack {
                        ForEach(images, id: \.self) { imageName in
                            HomePortraitProductView(imageName: imageName)
                                .padding(.trailing,10)
                        }
                    }
                }
                .padding([.leading],8)
            }
            .padding(.top)
            .padding(.horizontal,10)
            .background(Color.white)
            .cornerRadius(24)
            .offset(y: -30)
            
        }
        .edgesIgnoringSafeArea(.all)
//        .navigationBarHidden(true)
    }
    
}

struct PDPView_Previews: PreviewProvider {
    static var previews: some View {
        PDPView()
    }
}
