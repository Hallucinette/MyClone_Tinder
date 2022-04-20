//
//  RoundedImage.swift
//  My_TinderApp
//
//  Created by Amélie Pocchiolo on 19/04/2022.
//

import SwiftUI
import KingfisherSwiftUI //"bibliotheque ? -> permet de passer l'url de l'image

struct RoundedImage: View {
    var url: URL?
    
    var body: some View {
        KFImage(url)
    }
}

struct RoundedImage_Previews: PreviewProvider {
    static var previews: some View {
        
        //permet, apres l avoir passer dans une variable optionel, d'utiliser directement l'image de l'url sans devoir la telecharger en dure dans le code de l'application.
        RoundedImage(url: URL(string: "https://picsum.photos/400"))
    }
}
