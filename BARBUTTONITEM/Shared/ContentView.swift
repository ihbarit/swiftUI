//
//  ContentView.swift
//  Shared
//
//  Created by MCNMACBOOK01 on 15/06/22.
//

import SwiftUI

struct ContentView: View {
    @State var name : String = ""
    @State var email : String = ""
    @State var company : String = ""
    var body: some View {
        NavigationView{
            VStack{
                Image("foto-sushi-6anudmpILw4-unsplash")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .padding()
                Form{
                    Section(header:Text("User profile Info")){
                        TextField("Enter Username", text: $name)
                        TextField("Enter Useremail", text: $email)
                        TextField("Enter Company Name", text: $company)
                    }

                    
                }

            }
            .navigationTitle("User Profile")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Image(systemName: "square.and.arrow.down.fill")
                        .foregroundColor(Color.red)
                    
                }
         
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
