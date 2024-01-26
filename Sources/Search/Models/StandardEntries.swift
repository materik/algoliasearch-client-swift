// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Core
import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

/** Key-value pairs of [supported language ISO codes](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/handling-natural-languages-nlp/in-depth/supported-languages/) and boolean values.  */
public struct StandardEntries: Codable, JSONEncodable, Hashable {
    /** Key-value pair of a language ISO code and a boolean value. */
    public var plurals: [String: Bool]?
    /** Key-value pair of a language ISO code and a boolean value. */
    public var stopwords: [String: Bool]?
    /** Key-value pair of a language ISO code and a boolean value. */
    public var compounds: [String: Bool]?

    public init(plurals: [String: Bool]? = nil, stopwords: [String: Bool]? = nil, compounds: [String: Bool]? = nil) {
        self.plurals = plurals
        self.stopwords = stopwords
        self.compounds = compounds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case plurals
        case stopwords
        case compounds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(plurals, forKey: .plurals)
        try container.encodeIfPresent(stopwords, forKey: .stopwords)
        try container.encodeIfPresent(compounds, forKey: .compounds)
    }
}
