// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Credentials for authenticating with the Algolia Insights API.
public struct AuthAlgoliaInsightsPartial: Codable, JSONEncodable {
    /// Algolia application ID.
    public var appID: String?
    /// Algolia API key with the ACL: `search`. This field is `null` in the API response.
    public var apiKey: String?

    public init(appID: String? = nil, apiKey: String? = nil) {
        self.appID = appID
        self.apiKey = apiKey
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appID
        case apiKey
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.appID, forKey: .appID)
        try container.encodeIfPresent(self.apiKey, forKey: .apiKey)
    }
}

extension AuthAlgoliaInsightsPartial: Equatable {
    public static func ==(lhs: AuthAlgoliaInsightsPartial, rhs: AuthAlgoliaInsightsPartial) -> Bool {
        lhs.appID == rhs.appID &&
            lhs.apiKey == rhs.apiKey
    }
}

extension AuthAlgoliaInsightsPartial: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.appID?.hashValue)
        hasher.combine(self.apiKey?.hashValue)
    }
}
