//
//  MainView.swift
//  My_TinderApp
//
//  Created by Amélie Pocchiolo on 19/04/2022.
//
import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack{
            Color(.systemGray6)
                .opacity(0.35)
                .edgesIgnoringSafeArea(.vertical)
            
            VStack{
                HStack{
                    // Here we have the Tab bar buttons and he have his struct in TabBarButtonView. 
                    TabBarButtonView(type: .fire) {
                        //
                    }
                    
                    TabBarButtonView(type: .star) {
                        //
                    }
                    TabBarButtonView(type: .message) {
                        //
                    }
                    TabBarButtonView(type: .profile) {
                        //
                    }
                }
                .frame(height: 100)
                Spacer()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
