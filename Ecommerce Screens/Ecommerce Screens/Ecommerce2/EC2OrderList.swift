//
//  EC2OrderList.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 30/03/21.
//

import SwiftUI

struct EC2OrderList: View {
    
    var body: some View {
        VStack{
            HStack{
                Text("Order List")
                    .terminaText(with: 14, weight: .demi)
                    .foregroundColor(.white)
                Spacer()
                Image(systemName: "dollarsign.square")
                    .resizable()
                    .frame(width: 24, height: 24, alignment: .center)
                    .foregroundColor(.white)
                
            }
            .padding()
            
            ForEach(OrderInfo.list, id: \.image){ order in
                EC2OrderListCell(orderInfo: order)
            }
        }
        .background(Color.ec2bgcolor)
        
    }
}

struct EC2OrderList_Previews: PreviewProvider {
    static var previews: some View {
        EC2OrderList()
    }
}

struct OrderInfo {
    let image : String
    let itemName : String
    let itemQuantity : Int
    let itemCost : Double
    
    static let list : [OrderInfo] = [
        OrderInfo(image: "ec2_b_2", itemName: "Chicken Burger", itemQuantity: 2, itemCost: 1.4),
        OrderInfo(image: "ec2_b_4", itemName: "Dark Burger with bacon", itemQuantity: 4, itemCost: 2.5),
        OrderInfo(image: "ec2_p_4", itemName: "French Fries", itemQuantity: 3, itemCost: 1.0),
        OrderInfo(image: "ec2_p_1", itemName: "Coca-Cola 500 ml", itemQuantity: 4, itemCost: 2.0)
    ]
}
