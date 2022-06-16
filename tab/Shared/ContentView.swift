//
//  ContentView.swift
//  Shared
//
//  Created by MCNMACBOOK01 on 15/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            red()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            green()
            
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            blue()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
