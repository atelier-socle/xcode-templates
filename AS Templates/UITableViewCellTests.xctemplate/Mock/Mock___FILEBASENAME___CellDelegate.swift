//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects
//

import Foundation
@testable import ___PROJECTNAME___

final class Mock___VARIABLE_sceneName___TableViewCellDelegate {

    // MARK: Properties

    private(set) var didExecuteButton = false

}

// MARK: - ___VARIABLE_sceneName___CellDelegate

extension Mock___VARIABLE_sceneName___TableViewCellDelegate: ___VARIABLE_sceneName___TableViewCellDelegate {

    func deleteModule() {
        didExecuteButton = true
    }

}
