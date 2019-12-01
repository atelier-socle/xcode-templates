//
//  ___VARIABLE_sceneName___ViewModel.swift
//  Sample
//
//  Created by Tom Baranes on 16/11/2019.
//  Copyright (c) 2019 Atelier Socle. All rights reserved.
//
//  This file was generated using a template from the AtelierSocle team
//

import Foundation

/// view model
final class ___VARIABLE_sceneName___ViewModel: ObservableObject {
    #warning("use L10n instead of hardcoding string")
    let addName = "Add name"
    let navigationBarTitle = "L10n.___VARIABLE_sceneName___.NavigationBar.title"
    @Published var names = [String]()
}

// MARK: - Scenes

extension ___VARIABLE_sceneName___ViewModel {

    var nextView: ContentView? {
        ContentView()
    }

}
