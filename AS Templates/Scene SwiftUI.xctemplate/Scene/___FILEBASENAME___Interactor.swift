//
//  ___VARIABLE_sceneName___Interactor.swift
//  Sample
//
//  Created by Tom Baranes on 16/11/2019.
//  Copyright (c) 2019 Atelier Socle. All rights reserved.
//
//  This file was generated using a template from the AtelierSocle team
//

import Foundation

final class ___VARIABLE_sceneName___Interactor {

    // MARK: Properties

    private weak var presenter: ___VARIABLE_sceneName___InteractorDelegate?

    // MARK: Life Cycle

    init(presenter: ___VARIABLE_sceneName___InteractorDelegate) {
        self.presenter = presenter
    }

}

// MARK: - Events

extension ___VARIABLE_sceneName___Interactor {

    func subscribe() {
        /// Subscribe to notifications, kvo, ...
    }

    func unsubscribe() {
        /// Remove notifications, kvo, ...
    }

}

// MARK: - ___VARIABLE_sceneName___BusinessLogic

extension ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___InteractorLogic {

    func fetchName() {
        DispatchQueue.global(qos: .background).async { [weak self] in
            let url = URL(string: "https://www.random.org/strings/?num=1&len=10&upperalpha=on&loweralpha=on&unique=off&format=plain")!
            let name = try! String(contentsOf: url)
            DispatchQueue.main.async { [weak self] in
                self?.presenter?.didFetch(name: name)
            }
        }
    }

}
