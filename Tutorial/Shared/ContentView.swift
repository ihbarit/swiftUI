//
//  ContentView.swift
//  Shared
//
//  Created by MCNMACBOOK01 on 10/06/22.
//

import SwiftUI

struct ContentView: View {
    @State var alertOn : Bool = false
    var body: some View {
        Button {
           alertOn = true
        } label: {
            Text("Tap me!")
                .padding()
                .frame(width: 250, height: 40)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(13)
                .shadow(color: .blue, radius: 13)
        }
        .alert("Important Message", isPresented: $alertOn) {
            Button("Cancel ", role: .cancel){}
            Button("Delete ", role: .destructive){}
            
        }message: {
            Text("There is a message")
        }
    

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
