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
@testable import ___VARIABLE_sceneName___

final class Mock___VARIABLE_sceneName___TableViewDelegateLogic {

    // MARK: Properties

    private(set) var selectedIndexPath: IndexPath?

    // MARK: Life Cycle

    init() {

    }

}

// MARK: - ___VARIABLE_sceneName___TableViewDelegateLogic

extension Mock___VARIABLE_sceneName___TableViewDelegateLogic: ___VARIABLE_sceneName___TableViewDelegateLogic {

    func didSelectRow(at indexPath: IndexPath) {
        selectedIndexPath = indexPath
    }

}