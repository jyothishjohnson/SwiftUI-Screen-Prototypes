//
//  PLPView.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 11/03/21.
//

import SwiftUI

struct PLPView: View {
    
    let data = Array(1...1000).map{ "Item \($0)"}
    let images = Array(0...9).map{ "img\($0)"}
    let layout = [
        GridItem(.adaptive(minimum: (UIScreen.main.bounds.width / 2) - 20))
    ]
    
    var body: some View {
        VStack(spacing: 4) {
            PLPSortFilterHeaderView()
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: layout, alignment: .center, spacing: 10) {
                    ForEach(data, id: \.self) { _ in
                        NavigationLink(destination: PDPView()){
                            HomePortraitProductView(imageName: images.randomElement()!)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                
            }
            .onAppear{
                print(UIScreen().bounds.width)
            }
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct PLPView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                PLPView()
            }
            
            NavigationView {
                PLPView()
            }
            .previewDevice("iPhone 8")
            
            NavigationView {
                PLPView()
            }
            .previewDevice("iPhone 12 mini")
        }
    }
}
