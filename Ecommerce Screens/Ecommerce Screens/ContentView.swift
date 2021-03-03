//
//  ContentView.swift
//  Ecommerce Screens
//
//  Created by jyothish.johnson on 03/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                Text("The First Tab")
                    .tabItem {
                        Image("home")
                        Text("Home")
                    }
                Text("Another Tab")
                    .tabItem {
                        Image("wishlist")
                        Text("Wishlist")
                    }
                Text("The Last Tab")
                    .tabItem {
                        Image("cart")
                        Text("Cart")
                    }
                Text("The Last Tab")
                    .tabItem {
                        Image("profile")
                        Text("Profile")
                    }
            }
            .font(.headline)
            .accentColor(.black)
            .onAppear() {
                UITabBar.appearance().barTintColor = .white
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
