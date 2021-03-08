//
//  HomeScreenView.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 03/03/21.
//

import SwiftUI

struct HomeScreenView: View {
    
    let images = ["img0","img1","img2","img3","img4"]
    let bannerImages = ["banner1", "banner2"]
    
    var body: some View {
        VStack {
            ZStack{
                ScrollView(.horizontal, showsIndicators: false){
                    HStack {
                        ForEach(bannerImages, id: \.self) { imageName in
                            HomeTopBannerView(imageName: imageName)
                        }
                    }
                }
                
                VStack{
                    Spacer()
                    PageControl()
                }
            }
            .frame(height: 144)
            .padding()
            
            HomeCategoryListView()
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(images, id: \.self) { imageName in
                        HomePortraitProductView(imageName: imageName)
                    }
                }
            }
            .padding([.leading,.top])
            
            HStack {
                Text("Featured Categories")
                    .font(.system(size: 24, weight: .semibold, design: .default))
                    .padding()
                
                Spacer()
                
                Text("View All")
                    .foregroundColor(.lightGray)
                    .fontWeight(.light)
                    .padding()
            }
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(images.shuffled(), id: \.self) { imageName in
                        HomePortraitProductView(imageName: imageName)
                    }
                }
            }
            .padding([.leading,.top])
            
            
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
