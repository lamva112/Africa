//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by bui khac lam on 23/06/2023.
//

import SwiftUI

struct ExternalWeblinkView: View {
    
    //MARK: - PROPERTIES
    let animal: Animal
    
    //MARK: - BODY
    
    var body: some View {
        Group {
                    HStack {
                        Image(systemName: "globe")
                        Text("WiKipedia")
                        Spacer()

                        Group {
                            Image(systemName: "arrow.up.right.square")

                            Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://vi.wikipedia.org/wiki/Trang_Ch%C3%ADnh")!)
                        }
                        .foregroundColor(.accentColor)
                    }
                }
            }
    }


struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWeblinkView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
