//
//  ___VARIABLE_sceneName___Presenter.swift
//  Sample
//
//  Created by Tom Baranes on 16/11/2019.
//  Copyright (c) 2019 Atelier Socle. All rights reserved.
//
//  This file was generated using a template from the AtelierSocle team
//

import UIKit

final class ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___PresenterLogic {

    // MARK: Properties

    private(set) var interactor: ___VARIABLE_sceneName___InteractorLogic?
    private(set) var viewModel = ___VARIABLE_sceneName___ViewModel()

    // MARK: Life Cycle

    init(interactor: ___VARIABLE_sceneName___InteractorLogic? = nil) {
        viewModel = ___VARIABLE_sceneName___ViewModel()
        self.interactor = interactor ?? ___VARIABLE_sceneName___Interactor(presenter: self)

        interactor?.subscribe()
    }

    deinit {
        interactor?.unsubscribe()
    }

}

// MARK: - ___VARIABLE_sceneName___PresenterLogic

extension ___VARIABLE_sceneName___Presenter {

    func fetchName() {
        viewModel.names.append("Loading...")
        interactor?.fetchName()
    }

}

// MARK: - ___VARIABLE_sceneName___InteractorDelegate

extension ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___InteractorDelegate {

    func didFetch(name: String) {
        let nameIndex = viewModel.names.firstIndex { $0 == "Loading..." }
        guard let index = nameIndex else {
            return
        }

        viewModel.names.remove(at: index)
        viewModel.names.insert(name, at: index)
    }

}
