//
//  ___VARIABLE_sceneName___SceneBuilder.swift
//  Sample
//
//  Created by Tom Baranes on 16/11/2019.
//  Copyright (c) 2019 Atelier Socle. All rights reserved.
//
//  This file was generated using a template from the AtelierSocle team
//

import SwiftUI

struct ___VARIABLE_sceneName___SceneBuilder {
    var view: some View {
        let presenter = ___VARIABLE_sceneName___Presenter()
        let view = ___VARIABLE_sceneName___View(presenter: presenter, viewModel: presenter.viewModel)
        return view
    }
}
