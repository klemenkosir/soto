//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2023 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

#if os(Linux) && compiler(<5.10)
// swift-corelibs-foundation hasn't been updated with Sendable conformances
@preconcurrency import Foundation
#else
import Foundation
#endif
@_spi(SotoInternal) import SotoCore

extension SupportApp {
    // MARK: Enums

    public enum AccountType: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case management = "management"
        case member = "member"
        public var description: String { return self.rawValue }
    }

    public enum NotificationSeverityLevel: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case all = "all"
        case high = "high"
        case none = "none"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct CreateSlackChannelConfigurationRequest: AWSEncodableShape {
        /// The channel ID in Slack. This ID identifies a channel within a Slack workspace.
        public let channelId: String
        /// The name of the Slack channel that you configure for the Amazon Web Services Support App.
        public let channelName: String?
        /// The Amazon Resource Name (ARN) of an IAM role that you want to
        /// use to perform operations on Amazon Web Services. For more information, see Managing access to
        /// the Amazon Web Services Support App in the Amazon Web Services Support User Guide.
        public let channelRoleArn: String
        /// Whether you want to get notified when a support case has a new correspondence.
        public let notifyOnAddCorrespondenceToCase: Bool?
        /// The case severity for a support case that you want to receive notifications. If you specify high or all, you must specify true for at least one of the following parameters:    notifyOnAddCorrespondenceToCase     notifyOnCreateOrReopenCase     notifyOnResolveCase    If you specify none, the following parameters must be null or false:    notifyOnAddCorrespondenceToCase     notifyOnCreateOrReopenCase     notifyOnResolveCase     If you don't specify these parameters in your request, they default to false.
        public let notifyOnCaseSeverity: NotificationSeverityLevel
        /// Whether you want to get notified when a support case is created or reopened.
        public let notifyOnCreateOrReopenCase: Bool?
        /// Whether you want to get notified when a support case is resolved.
        public let notifyOnResolveCase: Bool?
        /// The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
        /// T012ABCDEFG.
        public let teamId: String

        public init(channelId: String, channelName: String? = nil, channelRoleArn: String, notifyOnAddCorrespondenceToCase: Bool? = nil, notifyOnCaseSeverity: NotificationSeverityLevel, notifyOnCreateOrReopenCase: Bool? = nil, notifyOnResolveCase: Bool? = nil, teamId: String) {
            self.channelId = channelId
            self.channelName = channelName
            self.channelRoleArn = channelRoleArn
            self.notifyOnAddCorrespondenceToCase = notifyOnAddCorrespondenceToCase
            self.notifyOnCaseSeverity = notifyOnCaseSeverity
            self.notifyOnCreateOrReopenCase = notifyOnCreateOrReopenCase
            self.notifyOnResolveCase = notifyOnResolveCase
            self.teamId = teamId
        }

        public func validate(name: String) throws {
            try self.validate(self.channelId, name: "channelId", parent: name, max: 256)
            try self.validate(self.channelId, name: "channelId", parent: name, min: 1)
            try self.validate(self.channelId, name: "channelId", parent: name, pattern: "^\\S+$")
            try self.validate(self.channelName, name: "channelName", parent: name, max: 256)
            try self.validate(self.channelName, name: "channelName", parent: name, min: 1)
            try self.validate(self.channelName, name: "channelName", parent: name, pattern: "^.+$")
            try self.validate(self.channelRoleArn, name: "channelRoleArn", parent: name, max: 2048)
            try self.validate(self.channelRoleArn, name: "channelRoleArn", parent: name, min: 31)
            try self.validate(self.channelRoleArn, name: "channelRoleArn", parent: name, pattern: "^arn:aws:iam::[0-9]{12}:role/(.+)$")
            try self.validate(self.teamId, name: "teamId", parent: name, max: 256)
            try self.validate(self.teamId, name: "teamId", parent: name, min: 1)
            try self.validate(self.teamId, name: "teamId", parent: name, pattern: "^\\S+$")
        }

        private enum CodingKeys: String, CodingKey {
            case channelId = "channelId"
            case channelName = "channelName"
            case channelRoleArn = "channelRoleArn"
            case notifyOnAddCorrespondenceToCase = "notifyOnAddCorrespondenceToCase"
            case notifyOnCaseSeverity = "notifyOnCaseSeverity"
            case notifyOnCreateOrReopenCase = "notifyOnCreateOrReopenCase"
            case notifyOnResolveCase = "notifyOnResolveCase"
            case teamId = "teamId"
        }
    }

    public struct CreateSlackChannelConfigurationResult: AWSDecodableShape {
        public init() {}
    }

    public struct DeleteAccountAliasRequest: AWSEncodableShape {
        public init() {}
    }

    public struct DeleteAccountAliasResult: AWSDecodableShape {
        public init() {}
    }

    public struct DeleteSlackChannelConfigurationRequest: AWSEncodableShape {
        /// The channel ID in Slack. This ID identifies a channel within a Slack workspace.
        public let channelId: String
        /// The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
        /// T012ABCDEFG.
        public let teamId: String

        public init(channelId: String, teamId: String) {
            self.channelId = channelId
            self.teamId = teamId
        }

        public func validate(name: String) throws {
            try self.validate(self.channelId, name: "channelId", parent: name, max: 256)
            try self.validate(self.channelId, name: "channelId", parent: name, min: 1)
            try self.validate(self.channelId, name: "channelId", parent: name, pattern: "^\\S+$")
            try self.validate(self.teamId, name: "teamId", parent: name, max: 256)
            try self.validate(self.teamId, name: "teamId", parent: name, min: 1)
            try self.validate(self.teamId, name: "teamId", parent: name, pattern: "^\\S+$")
        }

        private enum CodingKeys: String, CodingKey {
            case channelId = "channelId"
            case teamId = "teamId"
        }
    }

    public struct DeleteSlackChannelConfigurationResult: AWSDecodableShape {
        public init() {}
    }

    public struct DeleteSlackWorkspaceConfigurationRequest: AWSEncodableShape {
        /// The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
        /// T012ABCDEFG.
        public let teamId: String

        public init(teamId: String) {
            self.teamId = teamId
        }

        public func validate(name: String) throws {
            try self.validate(self.teamId, name: "teamId", parent: name, max: 256)
            try self.validate(self.teamId, name: "teamId", parent: name, min: 1)
            try self.validate(self.teamId, name: "teamId", parent: name, pattern: "^\\S+$")
        }

        private enum CodingKeys: String, CodingKey {
            case teamId = "teamId"
        }
    }

    public struct DeleteSlackWorkspaceConfigurationResult: AWSDecodableShape {
        public init() {}
    }

    public struct GetAccountAliasRequest: AWSEncodableShape {
        public init() {}
    }

    public struct GetAccountAliasResult: AWSDecodableShape {
        /// An alias or short name for an Amazon Web Services account.
        public let accountAlias: String?

        public init(accountAlias: String? = nil) {
            self.accountAlias = accountAlias
        }

        private enum CodingKeys: String, CodingKey {
            case accountAlias = "accountAlias"
        }
    }

    public struct ListSlackChannelConfigurationsRequest: AWSEncodableShape {
        /// If the results of a search are large, the API only returns a portion of the results and
        /// includes a nextToken pagination token in the response. To retrieve the next batch of results, reissue the search request and include the returned token.
        /// When the API returns the last set of results, the response doesn't include a pagination token value.
        public let nextToken: String?

        public init(nextToken: String? = nil) {
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 256)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^\\S+$")
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
        }
    }

    public struct ListSlackChannelConfigurationsResult: AWSDecodableShape {
        /// The point where pagination should resume when the response returns only partial results.
        public let nextToken: String?
        /// The configurations for a Slack channel.
        public let slackChannelConfigurations: [SlackChannelConfiguration]

        public init(nextToken: String? = nil, slackChannelConfigurations: [SlackChannelConfiguration]) {
            self.nextToken = nextToken
            self.slackChannelConfigurations = slackChannelConfigurations
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case slackChannelConfigurations = "slackChannelConfigurations"
        }
    }

    public struct ListSlackWorkspaceConfigurationsRequest: AWSEncodableShape {
        /// If the results of a search are large, the API only returns a portion of the results and
        /// includes a nextToken pagination token in the response. To retrieve the next batch of results, reissue the search request and include the returned token.
        /// When the API returns the last set of results, the response doesn't include a pagination token value.
        public let nextToken: String?

        public init(nextToken: String? = nil) {
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 256)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^\\S+$")
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
        }
    }

    public struct ListSlackWorkspaceConfigurationsResult: AWSDecodableShape {
        /// The point where pagination should resume when the response returns only partial results.
        public let nextToken: String?
        /// The configurations for a Slack workspace.
        public let slackWorkspaceConfigurations: [SlackWorkspaceConfiguration]?

        public init(nextToken: String? = nil, slackWorkspaceConfigurations: [SlackWorkspaceConfiguration]? = nil) {
            self.nextToken = nextToken
            self.slackWorkspaceConfigurations = slackWorkspaceConfigurations
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case slackWorkspaceConfigurations = "slackWorkspaceConfigurations"
        }
    }

    public struct PutAccountAliasRequest: AWSEncodableShape {
        /// An alias or short name for an Amazon Web Services account.
        public let accountAlias: String

        public init(accountAlias: String) {
            self.accountAlias = accountAlias
        }

        public func validate(name: String) throws {
            try self.validate(self.accountAlias, name: "accountAlias", parent: name, max: 30)
            try self.validate(self.accountAlias, name: "accountAlias", parent: name, min: 1)
            try self.validate(self.accountAlias, name: "accountAlias", parent: name, pattern: "^[\\w\\- ]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case accountAlias = "accountAlias"
        }
    }

    public struct PutAccountAliasResult: AWSDecodableShape {
        public init() {}
    }

    public struct RegisterSlackWorkspaceForOrganizationRequest: AWSEncodableShape {
        /// The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
        /// T012ABCDEFG. Specify the Slack workspace that you want to use for your organization.
        public let teamId: String

        public init(teamId: String) {
            self.teamId = teamId
        }

        public func validate(name: String) throws {
            try self.validate(self.teamId, name: "teamId", parent: name, max: 256)
            try self.validate(self.teamId, name: "teamId", parent: name, min: 1)
            try self.validate(self.teamId, name: "teamId", parent: name, pattern: "^\\S+$")
        }

        private enum CodingKeys: String, CodingKey {
            case teamId = "teamId"
        }
    }

    public struct RegisterSlackWorkspaceForOrganizationResult: AWSDecodableShape {
        /// Whether the Amazon Web Services account is a management or member account that's part of an organization in Organizations.
        public let accountType: AccountType?
        /// The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
        /// T012ABCDEFG.
        public let teamId: String?
        /// The name of the Slack workspace.
        public let teamName: String?

        public init(accountType: AccountType? = nil, teamId: String? = nil, teamName: String? = nil) {
            self.accountType = accountType
            self.teamId = teamId
            self.teamName = teamName
        }

        private enum CodingKeys: String, CodingKey {
            case accountType = "accountType"
            case teamId = "teamId"
            case teamName = "teamName"
        }
    }

    public struct SlackChannelConfiguration: AWSDecodableShape {
        /// The channel ID in Slack. This ID identifies a channel within a Slack workspace.
        public let channelId: String
        /// The name of the Slack channel that you configured with the Amazon Web Services Support App for your Amazon Web Services account.
        public let channelName: String?
        /// The Amazon Resource Name (ARN) of an IAM role that you want to
        /// use to perform operations on Amazon Web Services. For more information, see Managing access to
        /// the Amazon Web Services Support App in the Amazon Web Services Support User Guide.
        public let channelRoleArn: String?
        /// Whether you want to get notified when a support case has a new correspondence.
        public let notifyOnAddCorrespondenceToCase: Bool?
        /// The case severity for a support case that you want to receive notifications.
        public let notifyOnCaseSeverity: NotificationSeverityLevel?
        /// Whether you want to get notified when a support case is created or reopened.
        public let notifyOnCreateOrReopenCase: Bool?
        /// Whether you want to get notified when a support case is resolved.
        public let notifyOnResolveCase: Bool?
        /// The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
        /// T012ABCDEFG.
        public let teamId: String

        public init(channelId: String, channelName: String? = nil, channelRoleArn: String? = nil, notifyOnAddCorrespondenceToCase: Bool? = nil, notifyOnCaseSeverity: NotificationSeverityLevel? = nil, notifyOnCreateOrReopenCase: Bool? = nil, notifyOnResolveCase: Bool? = nil, teamId: String) {
            self.channelId = channelId
            self.channelName = channelName
            self.channelRoleArn = channelRoleArn
            self.notifyOnAddCorrespondenceToCase = notifyOnAddCorrespondenceToCase
            self.notifyOnCaseSeverity = notifyOnCaseSeverity
            self.notifyOnCreateOrReopenCase = notifyOnCreateOrReopenCase
            self.notifyOnResolveCase = notifyOnResolveCase
            self.teamId = teamId
        }

        private enum CodingKeys: String, CodingKey {
            case channelId = "channelId"
            case channelName = "channelName"
            case channelRoleArn = "channelRoleArn"
            case notifyOnAddCorrespondenceToCase = "notifyOnAddCorrespondenceToCase"
            case notifyOnCaseSeverity = "notifyOnCaseSeverity"
            case notifyOnCreateOrReopenCase = "notifyOnCreateOrReopenCase"
            case notifyOnResolveCase = "notifyOnResolveCase"
            case teamId = "teamId"
        }
    }

    public struct SlackWorkspaceConfiguration: AWSDecodableShape {
        /// Whether to allow member accounts to authorize Slack workspaces. Member accounts must be part of an organization in Organizations.
        public let allowOrganizationMemberAccount: Bool?
        /// The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
        /// T012ABCDEFG.
        public let teamId: String
        /// The name of the Slack workspace.
        public let teamName: String?

        public init(allowOrganizationMemberAccount: Bool? = nil, teamId: String, teamName: String? = nil) {
            self.allowOrganizationMemberAccount = allowOrganizationMemberAccount
            self.teamId = teamId
            self.teamName = teamName
        }

        private enum CodingKeys: String, CodingKey {
            case allowOrganizationMemberAccount = "allowOrganizationMemberAccount"
            case teamId = "teamId"
            case teamName = "teamName"
        }
    }

    public struct UpdateSlackChannelConfigurationRequest: AWSEncodableShape {
        /// The channel ID in Slack. This ID identifies a channel within a Slack workspace.
        public let channelId: String
        /// The Slack channel name that you want to update.
        public let channelName: String?
        /// The Amazon Resource Name (ARN) of an IAM role that you want to
        /// use to perform operations on Amazon Web Services. For more information, see Managing access to
        /// the Amazon Web Services Support App in the Amazon Web Services Support User Guide.
        public let channelRoleArn: String?
        /// Whether you want to get notified when a support case has a new correspondence.
        public let notifyOnAddCorrespondenceToCase: Bool?
        /// The case severity for a support case that you want to receive notifications. If you specify high or all, at least one of the following parameters must be true:    notifyOnAddCorrespondenceToCase     notifyOnCreateOrReopenCase     notifyOnResolveCase    If you specify none, any of the following parameters that you specify in your request must be false:    notifyOnAddCorrespondenceToCase     notifyOnCreateOrReopenCase     notifyOnResolveCase     If you don't specify these parameters in your request, the Amazon Web Services Support App uses the current values by default.
        public let notifyOnCaseSeverity: NotificationSeverityLevel?
        /// Whether you want to get notified when a support case is created or reopened.
        public let notifyOnCreateOrReopenCase: Bool?
        /// Whether you want to get notified when a support case is resolved.
        public let notifyOnResolveCase: Bool?
        /// The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
        /// T012ABCDEFG.
        public let teamId: String

        public init(channelId: String, channelName: String? = nil, channelRoleArn: String? = nil, notifyOnAddCorrespondenceToCase: Bool? = nil, notifyOnCaseSeverity: NotificationSeverityLevel? = nil, notifyOnCreateOrReopenCase: Bool? = nil, notifyOnResolveCase: Bool? = nil, teamId: String) {
            self.channelId = channelId
            self.channelName = channelName
            self.channelRoleArn = channelRoleArn
            self.notifyOnAddCorrespondenceToCase = notifyOnAddCorrespondenceToCase
            self.notifyOnCaseSeverity = notifyOnCaseSeverity
            self.notifyOnCreateOrReopenCase = notifyOnCreateOrReopenCase
            self.notifyOnResolveCase = notifyOnResolveCase
            self.teamId = teamId
        }

        public func validate(name: String) throws {
            try self.validate(self.channelId, name: "channelId", parent: name, max: 256)
            try self.validate(self.channelId, name: "channelId", parent: name, min: 1)
            try self.validate(self.channelId, name: "channelId", parent: name, pattern: "^\\S+$")
            try self.validate(self.channelName, name: "channelName", parent: name, max: 256)
            try self.validate(self.channelName, name: "channelName", parent: name, min: 1)
            try self.validate(self.channelName, name: "channelName", parent: name, pattern: "^.+$")
            try self.validate(self.channelRoleArn, name: "channelRoleArn", parent: name, max: 2048)
            try self.validate(self.channelRoleArn, name: "channelRoleArn", parent: name, min: 31)
            try self.validate(self.channelRoleArn, name: "channelRoleArn", parent: name, pattern: "^arn:aws:iam::[0-9]{12}:role/(.+)$")
            try self.validate(self.teamId, name: "teamId", parent: name, max: 256)
            try self.validate(self.teamId, name: "teamId", parent: name, min: 1)
            try self.validate(self.teamId, name: "teamId", parent: name, pattern: "^\\S+$")
        }

        private enum CodingKeys: String, CodingKey {
            case channelId = "channelId"
            case channelName = "channelName"
            case channelRoleArn = "channelRoleArn"
            case notifyOnAddCorrespondenceToCase = "notifyOnAddCorrespondenceToCase"
            case notifyOnCaseSeverity = "notifyOnCaseSeverity"
            case notifyOnCreateOrReopenCase = "notifyOnCreateOrReopenCase"
            case notifyOnResolveCase = "notifyOnResolveCase"
            case teamId = "teamId"
        }
    }

    public struct UpdateSlackChannelConfigurationResult: AWSDecodableShape {
        /// The channel ID in Slack. This ID identifies a channel within a Slack workspace.
        public let channelId: String?
        /// The name of the Slack channel that you configure for the Amazon Web Services Support App.
        public let channelName: String?
        /// The Amazon Resource Name (ARN) of an IAM role that you want to
        /// use to perform operations on Amazon Web Services. For more information, see Managing access to
        /// the Amazon Web Services Support App in the Amazon Web Services Support User Guide.
        public let channelRoleArn: String?
        /// Whether you want to get notified when a support case has a new correspondence.
        public let notifyOnAddCorrespondenceToCase: Bool?
        /// The case severity for a support case that you want to receive notifications.
        public let notifyOnCaseSeverity: NotificationSeverityLevel?
        /// Whether you want to get notified when a support case is created or reopened.
        public let notifyOnCreateOrReopenCase: Bool?
        /// Whether you want to get notified when a support case is resolved.
        public let notifyOnResolveCase: Bool?
        /// The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
        /// T012ABCDEFG.
        public let teamId: String?

        public init(channelId: String? = nil, channelName: String? = nil, channelRoleArn: String? = nil, notifyOnAddCorrespondenceToCase: Bool? = nil, notifyOnCaseSeverity: NotificationSeverityLevel? = nil, notifyOnCreateOrReopenCase: Bool? = nil, notifyOnResolveCase: Bool? = nil, teamId: String? = nil) {
            self.channelId = channelId
            self.channelName = channelName
            self.channelRoleArn = channelRoleArn
            self.notifyOnAddCorrespondenceToCase = notifyOnAddCorrespondenceToCase
            self.notifyOnCaseSeverity = notifyOnCaseSeverity
            self.notifyOnCreateOrReopenCase = notifyOnCreateOrReopenCase
            self.notifyOnResolveCase = notifyOnResolveCase
            self.teamId = teamId
        }

        private enum CodingKeys: String, CodingKey {
            case channelId = "channelId"
            case channelName = "channelName"
            case channelRoleArn = "channelRoleArn"
            case notifyOnAddCorrespondenceToCase = "notifyOnAddCorrespondenceToCase"
            case notifyOnCaseSeverity = "notifyOnCaseSeverity"
            case notifyOnCreateOrReopenCase = "notifyOnCreateOrReopenCase"
            case notifyOnResolveCase = "notifyOnResolveCase"
            case teamId = "teamId"
        }
    }
}

