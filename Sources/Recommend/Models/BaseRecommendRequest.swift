// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct BaseRecommendRequest: Codable, JSONEncodable {
    /// Index name (case-sensitive).
    public var indexName: String
    /// Minimum score a recommendation must have to be included in the response.
    public var threshold: Double
    /// Maximum number of recommendations to retrieve. By default, all recommendations are returned and no fallback
    /// request is made. Depending on the available recommendations and the other request parameters, the actual number
    /// of recommendations may be lower than this value.
    public var maxRecommendations: Int?
    public var queryParameters: RecommendSearchParams?

    public init(
        indexName: String,
        threshold: Double,
        maxRecommendations: Int? = nil,
        queryParameters: RecommendSearchParams? = nil
    ) {
        self.indexName = indexName
        self.threshold = threshold
        self.maxRecommendations = maxRecommendations
        self.queryParameters = queryParameters
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case indexName
        case threshold
        case maxRecommendations
        case queryParameters
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.indexName, forKey: .indexName)
        try container.encode(self.threshold, forKey: .threshold)
        try container.encodeIfPresent(self.maxRecommendations, forKey: .maxRecommendations)
        try container.encodeIfPresent(self.queryParameters, forKey: .queryParameters)
    }
}

extension BaseRecommendRequest: Equatable {
    public static func ==(lhs: BaseRecommendRequest, rhs: BaseRecommendRequest) -> Bool {
        lhs.indexName == rhs.indexName &&
            lhs.threshold == rhs.threshold &&
            lhs.maxRecommendations == rhs.maxRecommendations &&
            lhs.queryParameters == rhs.queryParameters
    }
}

extension BaseRecommendRequest: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.indexName.hashValue)
        hasher.combine(self.threshold.hashValue)
        hasher.combine(self.maxRecommendations?.hashValue)
        hasher.combine(self.queryParameters?.hashValue)
    }
}
