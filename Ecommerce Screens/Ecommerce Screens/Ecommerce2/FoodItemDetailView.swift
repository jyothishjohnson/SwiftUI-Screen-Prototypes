//
//  FoodItemDetailView.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 24/03/21.
//

import SwiftUI

struct FoodItemDetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    let foodItem : FoodItem
    var body: some View {
        ScrollView{
            VStack{
                Image(foodItem.imageName)
                    .resizable()
                    .frame(height: 360)
                    .cornerRadius(20)
                    .padding()
                
                Text("New")
                    .foregroundColor(.white)
                    .terminaText(with: 15,weight: .demi)
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .background(Color.ec2purplecolor)
                    .cornerRadius(10)
                
                Text(foodItem.name)
                    .terminaText(with: 25, weight: .demi)
                    .foregroundColor(.white)
                    .padding()
                    .lineLimit(3)
                    .multilineTextAlignment(.center)
                
                Text(foodItem.desc)
                    .terminaText(with: 14)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,30)
                
                
                HStack{
                    Spacer()
                    Label(String(format: "$%.2f", foodItem.price), systemImage: "tag")
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    
                    Label(foodItem.quantity, systemImage: "bolt.heart")
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    Spacer()
                }
                .frame(minHeight: 50)
                .padding()
                
                Spacer()
                
                HStack{
                    Spacer()
                    Text(String(format: "Taste if for $%.2f", foodItem.price))
                        .foregroundColor(.white)
                        .terminaText(with: 18, weight: .demi)
                    Spacer()
                }
                .onTapGesture {
                    presentationMode.wrappedValue.dismiss()
                }
                .frame(height: 64)
                .background(Color.ec2purplecolor)
                .cornerRadius(18)
                .padding()
//                .padding(.top)
                
            }
        }
        .background(Color.ec2accentColor.edgesIgnoringSafeArea(.all))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FoodItemDetailView_Previews: PreviewProvider {
    static let foodDesc : String = "Marble beef, cheddar cheese , jalapeno pepper, picked cucumber, lettuce, red onion, BBQ sauce"
    static let food = FoodItem(name: "Chicken Burger from India", imageName: "ec2_b_2", quantity: "400g", price: 10.5, desc: foodDesc, isNew: true)
    static var previews: some View {
        FoodItemDetailView(foodItem: food)
    }
}
