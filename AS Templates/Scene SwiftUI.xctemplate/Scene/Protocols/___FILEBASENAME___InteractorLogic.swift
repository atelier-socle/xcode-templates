//
//  ___VARIABLE_sceneName___InteractorLogic.swift
//  Sample
//
//  Created by Tom Baranes on 16/11/2019.
//  Copyright (c) 2019 Atelier Socle. All rights reserved.
//
//  This file was generated using a template from the AtelierSocle team
//

import Foundation

/// ___VARIABLE_sceneName___ business logic protocol
protocol ___VARIABLE_sceneName___InteractorLogic {

    /// Interactor initializer
    init(presenter: ___VARIABLE_sceneName___InteractorDelegate)

    /// subscribe to notifications
    func subscribe()
    /// unsubscribe to notifications
    func unsubscribe()

    /// Fetch data
    func fetchName()
}
