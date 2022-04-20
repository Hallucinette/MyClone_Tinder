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
