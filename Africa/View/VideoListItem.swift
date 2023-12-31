//
//  VideoListItem.swift
//  Africa
//
//  Created by bui khac lam on 23/06/2023.
//

import SwiftUI

struct VideoListItem: View {
    // MARK: - PROPERTIES
    
    let video : Video
    
    // MARK: - BODY
    var body: some View {
        HStack {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
                
            }//ZSTACK
            VStack (alignment: .leading,spacing: 10){
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }

        }//HSTACK
        
        
    
    }
}

// MARK: - PREVIEW

struct VideoListItem_Previews: PreviewProvider {
    static let videos: [Video] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        VideoListItem(video: videos[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
