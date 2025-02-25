// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Request body for updating an authentication resource.
public struct AuthenticationUpdate: Codable, JSONEncodable {
    public var type: AuthenticationType?
    /// Descriptive name for the resource.
    public var name: String?
    public var platform: Platform?
    public var input: AuthInputPartial?

    public init(
        type: AuthenticationType? = nil,
        name: String? = nil,
        platform: Platform? = nil,
        input: AuthInputPartial? = nil
    ) {
        self.type = type
        self.name = name
        self.platform = platform
        self.input = input
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case name
        case platform
        case input
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.platform, forKey: .platform)
        try container.encodeIfPresent(self.input, forKey: .input)
    }
}

extension AuthenticationUpdate: Equatable {
    public static func ==(lhs: AuthenticationUpdate, rhs: AuthenticationUpdate) -> Bool {
        lhs.type == rhs.type &&
            lhs.name == rhs.name &&
            lhs.platform == rhs.platform &&
            lhs.input == rhs.input
    }
}

extension AuthenticationUpdate: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.type?.hashValue)
        hasher.combine(self.name?.hashValue)
        hasher.combine(self.platform?.hashValue)
        hasher.combine(self.input?.hashValue)
    }
}
