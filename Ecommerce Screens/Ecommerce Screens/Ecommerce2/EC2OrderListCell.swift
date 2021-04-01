//
//  EC2OrderListCell.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 30/03/21.
//

import SwiftUI

struct EC2OrderListCell: View {
    let orderInfo : OrderInfo
    
    var body: some View {
        HStack(spacing: 0){
            Image(orderInfo.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .padding(.horizontal,10)
                .frame(width: 64, height: 64, alignment: .center)

            Text(orderInfo.itemName)
                .terminaText(with: 14, weight: .demi)
                .padding(.horizontal,14)
                .foregroundColor(.white)
            Spacer()
            Text("\(orderInfo.itemQuantity) x \(String(format: "$%.2f", orderInfo.itemCost))")
                .terminaText(with: 15, weight: .demi)
                .padding(.trailing,9)
                .foregroundColor(.white)
            
        }
        .padding(.vertical)
        .background(Color.ec2bgcolor)
    }
}

struct EC2OrderListCell_Previews: PreviewProvider {
    static var previews: some View {
        EC2OrderListCell(orderInfo: OrderInfo(image: "ec2_b_3", itemName: "Chicken Burger", itemQuantity: 1, itemCost: 1.2))
    }
}
