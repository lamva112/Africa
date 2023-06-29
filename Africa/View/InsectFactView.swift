//
//  InsectFactView.swift
//  Africa
//
//  Created by bui khac lam on 22/06/2023.
//

import SwiftUI

struct InsectFactView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact,id: \.self){item in
                    Text(item)
                }
            }// TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148,idealHeight: 168,maxHeight: 180)
        }//: BOX
    }
}

struct InsectFactView_Previews: PreviewProvider {
    static let animals : [Animal] = Bundle.main.decode("animal.json")
    static var previews: some View {
        InsectFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
