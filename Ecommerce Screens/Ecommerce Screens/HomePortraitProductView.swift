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
            ZStack {
                VStack {
                    Image(imageName)
                        .frame(width: 160, height: 214, alignment: .center)
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(20)
                    Spacer()
                }
                HStack {
                    Spacer()
                    VStack {
                        Spacer()
                        HStack{
                            Text("New")
                                .foregroundColor(.white)
                        }
                        .frame(width: 54, height: 24)
                        .background(
                            RoundedCorners(color: Color(0x83BA27), tl: 20, tr: 0, bl: 0, br: 20)
                        )
                        Spacer()
                            .frame(height:8)
                    }
                }
                Spacer()
            }
            
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
        .frame(width: 160, height: 268, alignment: .center)
    }
}

struct HomePortraitProductView_Previews: PreviewProvider {
    
    static var previews: some View {
        HomePortraitProductView(imageName: "img3")
            .previewLayout(.sizeThatFits)
    }
}
