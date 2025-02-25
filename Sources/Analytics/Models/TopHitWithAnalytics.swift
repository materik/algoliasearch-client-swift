// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct TopHitWithAnalytics: Codable, JSONEncodable {
    /// Object ID of a record returned as a search result.
    public var hit: String
    /// Number of occurrences.
    public var count: Int
    /// Click-through rate: calculated as the number of tracked searches with at least one click event divided by the
    /// number of tracked searches. If null, Algolia didn't receive any search requests with `clickAnalytics` set to
    /// true.
    public var clickThroughRate: Double?
    /// Conversion rate: calculated as the number of tracked searches with at least one conversion event divided by the
    /// number of tracked searches. If null, Algolia didn't receive any search requests with `clickAnalytics` set to
    /// true.
    public var conversionRate: Double?
    /// Number of tracked searches. Tracked searches are search requests where the `clickAnalytics` parameter is true.
    public var trackedHitCount: Int
    /// Number of clicks associated with this search.
    public var clickCount: Int
    /// Number of conversions from this search.
    public var conversionCount: Int

    public init(
        hit: String,
        count: Int,
        clickThroughRate: Double?,
        conversionRate: Double?,
        trackedHitCount: Int,
        clickCount: Int,
        conversionCount: Int
    ) {
        self.hit = hit
        self.count = count
        self.clickThroughRate = clickThroughRate
        self.conversionRate = conversionRate
        self.trackedHitCount = trackedHitCount
        self.clickCount = clickCount
        self.conversionCount = conversionCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case hit
        case count
        case clickThroughRate
        case conversionRate
        case trackedHitCount
        case clickCount
        case conversionCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.hit, forKey: .hit)
        try container.encode(self.count, forKey: .count)
        try container.encode(self.clickThroughRate, forKey: .clickThroughRate)
        try container.encode(self.conversionRate, forKey: .conversionRate)
        try container.encode(self.trackedHitCount, forKey: .trackedHitCount)
        try container.encode(self.clickCount, forKey: .clickCount)
        try container.encode(self.conversionCount, forKey: .conversionCount)
    }
}

extension TopHitWithAnalytics: Equatable {
    public static func ==(lhs: TopHitWithAnalytics, rhs: TopHitWithAnalytics) -> Bool {
        lhs.hit == rhs.hit &&
            lhs.count == rhs.count &&
            lhs.clickThroughRate == rhs.clickThroughRate &&
            lhs.conversionRate == rhs.conversionRate &&
            lhs.trackedHitCount == rhs.trackedHitCount &&
            lhs.clickCount == rhs.clickCount &&
            lhs.conversionCount == rhs.conversionCount
    }
}

extension TopHitWithAnalytics: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.hit.hashValue)
        hasher.combine(self.count.hashValue)
        hasher.combine(self.clickThroughRate.hashValue)
        hasher.combine(self.conversionRate.hashValue)
        hasher.combine(self.trackedHitCount.hashValue)
        hasher.combine(self.clickCount.hashValue)
        hasher.combine(self.conversionCount.hashValue)
    }
}
