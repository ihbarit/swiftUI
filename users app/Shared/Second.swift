//
//  Second.swift
//  users app
//
//  Created by MCNMACBOOK01 on 14/06/22.
//

import SwiftUI

struct Second: View {
    var result : Users
    var body: some View {
        Text(result.name)
        Text(result.email)
    }
}

struct Second_Previews: PreviewProvider {
    static var previews: some View {
        Second(result:.init(name: "", email: ""))
    }
}
