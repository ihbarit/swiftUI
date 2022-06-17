//
//  ContentView.swift
//  Shared
//
//  Created by MCNMACBOOK01 on 16/06/22.
//


//poster path https://image.tmdb.org/t/p/original\(item.poster_path)
import SwiftUI

struct ContentView: View {
    
    var columns = [
        GridItem(.fixed(190)),
       GridItem(.fixed(190))
//        GridItem(.adaptive(minimum: .infinity, maximum: .infinity)),
//        GridItem(.adaptive(minimum: .infinity, maximum: .infinity))
    ]
    @State var result : [Movie] = []
    var body: some View {
        NavigationView{
            
            ScrollView{
                
                LazyVGrid(columns: columns, content: {
                    ForEach(result, id:\.self){ item in
                        NavigationLink {
                            MovieDetailedView(movie: item)
                        } label: {
                            VStack(alignment: .leading, spacing: 10){
                                AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/original\(item.poster_path)")) { image in
                                    image.resizable()
                                } placeholder: {
                                    Color.white
                                }
                                .frame(width: 190, height: 300)
                                .cornerRadius(12)
                                .shadow(color: Color.gray, radius: 5, x: 5, y:5)
                                Text(item.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.black)
                                    .lineLimit(1)
                                    .font(.system(size: 17))
                                HStack{
                                    Text(item.release_date)
                                        .font(.system(size: 12))
                                        .foregroundColor(Color.black)
                                    HStack(){
                                        Image(systemName: "eye.fill")
                                            .foregroundColor(Color.gray)
                                        Text("\(forTrailingZero(temp:Double(item.vote_average)))/10")
                                            .font(.system(size: 12))
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.black)
                                    }
                                }

                            }
                            .padding(.all, 8)
                           
                            
                            
                        }

                    }
                })
            }
      
            .navigationTitle(Text("Popular Kids Movies"))
        }
        .onAppear(perform: fetchData)
    }
    
    
    
    func forTrailingZero(temp: Double) -> String {
        let tempVar = String(format: "%g", temp)
        return tempVar
    }
    
    func fetchData(){
        let url = URL(string: "https://api.themoviedb.org/3/discover/movie?certification_country=US&certification.lte=G&sort_by=popularity.desc&api_key=3775a9ddfcccf51c01dc3b8e109ecb21")
        URLSession.shared.dataTask(with: url!) { data, response, error in
            if error == nil{
                do{
                    let jsonData = try JSONDecoder().decode(Results.self, from: data!)
                        result = jsonData.results
                    print(result)
                    
                }
                catch{
                    print("Error")
                }
            }
        }.resume()
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
