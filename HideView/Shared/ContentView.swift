//
//  ContentView.swift
//  Shared
//
//  Created by MCNMACBOOK01 on 13/06/22.
//

import SwiftUI

struct ContentView: View {
    @State var isHide = false
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.blue, Color.white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Cupertino, CA")
                    .padding()
                    .foregroundColor(Color.white)
                    .font(.system(size: 40))
                    .padding()
                
                VStack{
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                    .resizable()
                    .frame(width: 200, height: 150)
                    Text("76°")
                        .foregroundColor(Color.white)
                        .font(.system(size:80))
                        .fontWeight(.semibold)
                }
                .padding(.bottom, 40 )
                HStack(spacing : 15){
                    VStack(spacing : 15){
                        Text("TUE")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .font(.system(size: 45))
                        Text("76°")
                            .foregroundColor(Color.white)
                            .fontWeight(.semibold)
                            .font(.system(size: 30))
                    }
                    
                    VStack(spacing : 15){
                        Text("WED")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                        Image(systemName: "sun.max.fill")
                            .renderingMode(.original)
                            .font(.system(size: 45))
                        Text("78°")
                            .foregroundColor(Color.white)
                            .fontWeight(.semibold)
                            .font(.system(size: 30))
                    }
                    
                    VStack(spacing : 15){
                        Text("THU")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                      Image(systemName: "sunrise.fill")
                            .renderingMode(.original)
                            .font(.system(size: 45))
                        Text("60°")
                            .foregroundColor(Color.white)
                            .fontWeight(.semibold)
                            .font(.system(size: 30))                    }
                    
                    VStack(spacing : 15){
                        Text("FRI")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                        Image(systemName: "sunset.fill")
                            .renderingMode(.original)
                            .font(.system(size: 45))
                        Text("72°")
                            .foregroundColor(Color.white)
                            .fontWeight(.semibold)
                            .font(.system(size: 30))
                    }
                    
                    VStack(spacing : 15){
                        Text("SAT")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .font(.system(size: 45))
                        Text("65°")
                            .foregroundColor(Color.white)
                            .fontWeight(.semibold)
                            .font(.system(size: 30))
                    }
                }
                
                Spacer()
                
                Button {
                    print("Tapped")
                } label: {
                    Text("Change Time Of Day")
                        .fontWeight(.bold)
                        .frame(width: 300, height: 40)
                        .foregroundColor(Color.blue)
                        .background(Color.white)
                        .cornerRadius(12)
                        .font(.system(size: 24))
                }
                Spacer()

                
            }
            
           
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
