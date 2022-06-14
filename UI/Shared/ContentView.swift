//
//  ContentView.swift
//  Shared
//
//  Created by MCNMACBOOK01 on 10/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(0..<50) { index in
                    HStack(spacing: 20){
                        Image(systemName: "keyboard")
                            .font(.system(size: 80))
                        VStack(spacing : 10){
                            Text("name is everything")
                            Text("Date")
                        }
                    }
                }
            }
            .navigationTitle("List is here")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
