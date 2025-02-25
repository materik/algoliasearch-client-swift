// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct DailySearchesNoResults: Codable, JSONEncodable {
    /// Search query.
    public var search: String
    /// Number of occurrences.
    public var count: Int
    /// Number of searches for this term with applied filters.
    public var withFilterCount: Int

    public init(search: String, count: Int, withFilterCount: Int) {
        self.search = search
        self.count = count
        self.withFilterCount = withFilterCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case search
        case count
        case withFilterCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.search, forKey: .search)
        try container.encode(self.count, forKey: .count)
        try container.encode(self.withFilterCount, forKey: .withFilterCount)
    }
}

extension DailySearchesNoResults: Equatable {
    public static func ==(lhs: DailySearchesNoResults, rhs: DailySearchesNoResults) -> Bool {
        lhs.search == rhs.search &&
            lhs.count == rhs.count &&
            lhs.withFilterCount == rhs.withFilterCount
    }
}

extension DailySearchesNoResults: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.search.hashValue)
        hasher.combine(self.count.hashValue)
        hasher.combine(self.withFilterCount.hashValue)
    }
}
