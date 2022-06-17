//
//  ViewModel.swift
//  movieApp
//
//  Created by MCNMACBOOK01 on 16/06/22.
//

import Foundation

struct Movie : Decodable, Hashable{
    var title : String
    var release_date : String
    var poster_path : String
    var vote_average : Float
    var overview : String
}

struct Results : Decodable{
   var results : [Movie]
}
