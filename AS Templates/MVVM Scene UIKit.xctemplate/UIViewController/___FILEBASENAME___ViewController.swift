//
//  ___VARIABLE_sceneName___ViewController.swift
//  Sample
//
//  Created by Tom Baranes on 30/03/2020.
//  Copyright (c) 2020 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Atelier Socle Xcode Templates
//

import UIKit
import Reusable

final class ___VARIABLE_sceneName___ViewController: UIViewController {

    // MARK: IBOutlet

    @IBOutlet private weak var buttonFetchName: UIButton! {
        didSet {
            buttonFetchName.accessibilityIdentifier = ___VARIABLE_sceneName___Accessibility.button.rawValue
            buttonFetchName.addTarget(self, action: #selector(fetchNamePressed), for: .touchUpInside)
        }
    }

    @IBOutlet private weak var tableView: UITableView! {
        didSet {
            tableView.accessibilityIdentifier = ___VARIABLE_sceneName___Accessibility.tableView.rawValue
            tableView.rowHeight = UITableView.automaticDimension
            tableView.register(cellType: ___VARIABLE_sceneName___TableViewCell.self)

            dataSource = ___VARIABLE_sceneName___TableViewDataSource(delegate: viewModel)
            tableViewDelegate = ___VARIABLE_sceneName___TableViewDelegate(delegate: viewModel)
            tableView.dataSource = dataSource
            tableView.delegate = tableViewDelegate
        }
    }

    // MARK: Properties

    private let viewModel = ___VARIABLE_sceneName___ViewModel()
    private(set) var dataSource: ___VARIABLE_sceneName___TableViewDataSource!
    // swiftlint:disable:next weak_delegate
    private(set) var tableViewDelegate: ___VARIABLE_sceneName___TableViewDelegate!

    private var tokens = [NSKeyValueObservation]()

    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureDefaultLabels()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        subscribe()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        unsubscribe()
    }

}

// MARK: - Injection

extension ___VARIABLE_sceneName___ViewController {

    func inject() {

    }

}

// MARK: - Configuration

extension ___VARIABLE_sceneName___ViewController {

    private func configureDefaultLabels() {
        self.title = viewModel.navigationBarTitle
        buttonFetchName.setTitle(viewModel.fetchNameButton, for: .normal)
    }

}

// MARK: - ___VARIABLE_sceneName___ControllerLogic

extension ___VARIABLE_sceneName___ViewController {

    private func subscribe() {
        observeNames()
        observeSelectedName()
    }

    private func observeNames() {
        let token = viewModel.observe(\.names, options: [.initial, .new]) { [weak self] _, _ in
            self?.tableView.reloadData()
        }
        tokens.append(token)
    }

    private func observeSelectedName() {
        let token = viewModel.observe(\.selectedName, options: [.initial, .new]) { [weak self] _, _ in
            let vc = UIViewController()
            self?.navigationController?.pushViewController(vc, animated: true)
        }
        tokens.append(token)
    }

    private func unsubscribe() {
        tokens.forEach {
            self.invalidateToken($0)
        }
        tokens.removeAll()
    }

    private func invalidateToken(_ token: NSKeyValueObservation) {
        var token: NSKeyValueObservation? = token
        token?.invalidate()
        token = nil
    }

}

// MARK: - Actions

extension ___VARIABLE_sceneName___ViewController {

    @objc
    private func fetchNamePressed() {
        viewModel.fetchNewName()
    }

}
