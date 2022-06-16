//
//  red.swift
//  tab
//
//  Created by MCNMACBOOK01 on 15/06/22.
//

import SwiftUI

struct red: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(Color.red)
            Text("1")
                .fontWeight(.bold)
                .font(.system(size: 90))
                .foregroundColor(Color.white)
        }
    }
}

struct red_Previews: PreviewProvider {
    static var previews: some View {
        red()
    }
}
