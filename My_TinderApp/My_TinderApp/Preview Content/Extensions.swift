//
//  Extensions.swift
//  My_TinderApp
//
//  Created by Amélie Pocchiolo on 19/04/2022.
//

import SwiftUI


// permet de tranformer une view.

extension View {
    @ViewBuilder
    func `if`<Transform: View>(
        _ condition: Bool,
        transform: (Self) -> Transform
        ) -> some View{
        if condition {
            transform(self)
        } else {
            self
        }
    }
}

// ici nous pouvons changer tout les couleurs des textes
extension Color {
    static let textPrimary = Color.gray.opacity(0.9)
    static let textSecondery = Color.gray.opacity(0.6)
    static let textTitle = Color.black.opacity(0.8)
    static let defaultBackground = Color(.systemGray6).opacity(0.35)
}
