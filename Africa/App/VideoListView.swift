//
//  VideoListView.swift
//  Africa
//
//  Created by bui khac lam on 11/06/2023.
//

import SwiftUI

struct VideoListView: View {
    //MARK: - POPERTIES
    
    @State var videos:[Video] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItem(video: item)
                            .padding(.vertical,8)
                    }
                }//:LOOP
            }//: LIST
            .listStyle(InsetListStyle())
            .navigationBarTitle("Videos",displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(
                        action: {
                            videos.shuffle()
                            hapticImpact.impactOccurred()
                        }
                    ){
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }//: NAVIGATION
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
