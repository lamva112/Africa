//
//  HeadingView.swift
//  Africa
//
//  Created by bui khac lam on 21/06/2023.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - POPERTIES
    var headingImage: String
    var headingText: String
    
    var body: some View {
        HStack {
          Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
