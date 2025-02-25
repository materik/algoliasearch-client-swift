// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct SearchValue: Codable, JSONEncodable {
    /// Explicit order of facets or facet values.  This setting lets you always show specific facets or facet values at
    /// the top of the list.
    public var order: [String]?
    public var sortRemainingBy: SearchSortRemainingBy?
    /// Hide facet values.
    public var hide: [String]?

    public init(order: [String]? = nil, sortRemainingBy: SearchSortRemainingBy? = nil, hide: [String]? = nil) {
        self.order = order
        self.sortRemainingBy = sortRemainingBy
        self.hide = hide
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case order
        case sortRemainingBy
        case hide
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.order, forKey: .order)
        try container.encodeIfPresent(self.sortRemainingBy, forKey: .sortRemainingBy)
        try container.encodeIfPresent(self.hide, forKey: .hide)
    }
}

extension SearchValue: Equatable {
    public static func ==(lhs: SearchValue, rhs: SearchValue) -> Bool {
        lhs.order == rhs.order &&
            lhs.sortRemainingBy == rhs.sortRemainingBy &&
            lhs.hide == rhs.hide
    }
}

extension SearchValue: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.order?.hashValue)
        hasher.combine(self.sortRemainingBy?.hashValue)
        hasher.combine(self.hide?.hashValue)
    }
}
