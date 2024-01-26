// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Core
import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct RuleResponseMetadata: Codable, JSONEncodable, Hashable {
    /** Timestamp of the last update in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format. */
    public var lastUpdate: String?

    public init(lastUpdate: String? = nil) {
        self.lastUpdate = lastUpdate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case lastUpdate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(lastUpdate, forKey: .lastUpdate)
    }
}
