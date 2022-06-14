//
//  second.swift
//  passData
//
//  Created by MCNMACBOOK01 on 14/06/22.
//

import SwiftUI


struct second: View {
    var img : String = ""
    var body: some View {
        Image(img)
            .resizable()
            .frame(width: 200, height: 200)
            .cornerRadius(50)

    }
}

struct second_Previews: PreviewProvider {
    static var previews: some View {
        second()
    }
}
