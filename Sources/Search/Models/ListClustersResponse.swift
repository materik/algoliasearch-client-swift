// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Clusters.
public struct ListClustersResponse: Codable, JSONEncodable {
    /// Key-value pairs with cluster names as keys and lists of users with the highest number of records per cluster as
    /// values.
    public var topUsers: [String]

    public init(topUsers: [String]) {
        self.topUsers = topUsers
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case topUsers
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.topUsers, forKey: .topUsers)
    }
}

extension ListClustersResponse: Equatable {
    public static func ==(lhs: ListClustersResponse, rhs: ListClustersResponse) -> Bool {
        lhs.topUsers == rhs.topUsers
    }
}

extension ListClustersResponse: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.topUsers.hashValue)
    }
}
