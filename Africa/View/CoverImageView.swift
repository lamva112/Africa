//
//  CoverImageView.swift
//  Africa
//
//  Created by bui khac lam on 11/06/2023.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - PROPERTIES
    let coverImage: [CoverImage] =
    Bundle.main.decode("covers.json")
    // MARK: - BODY
    
    
    var body: some View {
        TabView {
            ForEach(coverImage) { item in
                Image(item.name)
                    .resizable()
                .scaledToFit()
            }//:LOOP
        }//:TAB
        .tabViewStyle(PageTabViewStyle())

    }
    
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
    }
}
