//
//  ContentView.swift
//  Shared
//
//  Created by MCNMACBOOK01 on 15/06/22.
//

import SwiftUI

struct ContentView: View {
    @State var selectedColor : Color = .red
    var body: some View {
        NavigationView{
         
            Form{
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(selectedColor)
                
                ColorPicker("Pick the color for circle", selection: $selectedColor)
            }
            .navigationTitle(Text("Color Picker"))
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
