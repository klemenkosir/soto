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

/// Service object for interacting with AWS SageMakerA2IRuntime service.
///
/// Amazon Augmented AI (Amazon A2I) adds the benefit of human judgment to any machine learning application. When an AI application can't evaluate data with a high degree of confidence, human reviewers can take over. This human review is called a human review workflow. To create and start a human review workflow, you need three resources: a worker task template, a flow definition, and a human loop. For information about these resources and prerequisites for using Amazon A2I, see Get Started with Amazon Augmented AI in the Amazon SageMaker Developer Guide. This API reference includes information about API actions and data types that you can use to interact with Amazon A2I programmatically. Use this guide to:   Start a human loop with the StartHumanLoop operation when using Amazon A2I with a custom task type. To learn more about the difference between custom and built-in task types, see Use Task Types . To learn how to start a human loop using this API, see Create and Start a Human Loop for a Custom Task Type  in the Amazon SageMaker Developer Guide.   Manage your human loops. You can list all human loops that you have created, describe individual human loops, and stop and delete human loops. To learn more, see Monitor and Manage Your Human Loop  in the Amazon SageMaker Developer Guide.   Amazon A2I integrates APIs from various AWS services to create and start human review workflows for those services. To learn how Amazon A2I uses these APIs, see Use APIs in Amazon A2I in the Amazon SageMaker Developer Guide.
public struct SageMakerA2IRuntime: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the SageMakerA2IRuntime client
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
            serviceName: "SageMakerA2IRuntime",
            serviceIdentifier: "a2i-runtime.sagemaker",
            signingName: "sagemaker",
            serviceProtocol: .restjson,
            apiVersion: "2019-11-07",
            endpoint: endpoint,
            errorType: SageMakerA2IRuntimeErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Deletes the specified human loop for a flow definition. If the human loop was deleted, this operation will return a ResourceNotFoundException.
    @Sendable
    public func deleteHumanLoop(_ input: DeleteHumanLoopRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteHumanLoopResponse {
        return try await self.client.execute(
            operation: "DeleteHumanLoop", 
            path: "/human-loops/{HumanLoopName}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about the specified human loop. If the human loop was deleted, this operation will return a ResourceNotFoundException error.
    @Sendable
    public func describeHumanLoop(_ input: DescribeHumanLoopRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeHumanLoopResponse {
        return try await self.client.execute(
            operation: "DescribeHumanLoop", 
            path: "/human-loops/{HumanLoopName}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about human loops, given the specified parameters. If a human loop was deleted, it will not be included.
    @Sendable
    public func listHumanLoops(_ input: ListHumanLoopsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListHumanLoopsResponse {
        return try await self.client.execute(
            operation: "ListHumanLoops", 
            path: "/human-loops", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Starts a human loop, provided that at least one activation condition is met.
    @Sendable
    public func startHumanLoop(_ input: StartHumanLoopRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartHumanLoopResponse {
        return try await self.client.execute(
            operation: "StartHumanLoop", 
            path: "/human-loops", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Stops the specified human loop.
    @Sendable
    public func stopHumanLoop(_ input: StopHumanLoopRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StopHumanLoopResponse {
        return try await self.client.execute(
            operation: "StopHumanLoop", 
            path: "/human-loops/stop", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension SageMakerA2IRuntime {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: SageMakerA2IRuntime, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension SageMakerA2IRuntime {
    /// Returns information about human loops, given the specified parameters. If a human loop was deleted, it will not be included.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listHumanLoopsPaginator(
        _ input: ListHumanLoopsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListHumanLoopsRequest, ListHumanLoopsResponse> {
        return .init(
            input: input,
            command: self.listHumanLoops,
            inputKey: \ListHumanLoopsRequest.nextToken,
            outputKey: \ListHumanLoopsResponse.nextToken,
            logger: logger
        )
    }
}

extension SageMakerA2IRuntime.ListHumanLoopsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SageMakerA2IRuntime.ListHumanLoopsRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            flowDefinitionArn: self.flowDefinitionArn,
            maxResults: self.maxResults,
            nextToken: token,
            sortOrder: self.sortOrder
        )
    }
}
