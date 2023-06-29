//
//  AnimalDetailView.swift
//  Africa
//
//  Created by bui khac lam on 21/06/2023.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PORPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    
    
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment: .center, spacing: 20) {
                // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                //TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical,8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y:26)
                    )
                
                //HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //GALLERY
                
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // FACTS
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    
                    InsectFactView(animal: animal)
                    
                }
                .padding(.horizontal)
                
                // DESCRIPTION
                Group{
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                // MAP
                Group{
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    
                    insetMapView()
                }
                .padding(.horizontal)
                
                // LINKS
                
                Group{
                    HeadingView(headingImage: "books.vertical", headingText: "Learn more")
                    
                    ExternalWeblinkView(animal: animal)
                }
                .padding(.horizontal)
            }//: VSTACK
            .navigationBarTitle("Learn about \(animal.name)",displayMode: .inline)
        }
        
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
    }
}
