//
//  Text+Font.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 18/03/21.
//

import SwiftUI

extension Text{
    
    func terminaText(with size: Int = 20, weight: TextWeight = .regular) -> some View{
        switch weight {
        
        case .regular:
            return self.font(.custom("Termina-Regular", size: CGFloat(size)))
        case .light:
            return self.font(.custom("Termina-Light", size: CGFloat(size)))
        case .demi:
            return self.font(.custom("Termina-Demi", size: CGFloat(size)))
        }
    }
    
    enum TextWeight {
        case regular
        case light
        case demi
    }
}
