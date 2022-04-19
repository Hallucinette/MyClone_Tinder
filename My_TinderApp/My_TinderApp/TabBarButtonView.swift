//
//  TabBarButtonView.swift
//  My_TinderApp
//
//  Created by Amélie Pocchiolo on 19/04/2022.
//

import SwiftUI
 
// here we have the different chose of my button. If i want one of them, i just need call him
enum TabBarButtonType: String{
    case fire = "flame.fill"
    case star = "star.fill"
    case message = "message.fill"
    case profile = "person.fill"
}
struct TabBarButtonView: View {

    var type: TabBarButtonType
    var action: () -> Void
    
    //Here we have the basic button of my tab Bar
    var body: some View {
        Button(action: {action() }, label: {
            Image(systemName: type.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.gray.opacity(0.5))
        })
    }
}

struct TabBarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButtonView(type: .profile) {
            print("Test")
        }
    }
}
