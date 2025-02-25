// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Precision of a coordinate-based search in meters to group results with similar distances.  The Geo ranking criterion
/// considers all matches within the same range of distances to be equal.
public enum RecommendAroundPrecision: Codable, JSONEncodable, AbstractEncodable {
    case int(Int)
    case arrayOfRecommendRange([RecommendRange])

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .int(value):
            try container.encode(value)
        case let .arrayOfRecommendRange(value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Int.self) {
            self = .int(value)
        } else if let value = try? container.decode([RecommendRange].self) {
            self = .arrayOfRecommendRange(value)
        } else {
            throw DecodingError.typeMismatch(
                Self.Type.self,
                .init(
                    codingPath: decoder.codingPath,
                    debugDescription: "Unable to decode instance of RecommendAroundPrecision"
                )
            )
        }
    }

    public func GetActualInstance() -> Encodable {
        switch self {
        case let .int(value):
            value as Int
        case let .arrayOfRecommendRange(value):
            value as [RecommendRange]
        }
    }
}

extension RecommendAroundPrecision: Equatable {}
extension RecommendAroundPrecision: Hashable {}
