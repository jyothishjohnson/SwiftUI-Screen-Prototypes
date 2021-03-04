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
            
            HomeCategoryListView()
            
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
