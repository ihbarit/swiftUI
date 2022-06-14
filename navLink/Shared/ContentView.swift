//
//  ContentView.swift
//  Shared
//
//  Created by MCNMACBOOK01 on 14/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{

            List{
                ForEach(0..<100) { index in
                    NavigationLink {
                        Text("Hello")
                    } label: {
                        Image(systemName: "phone")
                        Text("Phone")
                    }

                }
            }
            
            
            .navigationTitle(Text("Navigation Link Demo"))
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
