// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Object ID of the record to hide.
public struct SearchConsequenceHide: Codable, JSONEncodable {
    /// Unique record identifier.
    public var objectID: String

    public init(objectID: String) {
        self.objectID = objectID
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case objectID
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.objectID, forKey: .objectID)
    }
}

extension SearchConsequenceHide: Equatable {
    public static func ==(lhs: SearchConsequenceHide, rhs: SearchConsequenceHide) -> Bool {
        lhs.objectID == rhs.objectID
    }
}

extension SearchConsequenceHide: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.objectID.hashValue)
    }
}
