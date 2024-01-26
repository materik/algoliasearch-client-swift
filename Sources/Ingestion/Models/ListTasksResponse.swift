// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Core
import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

/** A list of tasks with pagination details. */
public struct ListTasksResponse: Codable, JSONEncodable, Hashable {
    public var tasks: [Task]
    public var pagination: Pagination

    public init(tasks: [Task], pagination: Pagination) {
        self.tasks = tasks
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tasks
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(tasks, forKey: .tasks)
        try container.encode(pagination, forKey: .pagination)
    }
}
