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

public typealias ___VARIABLE_sceneName___Equatable = Character
public typealias ___VARIABLE_sceneName___ = ___VARIABLE_sceneName___Model<___VARIABLE_sceneName___Equatable>

/// a data class to decode json from service benefits payload.
/// - conforms to `Decodable` protocols
/// - follow a conditional conformance to equality by `Conformance`
public struct ___VARIABLE_sceneName___Model<Conformance>: Decodable {

    // MARK: Properties

    /// the ___VARIABLE_sceneName___'s id
    public let id: String
    /// the ___VARIABLE_sceneName___'s link
    public let link: URL?
    /// the strings
    public let strings: [String]

    // MARK: Life Cycle

    public init(id: String,
                link: String,
                strings: [String]) {
        self.id = id
        self.link = URL(string: link)
        self.strings = strings
    }

    /// init from decoder to decode values from a native format into in-memory representations.
    /// - Parameter decoder: `Decoder`
    /// - throws: can throw a decoding mapping
    public init(from decoder: Decoder) throws {
        id           = try decoder.decode(CodingKeys.id)
        link         = try? decoder.decodeIfPresent(CodingKeys.link)

        let stringsType = [DecodableThrowable<String>].self
        self.strings = (try? decoder.decodeIfPresent(CodingKeys.strings, as: stringsType)?
                                    .compactMap { $0.value }) ?? []
    }

}

// MARK: - CodingKeys

extension ___VARIABLE_sceneName___Model {

    /// coding keys enum as `String`, conforms to `CodingKey` protocol
    private enum CodingKeys: String, CodingKey {
        case id
        case link = "new_link_key"
        case strings
    }

}

// MARK: - Equatable

extension ___VARIABLE_sceneName___Model: Equatable where Conformance: Equatable { }
