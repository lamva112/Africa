//
//  CreditsView.swift
//  Africa
//
//  Created by bui khac lam on 30/06/2023.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 120,height: 128)
            Text("""
Coppyright @ Lam Bui
All right reserved
Better App <3 Less Code
""")
        }
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
