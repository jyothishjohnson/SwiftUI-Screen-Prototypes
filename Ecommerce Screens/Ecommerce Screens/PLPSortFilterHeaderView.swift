//
//  PLPSortFilterHeaderView.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 17/03/21.
//

import SwiftUI

struct PLPSortFilterHeaderView: View {
    var body: some View {
        HStack{
            Spacer()
            HStack{
                Image(systemName: "slider.vertical.3")
                Text("Filter")
                    .font(.title3)
                    .fontWeight(.thin)
            }
            .padding(10)
            .frame(minWidth: 170)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(0xEFEFEF), lineWidth: 1)
            )
            
            Spacer()
            
            HStack{
                Image(systemName: "arrow.up.arrow.down")
                Text("Sort By")
                    .font(.title3)
                    .fontWeight(.thin)
            }
            .padding(10)
            .frame(minWidth: 170)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(0xEFEFEF), lineWidth: 1)
            )
            Spacer()
        }
        .frame(height: 56)
        .padding(.top,10)
    }
}

struct PLPSortFilterHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PLPSortFilterHeaderView()
            .previewLayout(.sizeThatFits)
    }
}
