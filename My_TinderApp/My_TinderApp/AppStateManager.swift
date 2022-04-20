//
//  AppStateManager.swift
//  My_TinderApp
//
//  Created by Amélie Pocchiolo on 19/04/2022.
//

// Folder for all information go change with the app like : acces, used, changed, updated etc...

import Foundation

class AppStateManager: ObservableObject {
    @Published var selectedTab: TabBarButtonType = .fire
    
}
