//
//  AnimalListItemView.swift
//  Africa
//
//  Created by bui khac lam on 15/06/2023.
//

import SwiftUI

struct AnimalListItemView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    // MARK: -BODY
    var body: some View {
        HStack (alignment: .center, spacing: 16){
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90,height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(alignment: .leading, spacing: 8){
                Text(animal.image)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.description)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing,8)
            }// VSTACK
        }// HSTACK
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalListItemView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
