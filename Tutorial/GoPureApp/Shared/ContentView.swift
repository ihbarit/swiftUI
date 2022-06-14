//
//  ContentView.swift
//  Shared
//
//  Created by MCNMACBOOK01 on 13/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            ScrollView{
                ZStack{
                    Color.gray
                        .frame(height:1000)
                    VStack(){
                        ZStack{
                            Color.white
                                .frame(height:410)
                            VStack(spacing: 12){
                                Image("patrick-fore-NnTQBkBkU9g-unsplash")
                                    .resizable()
                                    .frame(height:220)
                                Text("Premium Anjeer Big Size (250 Gm)")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 18))
                                .lineLimit(2)
                                .frame(width: 330, alignment: .leading)
                                
                                HStack(spacing:50){
                                    Text("From Go Pure")
                                        .font(.system(size: 12))
                                        .frame(width:200, alignment: .leading)
                                        .foregroundColor(Color.secondary)
                                    Button {
                                        //
                                    } label: {
                                        Text("ADD")
                                            .frame(width: 80, height: 25)
                                            .foregroundColor(Color.white)
                                            .background(Color.black)
                                    }
                                }
                                
                                HStack(spacing : 12){
                                    Text("₹279.30")
                                        .fontWeight(.semibold)
                                        .font(.system(size: 18))
                                    Text("|")
                                    
                                    Text("250 gm")
                                        .font(.system(size: 18))
                                }
                                .frame(width : 330, alignment: .leading)
                                
                                
                                HStack(spacing : 10){
                                    Text("Sale Price")
                                        .foregroundColor(Color.secondary)
                                    
                                    Text("₹399.00")
                                        .strikethrough()
                                    
                                    Text("Saved ₹119.70")
                                        .foregroundColor(Color.red)
                                        .fontWeight(.medium)

                                }
                                .frame(width : 330, alignment: .leading)
                                
                                HStack{
                                    Text("30% OFF")
                                        .frame(width: 100, height: 30)
                                        .background(Color.green)
                                        
                                }
                                .frame(width : 320 , alignment: .leading)
                                   
                                
                            }
                        }
                        .padding(.all, 10)
                        Spacer()
                    }
                    ZStack{
                        Color.white
                          
                    }
                    .frame(height:100)
                    .padding(.all, 10)
                   
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
