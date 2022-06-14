//
//  ContentView.swift
//  Shared
//
//  Created by MCNMACBOOK01 on 14/06/22.
//

import SwiftUI

var images = ["img1","img2","img3","img4","img5","img6","img7","img8",
              "img1","img2","img3","img4","img5","img6","img7","img8"]
struct ContentView: View {
    var body: some View {
 
        NavigationView{
            List{
                ForEach(images, id:\.self){image in
                    NavigationLink {
                        second()
                    } label: {
                        Image(image)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(50)
                    }
                }
            }

            .navigationTitle(Text("Users Here"))
        }


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
