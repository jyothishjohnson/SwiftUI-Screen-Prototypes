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
        GridItem(.adaptive(minimum: 210))
    ]
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: layout, alignment: .center, spacing: 20) {
                ForEach(data, id: \.self) { _ in
                    HomePortraitProductView(imageName: images.randomElement()!)
                }
            }
        }
    }
}

struct PLPView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PLPView()
        }
    }
}
