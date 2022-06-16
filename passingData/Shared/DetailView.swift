//
//  DetailView.swift
//  passingData
//
//  Created by MCNMACBOOK01 on 15/06/22.
//

import SwiftUI
struct DetailView: View {
    var video : Video
    var body: some View {
        VStack(spacing:10){
            Spacer()
            Image(video.image)
                .resizable()
                .frame(width: 300, height: 300)
                .cornerRadius(12)
                .shadow(radius: 15)
            Text(video.title)
                .font(.title2)
                .fontWeight(.bold)
                .lineLimit(2)
                .frame(width:350)
            HStack(spacing:100){
                Text(video.releaseDate)
                    .font(.system(size: 13))
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.system(size: 13))
            }
            Spacer()

            Link(destination: video.url) {
                Text("Watch")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .frame(width: 120, height: 40)
                    .foregroundColor(Color.white)
                    .background(Color.red)
                    .cornerRadius(15)
                    .shadow(radius: 12)
            }
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(video: videoList[0])
    }
}
