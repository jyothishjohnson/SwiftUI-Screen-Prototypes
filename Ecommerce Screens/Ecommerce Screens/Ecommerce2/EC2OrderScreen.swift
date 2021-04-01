//
//  EC2OrderScreen.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 30/03/21.
//

import SwiftUI

enum EC2OrderStatus : Int {
    case orderRecieved
    case preparing
    case outForDelivery
    case delivered
    
    var statusDesc : String {
        switch self {
        
        case .orderRecieved:
            return "Order recieved"
        case .preparing:
            return "Preparing food"
        case .outForDelivery:
            return "Out for delivery"
        case .delivered:
            return "Delivered"
        }
    }
}

struct EC2OrderScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var currentStatus : EC2OrderStatus = .preparing

    var body: some View {
        ScrollView {
            VStack{
                HStack(alignment: .center, spacing: 0){
                    
                    HStack {
                        VStack {
                            Image(systemName: "arrow.backward")
                                .resizable()
                                .frame(width: 12, height: 12, alignment: .center)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                            
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .clipShape(Circle())
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                        
                        Spacer()
                    }
                    
                    
                    VStack{
                        
                        HStack{
                            Text("Order Info")
                                .terminaText(with: 14,weight: .demi)
                                .foregroundColor(.white)
                                .padding()
                        }
                    }
                    VStack{
                        Rectangle()
                            .fill(Color.ec2bgcolor)
                    }
                }
                
                VStack{
                    Text("Order Number")
                        .terminaText(with:14)
                        .foregroundColor(.gray)
                    Text("456")
                        .terminaText(with: 50, weight: .demi)
                        .padding()
                    Text("will be ready in 5 mins")
                        .terminaText(with: 18, weight: .regular)
                        .foregroundColor(.gray)

                }
                .foregroundColor(.white)
                .padding()
                .padding(.top,24)
                
                EC2OrderStatusView(currentStatus: currentStatus)
                    .padding(.vertical)
                    .padding(.horizontal,10)
                
                HStack {
                    Spacer()
                    Text("\(currentStatus.statusDesc)")
                        .foregroundColor(.white)
                        .terminaText(with: 20, weight: .demi)
                    Spacer()
                }
                
                EC2OrderList()
                    .padding(.leading,10)
                    .padding(10)
                
            }
        }
        .background(Color.ec2bgcolor.edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea([.bottom,.leading,.trailing])
        
    }
}

struct EC2OrderScreen_Previews: PreviewProvider {
    static var previews: some View {
        EC2OrderScreen()
    }
}
