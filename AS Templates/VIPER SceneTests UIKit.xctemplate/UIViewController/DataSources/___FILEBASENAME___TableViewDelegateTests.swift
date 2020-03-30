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

final class ___VARIABLE_sceneName___TableViewDelegateTests: XCTestCase {

    // MARK: Properties

    // swiftlint:disable weak_delegate
    private var mockDelegate: Mock___VARIABLE_sceneName___TableViewDelegateLogic!
    private var delegate: ___VARIABLE_sceneName___TableViewDelegate!
    // swiftlint:enable weak_delegate
    private var tableView: UITableView!

    // MARK: Life Cycle

    override func setUp() {
        super.setUp()
        tableView = UITableView()
        tableView.register(cellType: ___VARIABLE_sceneName___TableViewCell.self)

        mockDelegate = Mock___VARIABLE_sceneName___TableViewDelegateLogic()
        delegate = ___VARIABLE_sceneName___TableViewDelegate(delegate: mockDelegate)
    }

    override func tearDown() {
        super.tearDown()
    }

}

// MARK: - Cell selection

extension ___VARIABLE_sceneName___TableViewDelegateTests {

    func testDidSelectRow() {
        let selectedIndexPath = IndexPath(row: 0, section: 0)
        delegate.tableView(tableView, didSelectRowAt: selectedIndexPath)
        XCTAssertEqual(mockDelegate.selectedIndexPath, selectedIndexPath)
    }

}