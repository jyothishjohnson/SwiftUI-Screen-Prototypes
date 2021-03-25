//
//  EC2FoodList.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 23/03/21.
//

import SwiftUI

struct EC2FoodList: View {
    
    @State private var showingDetail = false
    
    @State private var currentFoodItemIndex = 0
    
    var foodItems : [FoodItem] = FoodItem.list
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .leading, spacing: 16){
                ForEach(foodItems.indices, id: \.self){ index in
                    FoodItemCell(foodItem: foodItems[index])
                        .onTapGesture {
                            currentFoodItemIndex = index
                            showingDetail = true
                        }
                        .cornerRadius(12)
                    
                }
            }
            .fullScreenCover(isPresented: $showingDetail, content: {
                FoodItemDetailView(foodItem: foodItems[currentFoodItemIndex])
            })
//            .sheet(isPresented: $showingDetail, content: {
//                FoodItemDetailView(foodItem: foodItems[currentFoodItemIndex])
//            })
        }
    }
}

struct EC2FoodList_Previews: PreviewProvider {
    static var previews: some View {
        EC2Home()
    }
}

struct FoodItem: Identifiable{
    let id : UUID = UUID()
    let name : String
    let imageName : String
    let quantity : String
    let price : Double
    let desc : String
    let isNew : Bool
    
    static let foodDesc : String = "Marble beef, cheddar cheese , jalapeno pepper, picked cucumber, lettuce, red onion, BBQ sauce"
    static let list : [FoodItem] = [
        FoodItem(name: "California Double Cheese", imageName: "ec2_b_2", quantity: "400g", price: 10.24, desc: foodDesc, isNew: true),
        FoodItem(name: "Chicken Burger", imageName: "ec2_b_3", quantity: "400g", price: 5.32, desc: foodDesc, isNew: false),
        FoodItem(name: "Pepperoni Pizza", imageName: "ec2_p_4", quantity: "400g", price: 9.40, desc: foodDesc, isNew: true),
        FoodItem(name: "Dark Burger with bacon", imageName: "ec2_b_4", quantity: "400g", price: 6.10, desc: foodDesc, isNew: false)
    ]
}
