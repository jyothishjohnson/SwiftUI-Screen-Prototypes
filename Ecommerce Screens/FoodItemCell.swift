//
//  FoodItemCell.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 23/03/21.
//

import SwiftUI

struct FoodItemCell: View {
    
    let foodItem : FoodItem
    var body: some View {
        HStack{
            Image(foodItem.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .padding()
                .frame(width: 110, height: 140, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading, spacing : 2){
                
                Text(foodItem.name)
                    .terminaText(with: 14, weight: .demi)
                    .foregroundColor(.white)
                    .padding(.bottom,4)
                    .padding(.horizontal)
                    .lineLimit(0)

                
                Text(foodItem.quantity)
                    .foregroundColor(Color.tooLightGray)
                    .terminaText(with: 12, weight: .light)
                    .padding(.bottom,4)
                    .padding(.horizontal)

                
                Text(String(format: "%.2f $", foodItem.price))
                    .terminaText(with: 14, weight: .demi)
                    .padding(10)
                    .foregroundColor(.white)
                    .padding(.horizontal,8)
                    .background(Color(0x6155a6))
                    .cornerRadius(8)
                    .padding(.leading,12)
                    .padding(.top,6)

            }
            
            Spacer()

        }
        .padding(.leading,8)
        .background(Color.ec2accentColor)
    }
}

struct FoodItemCell_Previews: PreviewProvider {
    static let foodDesc : String = "MArble beef, cheddar cheese , jalapeno pepper, picked cucumber, lettuce, red onion, BBQ sauce"
    static var previews: some View {
        FoodItemCell(foodItem: FoodItem(name: "Chicken Burger", imageName: "ec2_b_2", quantity: "400g", price: 10.5, desc: foodDesc, isNew: true))
            .previewLayout(.sizeThatFits)
    }
}
