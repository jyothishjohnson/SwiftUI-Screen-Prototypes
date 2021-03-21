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
                            NavigationLink(destination: PLPView()){
                                HomeTopBannerView(imageName: imageName)
                            }
                        }
                    }
                }
                
                VStack{
                    Spacer()
                    PageControl()
                }
            }
            .frame(height: 144)
            .padding([.leading,.trailing,.top])
            .padding(.bottom,8)
            
            HomeCategoryListView()
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(images, id: \.self) { imageName in
                        NavigationLink(destination: PDPView()){
                            HomePortraitProductView(imageName: imageName)
                                .padding(.trailing,8)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
            .padding([.leading])
            .padding(.top, 8)
            
            HStack {
                Text("Featured Categories")
                    .terminaText(with: 15, weight: .demi)
                    .padding(8)
                    .padding(.leading, 8)
                
                Spacer()
                
                Text("View All")
                    .foregroundColor(.lightGray)
                    .terminaText(with: 10)
                    .padding(.trailing,12)
            }
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(images.shuffled(), id: \.self) { imageName in
                        NavigationLink(destination: PDPView()){
                            HomePortraitProductView(imageName: imageName)
                                .padding(.trailing,10)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
            .padding([.leading])
            .padding(.top, 4)
            
            
            Spacer()
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            HomeScreenView()
            //            .previewLayout(.sizeThatFits)
        }
        
    }
}
