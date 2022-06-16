//
//  blue.swift
//  tab
//
//  Created by MCNMACBOOK01 on 15/06/22.
//

import SwiftUI

struct blue: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(Color.blue)
            Text("3")
                .fontWeight(.bold)
                .font(.system(size: 90))
                .foregroundColor(Color.white)
        }
    }
}

struct blue_Previews: PreviewProvider {
    static var previews: some View {
        blue()
    }
}
