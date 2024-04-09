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

@_exported import SotoCore

/// Service object for interacting with AWS Chatbot service.
///
/// AWS Chatbot API
public struct Chatbot: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Chatbot client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middleware: Middleware chain used to edit requests before they are sent and responses before they are decoded 
    ///     - timeout: Timeout value for HTTP requests
    ///     - byteBufferAllocator: Allocator for ByteBuffers
    ///     - options: Service options
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        middleware: AWSMiddlewareProtocol? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            serviceName: "Chatbot",
            serviceIdentifier: "chatbot",
            serviceProtocol: .restjson,
            apiVersion: "2017-10-11",
            endpoint: endpoint,
            errorType: ChatbotErrorType.self,
            xmlNamespace: "http://wheatley.amazonaws.com/orchestration/2017-10-11/",
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Creates Chime Webhook Configuration
    @Sendable
    public func createChimeWebhookConfiguration(_ input: CreateChimeWebhookConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateChimeWebhookConfigurationResult {
        return try await self.client.execute(
            operation: "CreateChimeWebhookConfiguration", 
            path: "/create-chime-webhook-configuration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates MS Teams Channel Configuration
    @Sendable
    public func createMicrosoftTeamsChannelConfiguration(_ input: CreateTeamsChannelConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateTeamsChannelConfigurationResult {
        return try await self.client.execute(
            operation: "CreateMicrosoftTeamsChannelConfiguration", 
            path: "/create-ms-teams-channel-configuration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates Slack Channel Configuration
    @Sendable
    public func createSlackChannelConfiguration(_ input: CreateSlackChannelConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateSlackChannelConfigurationResult {
        return try await self.client.execute(
            operation: "CreateSlackChannelConfiguration", 
            path: "/create-slack-channel-configuration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a Chime Webhook Configuration
    @Sendable
    public func deleteChimeWebhookConfiguration(_ input: DeleteChimeWebhookConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteChimeWebhookConfigurationResult {
        return try await self.client.execute(
            operation: "DeleteChimeWebhookConfiguration", 
            path: "/delete-chime-webhook-configuration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes MS Teams Channel Configuration
    @Sendable
    public func deleteMicrosoftTeamsChannelConfiguration(_ input: DeleteTeamsChannelConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteTeamsChannelConfigurationResult {
        return try await self.client.execute(
            operation: "DeleteMicrosoftTeamsChannelConfiguration", 
            path: "/delete-ms-teams-channel-configuration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the Microsoft Teams team authorization allowing for channels to be configured in that Microsoft Teams team. Note that the Microsoft Teams team must have no channels configured to remove it.
    @Sendable
    public func deleteMicrosoftTeamsConfiguredTeam(_ input: DeleteTeamsConfiguredTeamRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteTeamsConfiguredTeamResult {
        return try await self.client.execute(
            operation: "DeleteMicrosoftTeamsConfiguredTeam", 
            path: "/delete-ms-teams-configured-teams", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a Teams user identity
    @Sendable
    public func deleteMicrosoftTeamsUserIdentity(_ input: DeleteMicrosoftTeamsUserIdentityRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteMicrosoftTeamsUserIdentityResult {
        return try await self.client.execute(
            operation: "DeleteMicrosoftTeamsUserIdentity", 
            path: "/delete-ms-teams-user-identity", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes Slack Channel Configuration
    @Sendable
    public func deleteSlackChannelConfiguration(_ input: DeleteSlackChannelConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteSlackChannelConfigurationResult {
        return try await self.client.execute(
            operation: "DeleteSlackChannelConfiguration", 
            path: "/delete-slack-channel-configuration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a Slack user identity
    @Sendable
    public func deleteSlackUserIdentity(_ input: DeleteSlackUserIdentityRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteSlackUserIdentityResult {
        return try await self.client.execute(
            operation: "DeleteSlackUserIdentity", 
            path: "/delete-slack-user-identity", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the Slack workspace authorization that allows channels to be configured in that workspace. This requires all configured channels in the workspace to be deleted.
    @Sendable
    public func deleteSlackWorkspaceAuthorization(_ input: DeleteSlackWorkspaceAuthorizationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteSlackWorkspaceAuthorizationResult {
        return try await self.client.execute(
            operation: "DeleteSlackWorkspaceAuthorization", 
            path: "/delete-slack-workspace-authorization", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists Chime Webhook Configurations optionally filtered by ChatConfigurationArn
    @Sendable
    public func describeChimeWebhookConfigurations(_ input: DescribeChimeWebhookConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeChimeWebhookConfigurationsResult {
        return try await self.client.execute(
            operation: "DescribeChimeWebhookConfigurations", 
            path: "/describe-chime-webhook-configurations", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists Slack Channel Configurations optionally filtered by ChatConfigurationArn
    @Sendable
    public func describeSlackChannelConfigurations(_ input: DescribeSlackChannelConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeSlackChannelConfigurationsResult {
        return try await self.client.execute(
            operation: "DescribeSlackChannelConfigurations", 
            path: "/describe-slack-channel-configurations", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all Slack user identities with a mapped role.
    @Sendable
    public func describeSlackUserIdentities(_ input: DescribeSlackUserIdentitiesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeSlackUserIdentitiesResult {
        return try await self.client.execute(
            operation: "DescribeSlackUserIdentities", 
            path: "/describe-slack-user-identities", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all authorized Slack Workspaces for AWS Account
    @Sendable
    public func describeSlackWorkspaces(_ input: DescribeSlackWorkspacesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeSlackWorkspacesResult {
        return try await self.client.execute(
            operation: "DescribeSlackWorkspaces", 
            path: "/describe-slack-workspaces", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Get Chatbot account level preferences
    @Sendable
    public func getAccountPreferences(_ input: GetAccountPreferencesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAccountPreferencesResult {
        return try await self.client.execute(
            operation: "GetAccountPreferences", 
            path: "/get-account-preferences", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Get a single MS Teams Channel Configurations
    @Sendable
    public func getMicrosoftTeamsChannelConfiguration(_ input: GetTeamsChannelConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetTeamsChannelConfigurationResult {
        return try await self.client.execute(
            operation: "GetMicrosoftTeamsChannelConfiguration", 
            path: "/get-ms-teams-channel-configuration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists MS Teams Channel Configurations optionally filtered by TeamId
    @Sendable
    public func listMicrosoftTeamsChannelConfigurations(_ input: ListTeamsChannelConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTeamsChannelConfigurationsResult {
        return try await self.client.execute(
            operation: "ListMicrosoftTeamsChannelConfigurations", 
            path: "/list-ms-teams-channel-configurations", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all authorized MS teams for AWS Account
    @Sendable
    public func listMicrosoftTeamsConfiguredTeams(_ input: ListMicrosoftTeamsConfiguredTeamsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListMicrosoftTeamsConfiguredTeamsResult {
        return try await self.client.execute(
            operation: "ListMicrosoftTeamsConfiguredTeams", 
            path: "/list-ms-teams-configured-teams", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all Microsoft Teams user identities with a mapped role.
    @Sendable
    public func listMicrosoftTeamsUserIdentities(_ input: ListMicrosoftTeamsUserIdentitiesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListMicrosoftTeamsUserIdentitiesResult {
        return try await self.client.execute(
            operation: "ListMicrosoftTeamsUserIdentities", 
            path: "/list-ms-teams-user-identities", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Update Chatbot account level preferences
    @Sendable
    public func updateAccountPreferences(_ input: UpdateAccountPreferencesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateAccountPreferencesResult {
        return try await self.client.execute(
            operation: "UpdateAccountPreferences", 
            path: "/update-account-preferences", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a Chime Webhook Configuration
    @Sendable
    public func updateChimeWebhookConfiguration(_ input: UpdateChimeWebhookConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateChimeWebhookConfigurationResult {
        return try await self.client.execute(
            operation: "UpdateChimeWebhookConfiguration", 
            path: "/update-chime-webhook-configuration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates MS Teams Channel Configuration
    @Sendable
    public func updateMicrosoftTeamsChannelConfiguration(_ input: UpdateTeamsChannelConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateTeamsChannelConfigurationResult {
        return try await self.client.execute(
            operation: "UpdateMicrosoftTeamsChannelConfiguration", 
            path: "/update-ms-teams-channel-configuration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates Slack Channel Configuration
    @Sendable
    public func updateSlackChannelConfiguration(_ input: UpdateSlackChannelConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateSlackChannelConfigurationResult {
        return try await self.client.execute(
            operation: "UpdateSlackChannelConfiguration", 
            path: "/update-slack-channel-configuration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension Chatbot {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Chatbot, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Chatbot {
    /// Lists Chime Webhook Configurations optionally filtered by ChatConfigurationArn
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeChimeWebhookConfigurationsPaginator(
        _ input: DescribeChimeWebhookConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeChimeWebhookConfigurationsRequest, DescribeChimeWebhookConfigurationsResult> {
        return .init(
            input: input,
            command: self.describeChimeWebhookConfigurations,
            inputKey: \DescribeChimeWebhookConfigurationsRequest.nextToken,
            outputKey: \DescribeChimeWebhookConfigurationsResult.nextToken,
            logger: logger
        )
    }

    /// Lists Slack Channel Configurations optionally filtered by ChatConfigurationArn
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeSlackChannelConfigurationsPaginator(
        _ input: DescribeSlackChannelConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeSlackChannelConfigurationsRequest, DescribeSlackChannelConfigurationsResult> {
        return .init(
            input: input,
            command: self.describeSlackChannelConfigurations,
            inputKey: \DescribeSlackChannelConfigurationsRequest.nextToken,
            outputKey: \DescribeSlackChannelConfigurationsResult.nextToken,
            logger: logger
        )
    }

    /// Lists all Slack user identities with a mapped role.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeSlackUserIdentitiesPaginator(
        _ input: DescribeSlackUserIdentitiesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeSlackUserIdentitiesRequest, DescribeSlackUserIdentitiesResult> {
        return .init(
            input: input,
            command: self.describeSlackUserIdentities,
            inputKey: \DescribeSlackUserIdentitiesRequest.nextToken,
            outputKey: \DescribeSlackUserIdentitiesResult.nextToken,
            logger: logger
        )
    }

    /// Lists all authorized Slack Workspaces for AWS Account
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeSlackWorkspacesPaginator(
        _ input: DescribeSlackWorkspacesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeSlackWorkspacesRequest, DescribeSlackWorkspacesResult> {
        return .init(
            input: input,
            command: self.describeSlackWorkspaces,
            inputKey: \DescribeSlackWorkspacesRequest.nextToken,
            outputKey: \DescribeSlackWorkspacesResult.nextToken,
            logger: logger
        )
    }

    /// Lists MS Teams Channel Configurations optionally filtered by TeamId
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listMicrosoftTeamsChannelConfigurationsPaginator(
        _ input: ListTeamsChannelConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListTeamsChannelConfigurationsRequest, ListTeamsChannelConfigurationsResult> {
        return .init(
            input: input,
            command: self.listMicrosoftTeamsChannelConfigurations,
            inputKey: \ListTeamsChannelConfigurationsRequest.nextToken,
            outputKey: \ListTeamsChannelConfigurationsResult.nextToken,
            logger: logger
        )
    }

    /// Lists all authorized MS teams for AWS Account
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listMicrosoftTeamsConfiguredTeamsPaginator(
        _ input: ListMicrosoftTeamsConfiguredTeamsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListMicrosoftTeamsConfiguredTeamsRequest, ListMicrosoftTeamsConfiguredTeamsResult> {
        return .init(
            input: input,
            command: self.listMicrosoftTeamsConfiguredTeams,
            inputKey: \ListMicrosoftTeamsConfiguredTeamsRequest.nextToken,
            outputKey: \ListMicrosoftTeamsConfiguredTeamsResult.nextToken,
            logger: logger
        )
    }

    /// Lists all Microsoft Teams user identities with a mapped role.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listMicrosoftTeamsUserIdentitiesPaginator(
        _ input: ListMicrosoftTeamsUserIdentitiesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListMicrosoftTeamsUserIdentitiesRequest, ListMicrosoftTeamsUserIdentitiesResult> {
        return .init(
            input: input,
            command: self.listMicrosoftTeamsUserIdentities,
            inputKey: \ListMicrosoftTeamsUserIdentitiesRequest.nextToken,
            outputKey: \ListMicrosoftTeamsUserIdentitiesResult.nextToken,
            logger: logger
        )
    }
}

extension Chatbot.DescribeChimeWebhookConfigurationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Chatbot.DescribeChimeWebhookConfigurationsRequest {
        return .init(
            chatConfigurationArn: self.chatConfigurationArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Chatbot.DescribeSlackChannelConfigurationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Chatbot.DescribeSlackChannelConfigurationsRequest {
        return .init(
            chatConfigurationArn: self.chatConfigurationArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Chatbot.DescribeSlackUserIdentitiesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Chatbot.DescribeSlackUserIdentitiesRequest {
        return .init(
            chatConfigurationArn: self.chatConfigurationArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Chatbot.DescribeSlackWorkspacesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Chatbot.DescribeSlackWorkspacesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Chatbot.ListMicrosoftTeamsConfiguredTeamsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Chatbot.ListMicrosoftTeamsConfiguredTeamsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Chatbot.ListMicrosoftTeamsUserIdentitiesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Chatbot.ListMicrosoftTeamsUserIdentitiesRequest {
        return .init(
            chatConfigurationArn: self.chatConfigurationArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Chatbot.ListTeamsChannelConfigurationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Chatbot.ListTeamsChannelConfigurationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            teamId: self.teamId
        )
    }
}
