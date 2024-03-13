// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import AnyCodable
import Core
import Foundation

public enum Trigger: Codable, JSONEncodable, AbstractEncodable, Hashable {
    case onDemandTrigger(OnDemandTrigger)
    case scheduleTrigger(ScheduleTrigger)
    case streamingTrigger(StreamingTrigger)
    case subscriptionTrigger(SubscriptionTrigger)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .onDemandTrigger(value):
            try container.encode(value)
        case let .scheduleTrigger(value):
            try container.encode(value)
        case let .streamingTrigger(value):
            try container.encode(value)
        case let .subscriptionTrigger(value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(OnDemandTrigger.self) {
            self = .onDemandTrigger(value)
        } else if let value = try? container.decode(ScheduleTrigger.self) {
            self = .scheduleTrigger(value)
        } else if let value = try? container.decode(StreamingTrigger.self) {
            self = .streamingTrigger(value)
        } else if let value = try? container.decode(SubscriptionTrigger.self) {
            self = .subscriptionTrigger(value)
        } else {
            throw DecodingError.typeMismatch(
                Self.Type.self,
                .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of Trigger")
            )
        }
    }

    public func GetActualInstance() -> Encodable {
        switch self {
        case let .onDemandTrigger(value):
            value as OnDemandTrigger
        case let .scheduleTrigger(value):
            value as ScheduleTrigger
        case let .streamingTrigger(value):
            value as StreamingTrigger
        case let .subscriptionTrigger(value):
            value as SubscriptionTrigger
        }
    }
}
