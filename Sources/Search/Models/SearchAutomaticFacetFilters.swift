// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Filter to be applied to the search.  You can use this to respond to search queries that match a facet value. For
/// example, if users search for \"comedy\", which matches a facet value of the \"genre\" facet, you can filter the
/// results to show the top-ranked comedy movies.
public enum SearchAutomaticFacetFilters: Codable, JSONEncodable, AbstractEncodable {
    case arrayOfSearchAutomaticFacetFilter([SearchAutomaticFacetFilter])
    case arrayOfString([String])

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .arrayOfSearchAutomaticFacetFilter(value):
            try container.encode(value)
        case let .arrayOfString(value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode([SearchAutomaticFacetFilter].self) {
            self = .arrayOfSearchAutomaticFacetFilter(value)
        } else if let value = try? container.decode([String].self) {
            self = .arrayOfString(value)
        } else {
            throw DecodingError.typeMismatch(
                Self.Type.self,
                .init(
                    codingPath: decoder.codingPath,
                    debugDescription: "Unable to decode instance of SearchAutomaticFacetFilters"
                )
            )
        }
    }

    public func GetActualInstance() -> Encodable {
        switch self {
        case let .arrayOfSearchAutomaticFacetFilter(value):
            value as [SearchAutomaticFacetFilter]
        case let .arrayOfString(value):
            value as [String]
        }
    }
}

extension SearchAutomaticFacetFilters: Equatable {}
extension SearchAutomaticFacetFilters: Hashable {}
