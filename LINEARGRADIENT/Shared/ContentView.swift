//
//  ContentView.swift
//  Shared
//
//  Created by MCNMACBOOK01 on 15/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Button {
                //
            } label: {
                Text("Linear Gradient")
                    .fontWeight(.semibold)
                    .frame(width: 300, height: 40)
                    .foregroundColor(Color.white)
                    .background(LinearGradient(colors: [Color.purple, Color.white], startPoint: .top, endPoint: .bottom))
                    .cornerRadius(14)
               }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
