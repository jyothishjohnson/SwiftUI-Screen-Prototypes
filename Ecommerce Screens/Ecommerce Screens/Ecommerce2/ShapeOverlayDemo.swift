//
//  ShapeOverlayDemo.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 25/03/21.
//

import SwiftUI

struct ShapeOverlayDemo: View {
    var body: some View {
        Image("ec2_p_1")
            .resizable()
            .scaledToFit()
            .clipShape(

                AngledRect(percent: 20)
                                    
            )
    }
}

struct ShapeOverlayDemo_Previews: PreviewProvider {
    static var previews: some View {
        ShapeOverlayDemo()
            .previewLayout(.sizeThatFits)
    }
}
