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

    private var view: Mock___VARIABLE_sceneName___ViewDelegate!
    private var interactor: Mock___VARIABLE_sceneName___InteractorLogic!
    private var router: Mock___VARIABLE_sceneName___RouterLogic!
    private var presenter: ___VARIABLE_sceneName___Presenter!

    // MARK: Life Cycle

    override func setUp() {
        super.setUp()
        view = Mock___VARIABLE_sceneName___ViewDelegate()
        interactor = Mock___VARIABLE_sceneName___InteractorLogic(presenter: ___VARIABLE_sceneName___Presenter(view: view))
        router = Mock___VARIABLE_sceneName___RouterLogic()
        presenter = ___VARIABLE_sceneName___Presenter(view: view, interactor: interactor, router: router)
    }

    override func tearDown() {
        super.tearDown()
    }

}

// MARK: - Initialize

extension ___VARIABLE_sceneName___PresenterTests {

    func testInitialize() {
        XCTAssertNotNil(presenter.router)
        XCTAssertNotNil(presenter.interactor)
        XCTAssertNotNil(presenter.viewModel)
        XCTAssertNotNil(presenter.view)
        XCTAssertTrue(interactor.didSubscribe)

        presenter = ___VARIABLE_sceneName___Presenter(view: view)
        XCTAssertNotNil(presenter.interactor)
        XCTAssertNotNil(presenter.router)
    }

    func testDeinit() {
        presenter = nil
        XCTAssertTrue(interactor.didUnsubscribe)
    }

}

// MARK: - ___VARIABLE_sceneName___PresenterLogic

extension ___VARIABLE_sceneName___PresenterTests {

    func testViewDidLoad() {
        presenter.viewDidLoad()
        XCTAssertTrue(view.didConfigureDefaultLabels)
    }

    func testFetchNewName() {
        presenter.fetchNewName()
        XCTAssertTrue(presenter.viewModel.isLoading)
        XCTAssertTrue(interactor.didFetchNewName)
        XCTAssertEqual(view.namesReloaded, ["Loading..."])
    }

}

// MARK: - ___VARIABLE_sceneName___InteractorDelegate

extension ___VARIABLE_sceneName___PresenterTests {

    func testDidFetchName() {
        presenter.fetchNewName()
        presenter.didFetch(name: "name")
        XCTAssertFalse(presenter.viewModel.isLoading)
        XCTAssertEqual(view.namesReloaded, ["name"])

        presenter.didFetch(name: "name2")
        XCTAssertFalse(presenter.viewModel.isLoading)
        XCTAssertEqual(view.namesReloaded, ["name"])
    }

}

// MARK: - ___VARIABLE_sceneName___RouterDelegate

extension ___VARIABLE_sceneName___PresenterTests {

}

// MARK: - ___VARIABLE_sceneName___TableViewCellDelegate

extension ___VARIABLE_sceneName___PresenterTests {

    func testDidExecuteButton() {
        presenter.executeButton()
    }

}

// MARK: - ___VARIABLE_sceneName___TableViewDataSourceDelegate

extension ___VARIABLE_sceneName___PresenterTests {

    func testItems() {
        XCTAssertEqual(presenter.viewModel.names, presenter.names)
    }

    func testDelegate() {
        XCTAssertNotNil(presenter.cellDelegate as? ___VARIABLE_sceneName___Presenter)
    }

}

// MARK: - ___VARIABLE_sceneName___TableViewDelegateLogic

extension ___VARIABLE_sceneName___PresenterTests {

    func testDidSelectRow() {
        presenter.didSelectRow(at: IndexPath(row: 0, section: 0))
        XCTAssertTrue(router.didPushVC)
    }

}
