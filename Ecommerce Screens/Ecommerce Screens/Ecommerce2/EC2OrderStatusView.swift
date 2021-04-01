//
//  EC2OrderStatusView.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 01/04/21.
//

import SwiftUI

struct EC2OrderStatusView: View {
    
    @State var currentStatus : EC2OrderStatus
    
    var purpleGradient : LinearGradient = LinearGradient(gradient: Gradient(colors: [Color.ec2purplecolor, Color.gray]), startPoint: .leading, endPoint: .trailing)
    
    var purple : LinearGradient = LinearGradient(gradient: Gradient(colors: [Color.ec2purplecolor]), startPoint: .leading, endPoint: .trailing)
    
    var gray : LinearGradient = LinearGradient(gradient: Gradient(colors: [Color.gray]), startPoint: .leading, endPoint: .trailing)
    
    var body: some View {
        HStack(spacing:0){
            ZStack {
                Circle()
                    .frame(width: 24, height: 24, alignment: .center)
                    .foregroundColor(.ec2purplecolor)
                Circle()
                    .frame(width: 10, height: 10, alignment: .center)
                    .foregroundColor(currentStatus.rawValue == 0 ? .white : .ec2purplecolor)
            }
            Rectangle()
                .fill(currentStatus.rawValue > 0 ? purple : purpleGradient)
                .frame(height:6)
                
            ZStack {
                Circle()
                    .fill(currentStatus.rawValue >= 1 ? purple : gray)
                    .frame(width: 24, height: 24, alignment: .center)
                Circle()
                    .frame(width: 10, height: 10, alignment: .center)
                    .foregroundColor(currentStatus.rawValue < 1 ? .gray : currentStatus.rawValue == 1 ? .white : .ec2purplecolor)
            }
            Rectangle()
                .fill(currentStatus.rawValue >= 2 ? purple : currentStatus.rawValue >= 1 ? purpleGradient : gray)
                .frame(height:6)
            
            ZStack {
                Circle()
                    .fill(currentStatus.rawValue >= 2 ? purple : gray)
                    .frame(width: 24, height: 24, alignment: .center)
                Circle()
                    .frame(width: 10, height: 10, alignment: .center)
                    .foregroundColor(currentStatus.rawValue < 2 ? .gray : currentStatus.rawValue == 2 ? .white : .ec2purplecolor)
            }
            Rectangle()
                .fill(currentStatus.rawValue >= 3 ? purple : currentStatus.rawValue >= 2 ? purpleGradient : gray)
                .frame(height:6)
            ZStack {
                Circle()
                    .fill(currentStatus == .delivered ? purple : gray)
                    .frame(width: 24, height: 24, alignment: .center)
                Circle()
                    .frame(width: 10, height: 10, alignment: .center)
                    .foregroundColor(currentStatus.rawValue < 3 ? .gray : currentStatus.rawValue == 3 ? .white : .ec2purplecolor)
            }
        }
        .background(Color.ec2bgcolor)
        .padding()
    }
}

struct EC2OrderStatusView_Previews: PreviewProvider {
    static var previews: some View {
        EC2OrderStatusView(currentStatus: .preparing)
    }
}
 
