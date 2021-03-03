//
//  HomeScreenView.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 03/03/21.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        VStack {
            ZStack{
                HomeTopBannerView()
                    
                VStack{
                    Spacer()
                    PageControl()
                }
            }
            .frame(height: 144)
            .padding()
            Spacer()
            HStack {
                VStack{
                    Text("All")
                        .foregroundColor(.white)
                }
                .frame(width: 120, height: 72, alignment: .center)
                
                .background(Color.black)
                .cornerRadius(24)
            }
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
            
//            .previewLayout(.sizeThatFits)
    }
}

//MARK: - Page Control

struct PageControl : UIViewRepresentable{
    
    var currentIndex : Int = 0

    func makeUIView(context: Context) -> some UIView {
        
        let page = UIPageControl()
        page.currentPageIndicatorTintColor = .white
        page.numberOfPages = 3
        page.pageIndicatorTintColor = .lightGray
        
        return page
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let view = uiView as? UIPageControl {
            view.currentPage = currentIndex
        }
    }
    
}
