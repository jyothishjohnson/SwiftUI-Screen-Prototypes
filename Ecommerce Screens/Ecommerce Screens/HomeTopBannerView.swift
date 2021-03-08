//
//  HomeTopBannerView.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 03/03/21.
//

import SwiftUI

struct HomeTopBannerView: View {
    
    var imageName : String = "banner1"
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .cornerRadius(8)
    }
}

struct HomeTopBannerView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTopBannerView()
            .previewLayout(.sizeThatFits)
    }
}
