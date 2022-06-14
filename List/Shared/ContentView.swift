//
//  ContentView.swift
//  Shared
//
//  Created by MCNMACBOOK01 on 10/06/22.
//

import SwiftUI

var names = ["Amit", "Abhi","Ram","ishika","vijay","ravi", "Abhishek"]
struct ContentView: View {
    var body: some View {
        List{
            ForEach(names , id : \.self){
                Text(($0))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
