// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct IngestionTask: Codable, JSONEncodable {
    /// Universally unique identifier (UUID) of a task.
    public var taskID: String
    /// Universally uniqud identifier (UUID) of a source.
    public var sourceID: String
    /// Universally unique identifier (UUID) of a destination resource.
    public var destinationID: String
    /// Cron expression for the task's schedule.
    public var cron: String?
    /// The last time the scheduled task ran in RFC 3339 format.
    public var lastRun: String?
    /// The next scheduled run of the task in RFC 3339 format.
    public var nextRun: String?
    public var input: TaskInput?
    /// Whether the task is enabled.
    public var enabled: Bool
    /// Maximum accepted percentage of failures for a task run to finish successfully.
    public var failureThreshold: Int?
    public var action: ActionType?
    /// Date of the last cursor in RFC 3339 format.
    public var cursor: String?
    public var notifications: Notifications?
    public var policies: Policies?
    /// Date of creation in RFC 3339 format.
    public var createdAt: String
    /// Date of last update in RFC 3339 format.
    public var updatedAt: String?

    public init(
        taskID: String,
        sourceID: String,
        destinationID: String,
        cron: String? = nil,
        lastRun: String? = nil,
        nextRun: String? = nil,
        input: TaskInput? = nil,
        enabled: Bool,
        failureThreshold: Int? = nil,
        action: ActionType? = nil,
        cursor: String? = nil,
        notifications: Notifications? = nil,
        policies: Policies? = nil,
        createdAt: String,
        updatedAt: String? = nil
    ) {
        self.taskID = taskID
        self.sourceID = sourceID
        self.destinationID = destinationID
        self.cron = cron
        self.lastRun = lastRun
        self.nextRun = nextRun
        self.input = input
        self.enabled = enabled
        self.failureThreshold = failureThreshold
        self.action = action
        self.cursor = cursor
        self.notifications = notifications
        self.policies = policies
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case taskID
        case sourceID
        case destinationID
        case cron
        case lastRun
        case nextRun
        case input
        case enabled
        case failureThreshold
        case action
        case cursor
        case notifications
        case policies
        case createdAt
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.taskID, forKey: .taskID)
        try container.encode(self.sourceID, forKey: .sourceID)
        try container.encode(self.destinationID, forKey: .destinationID)
        try container.encodeIfPresent(self.cron, forKey: .cron)
        try container.encodeIfPresent(self.lastRun, forKey: .lastRun)
        try container.encodeIfPresent(self.nextRun, forKey: .nextRun)
        try container.encodeIfPresent(self.input, forKey: .input)
        try container.encode(self.enabled, forKey: .enabled)
        try container.encodeIfPresent(self.failureThreshold, forKey: .failureThreshold)
        try container.encodeIfPresent(self.action, forKey: .action)
        try container.encodeIfPresent(self.cursor, forKey: .cursor)
        try container.encodeIfPresent(self.notifications, forKey: .notifications)
        try container.encodeIfPresent(self.policies, forKey: .policies)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.updatedAt, forKey: .updatedAt)
    }
}

extension IngestionTask: Equatable {
    public static func ==(lhs: IngestionTask, rhs: IngestionTask) -> Bool {
        lhs.taskID == rhs.taskID &&
            lhs.sourceID == rhs.sourceID &&
            lhs.destinationID == rhs.destinationID &&
            lhs.cron == rhs.cron &&
            lhs.lastRun == rhs.lastRun &&
            lhs.nextRun == rhs.nextRun &&
            lhs.input == rhs.input &&
            lhs.enabled == rhs.enabled &&
            lhs.failureThreshold == rhs.failureThreshold &&
            lhs.action == rhs.action &&
            lhs.cursor == rhs.cursor &&
            lhs.notifications == rhs.notifications &&
            lhs.policies == rhs.policies &&
            lhs.createdAt == rhs.createdAt &&
            lhs.updatedAt == rhs.updatedAt
    }
}

extension IngestionTask: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.taskID.hashValue)
        hasher.combine(self.sourceID.hashValue)
        hasher.combine(self.destinationID.hashValue)
        hasher.combine(self.cron?.hashValue)
        hasher.combine(self.lastRun?.hashValue)
        hasher.combine(self.nextRun?.hashValue)
        hasher.combine(self.input?.hashValue)
        hasher.combine(self.enabled.hashValue)
        hasher.combine(self.failureThreshold?.hashValue)
        hasher.combine(self.action?.hashValue)
        hasher.combine(self.cursor?.hashValue)
        hasher.combine(self.notifications?.hashValue)
        hasher.combine(self.policies?.hashValue)
        hasher.combine(self.createdAt.hashValue)
        hasher.combine(self.updatedAt?.hashValue)
    }
}
