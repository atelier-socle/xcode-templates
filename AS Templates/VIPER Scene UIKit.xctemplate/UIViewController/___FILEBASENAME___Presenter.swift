//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Atelier Socle Xcode Templates
//

import UIKit

final class ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___PresenterLogic {

    // MARK: Properties

    private(set) var interactor: ___VARIABLE_sceneName___InteractorLogic?
    private(set) var router: ___VARIABLE_sceneName___RouterLogic?
    private(set) weak var view: ___VARIABLE_sceneName___ViewDelegate?
    private(set) var viewModel: ___VARIABLE_sceneName___ViewModel

    private(set) var dataSource: ___VARIABLE_sceneName___TableViewDataSource!
    // swiftlint:disable:next weak_delegate
    private(set) var tableViewDelegate: ___VARIABLE_sceneName___TableViewDelegate!

    // MARK: Life Cycle

    init(view: ___VARIABLE_sceneName___ViewDelegate,
         interactor: ___VARIABLE_sceneName___InteractorLogic? = nil,
         router: ___VARIABLE_sceneName___RouterLogic? = nil) {
        self.view = view
        viewModel = ___VARIABLE_sceneName___ViewModel()
        self.interactor = interactor ?? ___VARIABLE_sceneName___Interactor(presenter: self)
        self.router = router ?? ___VARIABLE_sceneName___Router(presenter: self)
        dataSource = ___VARIABLE_sceneName___TableViewDataSource(delegate: self)
        tableViewDelegate = ___VARIABLE_sceneName___TableViewDelegate(delegate: self)

        interactor?.subscribe()
    }

    deinit {
        interactor?.unsubscribe()
    }

}

// MARK: - ___VARIABLE_sceneName___PresenterLogic

extension ___VARIABLE_sceneName___Presenter {

    func viewDidLoad() {
        view?.configureDefaultLabels(viewModel: viewModel)
    }

    func fetchNewName() {
        viewModel.isLoading = true
        viewModel.names.append("Loading...")
        interactor?.fetchNewName()
        view?.reloadNames(viewModel: viewModel)
    }

}

// MARK: - ___VARIABLE_sceneName___InteractorDelegate

extension ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___InteractorDelegate {

    func didFetch(name: String) {
        viewModel.isLoading = false
        let nameIndex = viewModel.names.firstIndex { $0 == "Loading..." }
        guard let index = nameIndex else {
            return
        }

        viewModel.names.remove(at: index)
        viewModel.names.insert(name, at: index)
        view?.reloadNames(viewModel: viewModel)
    }

}

// MARK: - ___VARIABLE_sceneName___RouterDelegate

extension ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___RouterDelegate {

}

// MARK: - ___VARIABLE_sceneName___TableViewCellDelegate

extension ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___TableViewCellDelegate {

    func executeButton() {
        print("button pressed")
    }

}

// MARK: - ___VARIABLE_sceneName___TableViewDataSourceDelegate

extension ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___TableViewDataSourceDelegate {

    var names: [String] {
        viewModel.names
    }

    var cellDelegate: ___VARIABLE_sceneName___TableViewCellDelegate {
        self
    }

}

// MARK: - ___VARIABLE_sceneName___TableViewDelegateLogic

extension ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___TableViewDelegateLogic {

    func didSelectRow(at indexPath: IndexPath) {
        router?.pushVC(animated: true)
    }

}
