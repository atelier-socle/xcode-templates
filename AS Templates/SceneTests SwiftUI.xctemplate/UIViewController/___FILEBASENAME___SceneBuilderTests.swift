//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Atelier Socle Xcode Templates
//

import XCTest
@testable import ___VARIABLE_sceneName___

final class ___VARIABLE_sceneName___SceneBuilderTests: XCTestCase {

    // MARK: Properties

    private var builder: ___VARIABLE_sceneName___SceneBuilder!

    // MARK: Life Cycle

    override func setUp() {
        super.setUp()
        builder = ___VARIABLE_sceneName___SceneBuilder()
    }

    override func tearDown() {
        super.tearDown()
    }

}

// MARK: Computed Properties

extension ___VARIABLE_sceneName___SceneBuilderTests {

    func testScene() {
        XCTAssertNotNil(builder.view as? ___VARIABLE_sceneName___View)
    }

}