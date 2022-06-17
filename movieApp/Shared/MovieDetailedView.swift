//
//  MovieDetailedView.swift
//  movieApp
//
//  Created by MCNMACBOOK01 on 16/06/22.
//

import SwiftUI

struct MovieDetailedView: View {
    var movie : Movie
    var body: some View {
        
            ZStack{
                VStack(alignment: .center, spacing: 20){
                    Spacer()
                    AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/original\(movie.poster_path)")) { image in
                        image.resizable()
                    } placeholder: {
                        Color.white
                    }
                    .frame(width: 350, height: 400)
                    .cornerRadius(12)
                    .shadow(color: Color.gray, radius: 5, x: 5, y:5)
                    
                    Text(movie.title)
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                    
                    HStack(spacing : 100){
                        
                        Text(movie.release_date)
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                        
                        HStack{
                                Image(systemName: "eye.fill")
                                    .foregroundColor(Color.black)
                                    .font(.system(size: 15))
                                Text("\(forTrailingZero(temp:Double(movie.vote_average)))/10")
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                        }
                        .frame(alignment : .leading)

                    }
                    Text("Overview")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .frame(alignment: .leading)
                    Text(movie.overview)
                        .font(.system(size: 15))
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                }
            }
            .ignoresSafeArea()
        Spacer()
        Spacer()
    }
    
    func forTrailingZero(temp: Double) -> String {
        let tempVar = String(format: "%g", temp)
        return tempVar
    }
}

struct MovieDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailedView(movie: Movie(title: "", release_date: "", poster_path: "", vote_average: 0.0, overview: ""))
    }
}
