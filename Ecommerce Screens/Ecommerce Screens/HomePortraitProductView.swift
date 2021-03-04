//
//  HomePortraitProductView.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 04/03/21.
//

import SwiftUI

struct HomePortraitProductView: View {
    let imageName : String
    var body: some View {
        VStack {
            Image(imageName)
                .frame(width: 160, height: 214, alignment: .center)             .aspectRatio(contentMode: .fill)
                .cornerRadius(20)
            
            HStack {
                Text("White Metal badge t-shirt")
                    .font(.caption)
                    .fontWeight(.thin)
                Spacer()
            }

            HStack {
                Text("149.00 AED")
                    .font(.subheadline)
                    .fontWeight(.heavy)
                Spacer()
            }
            Spacer()
        }
        .frame(width: 160, height: 254, alignment: .center)
        .padding(.trailing,10)
    }
}

struct HomePortraitProductView_Previews: PreviewProvider {
    
    static var previews: some View {
        HomePortraitProductView(imageName: "img3")
            .previewLayout(.sizeThatFits)
    }
}
