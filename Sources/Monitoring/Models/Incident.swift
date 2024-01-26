// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Core
import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

/** Incident details. */
public struct Incident: Codable, JSONEncodable, Hashable {
    /** Description of the incident. */
    public var title: String?
    public var status: Status?

    public init(title: String? = nil, status: Status? = nil) {
        self.title = title
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(status, forKey: .status)
    }
}
