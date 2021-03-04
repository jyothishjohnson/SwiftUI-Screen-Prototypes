//
//  File.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 04/03/21.
//

import SwiftUI

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
