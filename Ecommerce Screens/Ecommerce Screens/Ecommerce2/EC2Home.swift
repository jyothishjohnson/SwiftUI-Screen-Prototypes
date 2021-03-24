//
//  EC2Home.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 21/03/21.
//

import SwiftUI

struct EC2Home: View {
    
    var body: some View {
            VStack {
                HStack{
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(10)
                        .foregroundColor(.white)
                        .background(Color.ec2accentColor)
                        .cornerRadius(20)
                    
                    Spacer()
                    
                    Image(systemName: "bag")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(10)
                        .foregroundColor(.white)
                        .background(Color.ec2accentColor)
                        .cornerRadius(20)
                    
                }
                .padding(.horizontal,20)
                
                EC2HomeDeliveryAddressCell()
                    .padding(.horizontal,20)
                    .padding(.top, 12)
                
                EC2MenuCateroryListCollection()
                
                Spacer()
            }
            .background(Color.ec2bgcolor.edgesIgnoringSafeArea(.all))
            .edgesIgnoringSafeArea(.bottom)
        }
    
}

struct EC2Home_Previews: PreviewProvider {
    static var previews: some View {
        EC2Home()
    }
}

extension Color {
    static let ec2bgcolor = Color(0x1e2026)
    static let ec2accentColor = Color(0x292e3c)
    static let ec2purplecolor = Color(0x7c40ff)
}


//    init() {
//        // this is not the same as manipulating the proxy directly
//        let appearance = UINavigationBarAppearance()
//
//        // this overrides everything you have set up earlier.
//        appearance.configureWithTransparentBackground()
//
//        // this only applies to big titles
//        appearance.largeTitleTextAttributes = [
//            .font : UIFont.systemFont(ofSize: 20),
//            NSAttributedString.Key.foregroundColor : UIColor.white
//        ]
//        // this only applies to small titles
//        appearance.titleTextAttributes = [
//            .font : UIFont.systemFont(ofSize: 20),
//            NSAttributedString.Key.foregroundColor : UIColor.white
//        ]
//
//        //In the following two lines you make sure that you apply the style for good
//        UINavigationBar.appearance().scrollEdgeAppearance = appearance
//        UINavigationBar.appearance().standardAppearance = appearance
//
//        // This property is not present on the UINavigationBarAppearance
//        // object for some reason and you have to leave it til the end
//        UINavigationBar.appearance().tintColor = .white
//
//    }
