//
//  HomeTopBannerView.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 03/03/21.
//

import SwiftUI

struct HomeTopBannerView: View {
    var body: some View {
        Image("banner")
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
