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

/// Service object for interacting with AWS Ivschat service.
///
///  Introduction  The Amazon IVS Chat control-plane API enables you to create and manage Amazon IVS Chat resources. You also need to integrate with the  Amazon IVS Chat Messaging API, to enable users to interact with chat rooms in real time. The API is an AWS regional service. For a list of supported regions and Amazon IVS Chat HTTPS service endpoints, see the Amazon IVS Chat information on the Amazon IVS page in the AWS General Reference.   Notes on terminology:    You create service applications using the Amazon IVS Chat API. We refer to these as applications.   You create front-end client applications (browser and Android/iOS apps) using the Amazon IVS Chat Messaging API. We refer to these as clients.     Key Concepts     LoggingConfiguration — A configuration that allows customers to store and record sent messages in a chat room.    Room — The central Amazon IVS Chat resource through which clients connect to and exchange chat messages.    Tagging  A tag is a metadata label that you assign to an AWS resource. A tag comprises a key and a value, both set by you. For example, you might set a tag as topic:nature to label a particular video category. See Tagging AWS Resources for more information, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS Chat has no service-specific constraints beyond what is documented there. Tags can help you identify and organize your AWS resources. For example, you can use the same tag for different resources to indicate that they are related. You can also use tags to manage access (see Access Tags). The Amazon IVS Chat API has these tag-related endpoints: TagResource, UntagResource, and ListTagsForResource. The following resource supports tagging: Room. At most 50 tags can be applied to a resource.  API Access Security  Your Amazon IVS Chat applications (service applications and clients) must be authenticated and authorized to access Amazon IVS Chat resources. Note the differences between these concepts:    Authentication is about verifying identity. Requests to the Amazon IVS Chat API must be signed to verify your identity.    Authorization is about granting permissions. Your IAM roles need to have permissions for Amazon IVS Chat API requests.   Users (viewers) connect to a room using secure access tokens that you create using the CreateChatToken endpoint through the AWS SDK. You call CreateChatToken for every user’s chat session, passing identity and authorization information about the user.  Signing API Requests  HTTP API requests must be signed with an AWS SigV4 signature using your AWS security credentials. The AWS Command Line Interface (CLI) and the AWS SDKs take care of signing the underlying API calls for you. However, if your application calls the Amazon IVS Chat HTTP API directly, it’s your responsibility to sign the requests. You generate a signature using valid AWS credentials for an IAM role that has permission to perform the requested action. For example, DeleteMessage requests must be made using an IAM role that has the ivschat:DeleteMessage permission. For more information:   Authentication and generating signatures — See Authenticating Requests (Amazon Web Services Signature Version 4) in the Amazon Web Services General Reference.   Managing Amazon IVS permissions — See Identity and Access Management on the Security page of the Amazon IVS User Guide.    Amazon Resource Names (ARNs)  ARNs uniquely identify AWS resources. An ARN is required when you need to specify a resource unambiguously across all of AWS, such as in IAM policies and API calls. For more information, see Amazon Resource Names in the AWS General Reference.  Messaging Endpoints     DeleteMessage — Sends an event to a specific room which directs clients to delete a specific message; that is, unrender it from view and delete it from the client’s chat history. This event’s EventName is aws:DELETE_MESSAGE. This replicates the  DeleteMessage WebSocket operation in the Amazon IVS Chat Messaging API.    DisconnectUser — Disconnects all connections using a specified user ID from a room. This replicates the  DisconnectUser WebSocket operation in the Amazon IVS Chat Messaging API.    SendEvent — Sends an event to a room. Use this within your application’s business logic to send events to clients of a room; e.g., to notify clients to change the way the chat UI is rendered.    Chat Token Endpoint     CreateChatToken — Creates an encrypted token that is used by a chat participant to establish an individual WebSocket chat connection to a room. When the token is used to connect to chat, the connection is valid for the session duration specified in the request. The token becomes invalid at the token-expiration timestamp included in the response.    Room Endpoints     CreateRoom — Creates a room that allows clients to connect and pass messages.    DeleteRoom — Deletes the specified room.    GetRoom — Gets the specified room.    ListRooms — Gets summary information about all your rooms in the AWS region where the API request is processed.     UpdateRoom — Updates a room’s configuration.    Logging Configuration Endpoints     CreateLoggingConfiguration — Creates a logging configuration that allows clients to store and record sent messages.    DeleteLoggingConfiguration — Deletes the specified logging configuration.    GetLoggingConfiguration — Gets the specified logging configuration.    ListLoggingConfigurations — Gets summary information about all your logging configurations in the AWS region where the API request is processed.    UpdateLoggingConfiguration — Updates a specified logging configuration.    Tags Endpoints     ListTagsForResource — Gets information about AWS tags for the specified ARN.    TagResource — Adds or updates tags for the AWS resource with the specified ARN.    UntagResource — Removes tags from the resource with the specified ARN.   All the above are HTTP operations. There is a separate messaging API for managing Chat resources; see the  Amazon IVS Chat Messaging API Reference.
public struct Ivschat: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Ivschat client
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
            serviceName: "Ivschat",
            serviceIdentifier: "ivschat",
            serviceProtocol: .restjson,
            apiVersion: "2020-07-14",
            endpoint: endpoint,
            errorType: IvschatErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Creates an encrypted token that is used by a chat participant to establish an individual WebSocket chat connection to a room. When the token is used to connect to chat, the connection is valid for the session duration specified in the request. The token becomes invalid at the token-expiration timestamp included in the response. Use the capabilities field to permit an end user to send messages or moderate a room. The attributes field securely attaches structured data to the chat session; the data is included within each message sent by the end user and received by other participants in the room. Common use cases for attributes include passing end-user profile data like an icon, display name, colors, badges, and other display features. Encryption keys are owned by Amazon IVS Chat and never used directly by your application.
    @Sendable
    public func createChatToken(_ input: CreateChatTokenRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateChatTokenResponse {
        return try await self.client.execute(
            operation: "CreateChatToken", 
            path: "/CreateChatToken", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a logging configuration that allows clients to store and record sent messages.
    @Sendable
    public func createLoggingConfiguration(_ input: CreateLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateLoggingConfigurationResponse {
        return try await self.client.execute(
            operation: "CreateLoggingConfiguration", 
            path: "/CreateLoggingConfiguration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a room that allows clients to connect and pass messages.
    @Sendable
    public func createRoom(_ input: CreateRoomRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateRoomResponse {
        return try await self.client.execute(
            operation: "CreateRoom", 
            path: "/CreateRoom", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified logging configuration.
    @Sendable
    public func deleteLoggingConfiguration(_ input: DeleteLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteLoggingConfiguration", 
            path: "/DeleteLoggingConfiguration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Sends an event to a specific room which directs clients to delete a specific message; that is, unrender it from view and delete it from the client’s chat history. This event’s EventName is aws:DELETE_MESSAGE. This replicates the  DeleteMessage WebSocket operation in the Amazon IVS Chat Messaging API.
    @Sendable
    public func deleteMessage(_ input: DeleteMessageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteMessageResponse {
        return try await self.client.execute(
            operation: "DeleteMessage", 
            path: "/DeleteMessage", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified room.
    @Sendable
    public func deleteRoom(_ input: DeleteRoomRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteRoom", 
            path: "/DeleteRoom", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Disconnects all connections using a specified user ID from a room. This replicates the  DisconnectUser WebSocket operation in the Amazon IVS Chat Messaging API.
    @Sendable
    public func disconnectUser(_ input: DisconnectUserRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisconnectUserResponse {
        return try await self.client.execute(
            operation: "DisconnectUser", 
            path: "/DisconnectUser", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the specified logging configuration.
    @Sendable
    public func getLoggingConfiguration(_ input: GetLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetLoggingConfigurationResponse {
        return try await self.client.execute(
            operation: "GetLoggingConfiguration", 
            path: "/GetLoggingConfiguration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the specified room.
    @Sendable
    public func getRoom(_ input: GetRoomRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetRoomResponse {
        return try await self.client.execute(
            operation: "GetRoom", 
            path: "/GetRoom", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets summary information about all your logging configurations in the AWS region where the API request is processed.
    @Sendable
    public func listLoggingConfigurations(_ input: ListLoggingConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListLoggingConfigurationsResponse {
        return try await self.client.execute(
            operation: "ListLoggingConfigurations", 
            path: "/ListLoggingConfigurations", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets summary information about all your rooms in the AWS region where the API request is processed. Results are sorted in descending order of updateTime.
    @Sendable
    public func listRooms(_ input: ListRoomsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListRoomsResponse {
        return try await self.client.execute(
            operation: "ListRooms", 
            path: "/ListRooms", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets information about AWS tags for the specified ARN.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Sends an event to a room. Use this within your application’s business logic to send events to clients of a room; e.g., to notify clients to change the way the chat UI is rendered.
    @Sendable
    public func sendEvent(_ input: SendEventRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> SendEventResponse {
        return try await self.client.execute(
            operation: "SendEvent", 
            path: "/SendEvent", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds or updates tags for the AWS resource with the specified ARN.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes tags from the resource with the specified ARN.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a specified logging configuration.
    @Sendable
    public func updateLoggingConfiguration(_ input: UpdateLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateLoggingConfigurationResponse {
        return try await self.client.execute(
            operation: "UpdateLoggingConfiguration", 
            path: "/UpdateLoggingConfiguration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a room’s configuration.
    @Sendable
    public func updateRoom(_ input: UpdateRoomRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateRoomResponse {
        return try await self.client.execute(
            operation: "UpdateRoom", 
            path: "/UpdateRoom", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension Ivschat {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Ivschat, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Ivschat {
    /// Gets summary information about all your logging configurations in the AWS region where the API request is processed.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listLoggingConfigurationsPaginator(
        _ input: ListLoggingConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListLoggingConfigurationsRequest, ListLoggingConfigurationsResponse> {
        return .init(
            input: input,
            command: self.listLoggingConfigurations,
            inputKey: \ListLoggingConfigurationsRequest.nextToken,
            outputKey: \ListLoggingConfigurationsResponse.nextToken,
            logger: logger
        )
    }

    /// Gets summary information about all your rooms in the AWS region where the API request is processed. Results are sorted in descending order of updateTime.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listRoomsPaginator(
        _ input: ListRoomsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListRoomsRequest, ListRoomsResponse> {
        return .init(
            input: input,
            command: self.listRooms,
            inputKey: \ListRoomsRequest.nextToken,
            outputKey: \ListRoomsResponse.nextToken,
            logger: logger
        )
    }
}

extension Ivschat.ListLoggingConfigurationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Ivschat.ListLoggingConfigurationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Ivschat.ListRoomsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Ivschat.ListRoomsRequest {
        return .init(
            loggingConfigurationIdentifier: self.loggingConfigurationIdentifier,
            maxResults: self.maxResults,
            messageReviewHandlerUri: self.messageReviewHandlerUri,
            name: self.name,
            nextToken: token
        )
    }
}
