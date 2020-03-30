//
//  ___VARIABLE_sceneName___TableViewDataSourceTests.swift
//  Sample
//
//  Created by Tom Baranes on 30/03/2020.
//  Copyright (c) 2020 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Atelier Socle Xcode Templates
//

import XCTest
@testable import Sample_iOS

final class ___VARIABLE_sceneName___TableViewDataSourceTests: XCTestCase {

    // MARK: Properties

    // swiftlint:disable weak_delegate
    private var dataSourceDelegate: Mock___VARIABLE_sceneName___TableViewDataSourceDelegate!
    private var dataSource: ___VARIABLE_sceneName___TableViewDataSource!
    // swiftlint:enable weak_delegate
    private var tableView: UITableView!

    // MARK: Life Cycle

    override func setUp() {
        super.setUp()
        tableView = UITableView()
        dataSourceDelegate = Mock___VARIABLE_sceneName___TableViewDataSourceDelegate()

        tableView.register(cellType: ___VARIABLE_sceneName___TableViewCell.self)
        dataSource = ___VARIABLE_sceneName___TableViewDataSource(delegate: dataSourceDelegate)
    }

    override func tearDown() {
        super.tearDown()
    }

}

// MARK: - Number of rows in section

extension ___VARIABLE_sceneName___TableViewDataSourceTests {

    func testNumberOfRowsInSection() {
        XCTAssertEqual(dataSource.tableView(tableView, numberOfRowsInSection: 0), 2)
    }

    func testNumberOfRows_withoutDataSourceDelegate() {
        dataSourceDelegate = nil
        dataSource = ___VARIABLE_sceneName___TableViewDataSource(delegate: dataSourceDelegate)
        XCTAssertEqual(dataSource.tableView(tableView, numberOfRowsInSection: 0), 0)
    }

}

// MARK: - Cell for Rows

extension ___VARIABLE_sceneName___TableViewDataSourceTests {

    func testCellForRow() {
        let cell = dataSource.tableView(tableView, cellForRowAt: IndexPath(row: 0, section: 0))
        XCTAssertNotNil(cell as? ___VARIABLE_sceneName___TableViewCell)
    }

    func testCellForRow_withoutDataSourceDelegate() {
        dataSourceDelegate = nil

        let cell = dataSource.tableView(tableView, cellForRowAt: IndexPath(row: 0, section: 0))
        XCTAssertNotNil(cell as? ___VARIABLE_sceneName___TableViewCell)
    }

}