// MARK: - Errors

/// Error enum for SupportApp
public struct SupportAppErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SupportApp
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// You don't have sufficient permission to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// Your request has a conflict. For example, you might receive this error if you try the following:   Add, update, or delete a Slack channel configuration before you add a Slack workspace to your Amazon Web Services account.   Add a Slack channel configuration that already exists in your Amazon Web Services account.   Delete a Slack channel configuration for a live chat channel.   Delete a Slack workspace from your Amazon Web Services account that has an active live chat channel.   Call the RegisterSlackWorkspaceForOrganization API from an Amazon Web Services account that doesn't belong to an organization.   Call the RegisterSlackWorkspaceForOrganization API from a member account, but the management account hasn't registered that workspace yet for the organization.
    public static var conflictException: Self { .init(.conflictException) }
    /// We can’t process your request right now because of a server issue. Try again later.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The specified resource is missing or doesn't exist, such as an account alias, Slack channel configuration, or Slack workspace configuration.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Your Service Quotas request exceeds the quota for the service. For example, your Service Quotas request to Amazon Web Services Support App might exceed the maximum number of workspaces or channels per account, or the maximum number of accounts per Slack channel.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// Your request input doesn't meet the constraints that the Amazon Web Services Support App specifies.
    public static var validationException: Self { .init(.validationException) }
}

extension SupportAppErrorType: Equatable {
    public static func == (lhs: SupportAppErrorType, rhs: SupportAppErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SupportAppErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
