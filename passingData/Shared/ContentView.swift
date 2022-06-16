//
//  ContentView.swift
//  Shared
//
//  Created by MCNMACBOOK01 on 15/06/22.
//

import SwiftUI

struct Video{
    var image : String
    var title : String
    var releaseDate : String
    var viewCount : String
    var url : URL
}

let videoList = [
    Video(image: "image1", title: "SwiftUI Basic Tutorial", releaseDate: "2 Dec 2020",viewCount: "209,183",url: URL(string: "https://www.youtube.com/watch?v=HXoVSbwWUIk&list=PL8seg1JPkqgHyWCBHwXGmfysQpEQTfC3z&index=1")!),
    Video(image: "image2", title: "SwiftUI List with custom cell and passing Data",releaseDate: " 28 Apr 2021",viewCount: "48,967",url: URL(string: "https://www.youtube.com/watch?v=k5rupivxnMA&list=PL8seg1JPkqgHyWCBHwXGmfysQpEQTfC3z&index=2")!),
    Video(image: "image3", title: "SwiftUi intro to MVVM",releaseDate: "28 May 2021",viewCount: "42,521",url: URL(string: "https://www.youtube.com/watch?v=FwGMU_Grnf8&list=PL8seg1JPkqgHyWCBHwXGmfysQpEQTfC3z&index=3")!),
    Video(image: "image4", title: "SwiftUI Tic Tac Toe Game",releaseDate: "30 Apr 2021",viewCount: "31,588",url: URL(string: "https://www.youtube.com/watch?v=MCLiPW2ns2w&list=PL8seg1JPkqgHyWCBHwXGmfysQpEQTfC3z&index=4")!),
    Video(image: "image5", title: "SwiftUI User Location Map", releaseDate: "26 Aug 2021",viewCount: "22,066",url: URL(string: "https://www.youtube.com/watch?v=hWMkimzIQoU&list=PL8seg1JPkqgHyWCBHwXGmfysQpEQTfC3z&index=5")!),
    Video(image: "image6", title: "SwiftUi form / textField", releaseDate: "5 May 2021",viewCount: "21,812",url: URL(string: "https://www.youtube.com/watch?v=m0QQ-hWs8fc&list=PL8seg1JPkqgHyWCBHwXGmfysQpEQTfC3z&index=6")!),
    Video(image: "image7", title: "SwiftUi segment control", releaseDate: "12 Mar 2021",viewCount: "12,749",url: URL(string: "https://www.youtube.com/watch?v=iqKmgs_0VPE&list=PL8seg1JPkqgHyWCBHwXGmfysQpEQTfC3z&index=7")!),
    Video(image: "image8", title: "SwiftUi navigationBar button",releaseDate: "26 Mar 2021",viewCount: "18,261",url: URL(string: "https://www.youtube.com/watch?v=sWhoAXjiOVA&list=PL8seg1JPkqgHyWCBHwXGmfysQpEQTfC3z&index=8")!)
]
struct ContentView: View {
    var body: some View {
        NavigationView{
            List(){
                ForEach(0..<videoList.count) { index in
                    NavigationLink {
                        DetailView(video: videoList[index])
                    } label: {
                        HStack{
                            Image(videoList[index].image)
                                .resizable()
                                .frame(width: 70, height: 70)
                                .cornerRadius(12)
                            VStack(alignment: .leading, spacing: 8){
                                Text(videoList[index].title)
                                    .fontWeight(.medium)
                                Text(videoList[index].releaseDate)
                                    .foregroundColor(Color.secondary)
                                    .font(.caption)
                            }
                            .padding(.all)
                            
                        }
                    }

                }
             
            }
            .listStyle(.plain)
            .navigationTitle(Text("Sean Allen Video "))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
