//
//  CenterModifier.swift
//  Africa
//
//  Created by bui khac lam on 30/06/2023.
//

import SwiftUI

struct CenterModifier : ViewModifier{
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
