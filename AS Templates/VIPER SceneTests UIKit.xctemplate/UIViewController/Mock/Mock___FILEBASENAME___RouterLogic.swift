//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Atelier Socle Xcode Templates
//

import Foundation
@testable import ___VARIABLE_sceneName___

final class Mock___VARIABLE_sceneName___RouterLogic {

    // MARK: Properties

    private(set) var didPushVC = false
}

// MARK: - ___VARIABLE_sceneName___RouterLogic

extension Mock___VARIABLE_sceneName___RouterLogic: ___VARIABLE_sceneName___RouterLogic {

    func pushVC(animated: Bool) {
        didPushVC = true
    }

}