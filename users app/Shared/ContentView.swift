//
//  ContentView.swift
//  Shared
//
//  Created by MCNMACBOOK01 on 14/06/22.
//

import SwiftUI

struct Users : Decodable, Hashable{
    var name : String
    var email : String
}

class ViewModel :ObservableObject{
    @Published var users : [Users] = []
    func fetchData(){
        let url = URL(string: "https://jsonplaceholder.typicode.com/users")
        URLSession.shared.dataTask(with: url!) { data, response, error in
            do{
                let users = try JSONDecoder().decode([Users].self, from: data!)
                DispatchQueue.main.async {
                    self.users = users
                }
            }catch{
                print("Error")
            }
            
        }.resume()
    }
}

struct ContentView: View {
    @StateObject var viewmodel = ViewModel()
    var body: some View {
        NavigationView{
            List{
                ForEach(viewmodel.users , id: \.self){user in
                    NavigationLink {
                       Second(result: user)
                    } label: {
                        Text(user.name)
                    }

                    
                }
            }
          
                .navigationTitle("Users Data")
        }
        .onAppear {
            viewmodel.fetchData()
        }

    }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
