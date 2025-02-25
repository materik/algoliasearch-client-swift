// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct TopSearchesResponseWithAnalytics: Codable, JSONEncodable {
    /// Most popular searches and their associated click and conversion metrics.
    public var searches: [TopSearchWithAnalytics]

    public init(searches: [TopSearchWithAnalytics]) {
        self.searches = searches
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case searches
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.searches, forKey: .searches)
    }
}

extension TopSearchesResponseWithAnalytics: Equatable {
    public static func ==(lhs: TopSearchesResponseWithAnalytics, rhs: TopSearchesResponseWithAnalytics) -> Bool {
        lhs.searches == rhs.searches
    }
}

extension TopSearchesResponseWithAnalytics: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.searches.hashValue)
    }
}
