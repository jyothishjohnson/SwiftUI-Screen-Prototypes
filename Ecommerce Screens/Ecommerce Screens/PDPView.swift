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
                Image("img1")
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
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.horizontal,8)
                    .padding(.top)
                
                HStack {
                    Text("""
                    SWEATERS FL_SWEATERS
                    L12D16
                    """)
                        .padding(.horizontal,8)
                    Spacer()
                }
                
                HStack {
                    Text("Featured Categories")
                        .font(.system(size: 24, weight: .semibold, design: .default))
                        .padding(.horizontal,8)
                    
                    Spacer()
                    
                    Text("View All")
                        .foregroundColor(.lightGray)
                        .fontWeight(.light)
                        .padding(.horizontal,8)
                }
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack {
                        ForEach(images, id: \.self) { imageName in
                            HomePortraitProductView(imageName: imageName)
                                .padding(.trailing,10)
                        }
                    }
                }
                .padding([.leading,.top])
            }
            .padding(.top)
            .padding(.horizontal,10)
            .background(Color.white)
            .cornerRadius(24)
            .offset(y: -40)
            
        }
        .navigationTitle("")
        .edgesIgnoringSafeArea(.all)
    }
}

struct PDPView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PDPView()
                .navigationTitle("")
        }
    }
}
