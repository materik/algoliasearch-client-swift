// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Core
import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

/** Batch parameters. */
public struct BatchParams: Codable, JSONEncodable, Hashable {
    public var requests: [MultipleBatchRequest]

    public init(requests: [MultipleBatchRequest]) {
        self.requests = requests
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case requests
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(requests, forKey: .requests)
    }
}
