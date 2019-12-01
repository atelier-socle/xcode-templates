//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated using a template from the AtelierSocle team
//

import UIKit
import Reusable

final class ___VARIABLE_sceneName___TableViewCell: UITableViewCell, NibReusable {

    // MARK: IBOutlets

    @IBOutlet private weak var titleLabel: UILabel! {
        didSet {
            titleLabel.accessibilityIdentifier = ___VARIABLE_sceneName___Accessibility.titleLabel.rawValue
        }
    }

    @IBOutlet private weak var button: UIButton! {
        didSet {
            button.accessibilityIdentifier = ___VARIABLE_sceneName___Accessibility.button.rawValue
            button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        }
    }

    // MARK: Properties

    private weak var delegate: ___VARIABLE_sceneName___TableViewCellDelegate?

    // MARK: Life Cycle

    override func awakeFromNib() {
        super.awakeFromNib()
    }

}

// MARK: - Bindings

extension ___VARIABLE_sceneName___TableViewCell {

    func bind(_ title: String, delegate: ___VARIABLE_sceneName___TableViewCellDelegate?) {
        self.delegate = delegate
        titleLabel.text = title
    }

}

// MARK: - IBActions

extension ___VARIABLE_sceneName___TableViewCell {

    @objc
    private func buttonPressed() {
        delegate?.executeButton()
    }

}
