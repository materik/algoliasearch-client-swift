// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public enum GetTopSearchesResponse: Codable, JSONEncodable, AbstractEncodable {
    case topSearchesResponse(TopSearchesResponse)
    case topSearchesResponseWithAnalytics(TopSearchesResponseWithAnalytics)
    case topSearchesResponseWithRevenueAnalytics(TopSearchesResponseWithRevenueAnalytics)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .topSearchesResponse(value):
            try container.encode(value)
        case let .topSearchesResponseWithAnalytics(value):
            try container.encode(value)
        case let .topSearchesResponseWithRevenueAnalytics(value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(TopSearchesResponse.self) {
            self = .topSearchesResponse(value)
        } else if let value = try? container.decode(TopSearchesResponseWithAnalytics.self) {
            self = .topSearchesResponseWithAnalytics(value)
        } else if let value = try? container.decode(TopSearchesResponseWithRevenueAnalytics.self) {
            self = .topSearchesResponseWithRevenueAnalytics(value)
        } else {
            throw DecodingError.typeMismatch(
                Self.Type.self,
                .init(
                    codingPath: decoder.codingPath,
                    debugDescription: "Unable to decode instance of GetTopSearchesResponse"
                )
            )
        }
    }

    public func GetActualInstance() -> Encodable {
        switch self {
        case let .topSearchesResponse(value):
            value as TopSearchesResponse
        case let .topSearchesResponseWithAnalytics(value):
            value as TopSearchesResponseWithAnalytics
        case let .topSearchesResponseWithRevenueAnalytics(value):
            value as TopSearchesResponseWithRevenueAnalytics
        }
    }
}

extension GetTopSearchesResponse: Equatable {}
extension GetTopSearchesResponse: Hashable {}
