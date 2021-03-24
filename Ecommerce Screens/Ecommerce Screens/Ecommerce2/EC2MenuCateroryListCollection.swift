//
//  EC2MenuCateroryListCollection.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 22/03/21.
//

import SwiftUI

struct EC2MenuCateroryListCollection: View {
    
    @State private var selectedIndex : Int = 0
    
    private let categories : [EC2Category] = [EC2Category(0,"New"), EC2Category(1,"Burgers"), EC2Category(2,"Pizza"), EC2Category(3,"Drink"), EC2Category(4,"Sushi"), EC2Category(5,"Salad")]
    var body: some View {
        
        VStack(spacing : 20) {
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(categories, id: \.self) { category in
                        VStack(spacing: 8){
                            Text(category.name)
                                .foregroundColor(category.index == selectedIndex ? Color.white : Color.gray)
                                .terminaText(with: 13, weight: category.index == selectedIndex ? .demi : .regular)
                                .padding([.leading,.trailing,.top])
                            Color(category.index == selectedIndex ? 0x7c40ff : 0x1e2026)
                                .frame(maxWidth: 40, maxHeight: 4)
                        }
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                selectedIndex = category.index
                            }
                        }
                    }
                }
                .padding(.leading, 12)
            }
            
            EC2FoodList()
                .padding()
        }
    }
}

struct EC2MenuCateroryListCollection_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EC2Home()
            EC2Home()
                .previewDevice("iPhone 12 mini")
            EC2Home()
                .previewDevice("iPhone 8")
        }
    }
}

struct EC2Category: Hashable{
    let index : Int
    let name : String
    
    init(_ index: Int, _ name : String){
        self.index = index
        self.name = name
    }
}
