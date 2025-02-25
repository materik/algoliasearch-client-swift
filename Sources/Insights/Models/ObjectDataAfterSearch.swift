// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct ObjectDataAfterSearch: Codable, JSONEncodable {
    /// Unique identifier for a search query, used to track purchase events with multiple records that originate from
    /// different searches.
    public var queryID: String?
    public var price: Price?
    /// Quantity of a product that has been purchased or added to the cart. The total purchase value is the sum of
    /// `quantity` multiplied with the `price` for each purchased item.
    public var quantity: Int?
    public var discount: Discount?

    public init(queryID: String? = nil, price: Price? = nil, quantity: Int? = nil, discount: Discount? = nil) {
        self.queryID = queryID
        self.price = price
        self.quantity = quantity
        self.discount = discount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case queryID
        case price
        case quantity
        case discount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.queryID, forKey: .queryID)
        try container.encodeIfPresent(self.price, forKey: .price)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.discount, forKey: .discount)
    }
}

extension ObjectDataAfterSearch: Equatable {
    public static func ==(lhs: ObjectDataAfterSearch, rhs: ObjectDataAfterSearch) -> Bool {
        lhs.queryID == rhs.queryID &&
            lhs.price == rhs.price &&
            lhs.quantity == rhs.quantity &&
            lhs.discount == rhs.discount
    }
}

extension ObjectDataAfterSearch: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.queryID?.hashValue)
        hasher.combine(self.price?.hashValue)
        hasher.combine(self.quantity?.hashValue)
        hasher.combine(self.discount?.hashValue)
    }
}
