//
//  EC2HomeDeliveryAddressCell.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 21/03/21.
//

import SwiftUI

struct EC2HomeDeliveryAddressCell: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing : 0) {
                Text("Take away from")
                    .foregroundColor(.tooLightGray)
                    .terminaText(with: 11, weight: .light)
                    .padding(.horizontal, 10)
                Text("71 Tottenham Court Road")
                    .foregroundColor(.white)
                    .terminaText(with: 14, weight: .demi)
                    .padding([.leading,.trailing,.bottom],10)
                    .padding(.top,8)
            }
            Spacer()
            Image(systemName: "magnifyingglass")
                .resizable()
                .frame(width: 20, height: 20)
                .padding(10)
                .foregroundColor(.white)
                .background(Color(0x292e3c))
                .cornerRadius(20)
        }
        .background(Color.ec2bgcolor)
    }
}

struct EC2HomeDeliveryAddressCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EC2HomeDeliveryAddressCell()
                .previewLayout(.sizeThatFits)
        }
    }
}
