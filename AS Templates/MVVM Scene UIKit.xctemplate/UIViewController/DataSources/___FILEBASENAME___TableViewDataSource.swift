//
//  ___VARIABLE_sceneName___TableViewDataSource.swift
//  Sample
//
//  Created by Tom Baranes on 30/03/2020.
//  Copyright (c) 2020 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Atelier Socle Xcode Templates
//

import UIKit

final class ___VARIABLE_sceneName___TableViewDataSource: NSObject {

    // MARK: Properties

    private weak var delegate: ___VARIABLE_sceneName___TableViewDataSourceDelegate?

    // MARK: Life Cycle

    init(delegate: ___VARIABLE_sceneName___TableViewDataSourceDelegate?) {
        self.delegate = delegate
    }

}

// MARK: - UITableViewDataSource

extension ___VARIABLE_sceneName___TableViewDataSource: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        delegate?.names.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ___VARIABLE_sceneName___TableViewCell = tableView.dequeueReusableCell(for: indexPath)
        guard let delegate = delegate else {
            return cell
        }

        let title = delegate.names[indexPath.row]
        cell.bind(title, delegate: delegate.cellDelegate)
        return cell
    }

}
