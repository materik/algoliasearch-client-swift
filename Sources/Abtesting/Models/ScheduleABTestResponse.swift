// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct ScheduleABTestResponse: Codable, JSONEncodable {
    /// Unique scheduled A/B test identifier.
    public var abTestScheduleID: Int

    public init(abTestScheduleID: Int) {
        self.abTestScheduleID = abTestScheduleID
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case abTestScheduleID
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.abTestScheduleID, forKey: .abTestScheduleID)
    }
}

extension ScheduleABTestResponse: Equatable {
    public static func ==(lhs: ScheduleABTestResponse, rhs: ScheduleABTestResponse) -> Bool {
        lhs.abTestScheduleID == rhs.abTestScheduleID
    }
}

extension ScheduleABTestResponse: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.abTestScheduleID.hashValue)
    }
}
