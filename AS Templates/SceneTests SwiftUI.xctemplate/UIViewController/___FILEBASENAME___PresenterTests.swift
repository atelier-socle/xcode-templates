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

final class ___VARIABLE_sceneName___PresenterTests: XCTestCase {

    // MARK: Properties

    private var presenter: ___VARIABLE_sceneName___Presenter!
    private var interactor: Mock___VARIABLE_sceneName___InteractorLogic!

    // MARK: Life Cycle

    override func setUp() {
        super.setUp()
        interactor = Mock___VARIABLE_sceneName___InteractorLogic()
        presenter = ___VARIABLE_sceneName___Presenter(interactor: interactor)
    }

    override func tearDown() {
        super.tearDown()
    }

}

// MARK: - Initialize

extension ___VARIABLE_sceneName___PresenterTests {

    func testInitialize() {
        XCTAssertNotNil(presenter.interactor)
        XCTAssertNotNil(presenter.viewModel)
        XCTAssertTrue(interactor.didSubscribe)

        presenter = ___VARIABLE_sceneName___Presenter()
        XCTAssertNotNil(presenter.interactor)
    }

    func testDeinit() {
        presenter = nil
        XCTAssertTrue(interactor.didUnsubscribe)
    }

}

// MARK: - ___VARIABLE_sceneName___PresenterLogic

extension ___VARIABLE_sceneName___PresenterTests {

    func testFetchNewName() {
        presenter.fetchName()
        XCTAssertTrue(interactor.didFetchNewName)
        XCTAssertEqual(presenter.viewModel.names, ["Loading..."])
    }

}

// MARK: - ___VARIABLE_sceneName___InteractorDelegate

extension ___VARIABLE_sceneName___PresenterTests {

    func testDidFetchName() {
        presenter.fetchName()
        presenter.didFetch(name: "name")
        XCTAssertEqual(presenter.viewModel.names, ["name"])

        presenter.didFetch(name: "name2")
        XCTAssertEqual(presenter.viewModel.names, ["name"])
    }
    
}