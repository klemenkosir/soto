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

/// Service object for interacting with AWS TimestreamQuery service.
///
/// Amazon Timestream Query
public struct TimestreamQuery: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig
    /// endpoint storage
    let endpointStorage: AWSEndpointStorage

    // MARK: Initialization

    /// Initialize the TimestreamQuery client
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
            amzTarget: "Timestream_20181101",
            serviceName: "TimestreamQuery",
            serviceIdentifier: "query.timestream",
            signingName: "timestream",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2018-11-01",
            endpoint: endpoint,
            errorType: TimestreamQueryErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
        self.endpointStorage = .init()
    }





    // MARK: API Calls

    ///  Cancels a query that has been issued. Cancellation is provided only if the query has not completed running before the cancellation request was issued. Because cancellation is an idempotent operation, subsequent cancellation requests will return a CancellationMessage, indicating that the query has already been canceled. See code sample for details.
    @Sendable
    public func cancelQuery(_ input: CancelQueryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CancelQueryResponse {
        return try await self.client.execute(
            operation: "CancelQuery", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config
                .with(middleware: EndpointDiscoveryMiddleware(storage: self.endpointStorage, discover: self.getEndpoint, required: true)
            ), 
            input: input, 
            logger: logger
        )
    }

    ///  Create a scheduled query that will be run on your behalf at the configured schedule. Timestream assumes the execution role provided as part of the ScheduledQueryExecutionRoleArn parameter to run the query. You can use the NotificationConfiguration parameter to configure notification for your scheduled query operations.
    @Sendable
    public func createScheduledQuery(_ input: CreateScheduledQueryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateScheduledQueryResponse {
        return try await self.client.execute(
            operation: "CreateScheduledQuery", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config
                .with(middleware: EndpointDiscoveryMiddleware(storage: self.endpointStorage, discover: self.getEndpoint, required: true)
            ), 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a given scheduled query. This is an irreversible operation.
    @Sendable
    public func deleteScheduledQuery(_ input: DeleteScheduledQueryRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteScheduledQuery", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config
                .with(middleware: EndpointDiscoveryMiddleware(storage: self.endpointStorage, discover: self.getEndpoint, required: true)
            ), 
            input: input, 
            logger: logger
        )
    }

    /// DescribeEndpoints returns a list of available endpoints to make Timestream API calls against. This API is available through both Write and Query. Because the Timestream SDKs are designed to transparently work with the service’s architecture, including the management and mapping of the service endpoints, it is not recommended that you use this API unless:   You are using VPC endpoints (Amazon Web Services PrivateLink) with Timestream     Your application uses a programming language that does not yet have SDK support   You require better control over the client-side implementation   For detailed information on how and when to use and implement DescribeEndpoints, see The Endpoint Discovery Pattern.
    @Sendable
    public func describeEndpoints(_ input: DescribeEndpointsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeEndpointsResponse {
        return try await self.client.execute(
            operation: "DescribeEndpoints", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Provides detailed information about a scheduled query.
    @Sendable
    public func describeScheduledQuery(_ input: DescribeScheduledQueryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeScheduledQueryResponse {
        return try await self.client.execute(
            operation: "DescribeScheduledQuery", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config
                .with(middleware: EndpointDiscoveryMiddleware(storage: self.endpointStorage, discover: self.getEndpoint, required: true)
            ), 
            input: input, 
            logger: logger
        )
    }

    ///  You can use this API to run a scheduled query manually.
    @Sendable
    public func executeScheduledQuery(_ input: ExecuteScheduledQueryRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "ExecuteScheduledQuery", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config
                .with(middleware: EndpointDiscoveryMiddleware(storage: self.endpointStorage, discover: self.getEndpoint, required: true)
            ), 
            input: input, 
            logger: logger
        )
    }

    /// Gets a list of all scheduled queries in the caller's Amazon account and Region. ListScheduledQueries is eventually consistent.
    @Sendable
    public func listScheduledQueries(_ input: ListScheduledQueriesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListScheduledQueriesResponse {
        return try await self.client.execute(
            operation: "ListScheduledQueries", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config
                .with(middleware: EndpointDiscoveryMiddleware(storage: self.endpointStorage, discover: self.getEndpoint, required: true)
            ), 
            input: input, 
            logger: logger
        )
    }

    /// List all tags on a Timestream query resource.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config
                .with(middleware: EndpointDiscoveryMiddleware(storage: self.endpointStorage, discover: self.getEndpoint, required: true)
            ), 
            input: input, 
            logger: logger
        )
    }

    /// A synchronous operation that allows you to submit a query with parameters to be stored by Timestream for later running. Timestream only supports using this operation with ValidateOnly set to true.
    @Sendable
    public func prepareQuery(_ input: PrepareQueryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PrepareQueryResponse {
        return try await self.client.execute(
            operation: "PrepareQuery", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config
                .with(middleware: EndpointDiscoveryMiddleware(storage: self.endpointStorage, discover: self.getEndpoint, required: true)
            ), 
            input: input, 
            logger: logger
        )
    }

    ///  Query is a synchronous operation that enables you to run a query against your Amazon Timestream data. Query will time out after 60 seconds. You must update the default timeout in the SDK to support a timeout of 60 seconds. See the code sample for details.  Your query request will fail in the following cases:   If you submit a Query request with the same client token outside of the 5-minute idempotency window.    If you submit a Query request with the same client token, but change other parameters, within the 5-minute idempotency window.    If the size of the row (including the query metadata) exceeds 1 MB, then the query will fail with the following error message:   Query aborted as max page response size has been exceeded by the output result row    If the IAM principal of the query initiator and the result reader are not the same and/or the query initiator and the result reader do not have the same query string in the query requests, the query will fail with an Invalid pagination token error.
    @Sendable
    public func query(_ input: QueryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> QueryResponse {
        return try await self.client.execute(
            operation: "Query", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config
                .with(middleware: EndpointDiscoveryMiddleware(storage: self.endpointStorage, discover: self.getEndpoint, required: true)
            ), 
            input: input, 
            logger: logger
        )
    }

    /// Associate a set of tags with a Timestream resource. You can then activate these user-defined tags so that they appear on the Billing and Cost Management console for cost allocation tracking.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config
                .with(middleware: EndpointDiscoveryMiddleware(storage: self.endpointStorage, discover: self.getEndpoint, required: true)
            ), 
            input: input, 
            logger: logger
        )
    }

    /// Removes the association of tags from a Timestream query resource.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config
                .with(middleware: EndpointDiscoveryMiddleware(storage: self.endpointStorage, discover: self.getEndpoint, required: true)
            ), 
            input: input, 
            logger: logger
        )
    }

    /// Update a scheduled query.
    @Sendable
    public func updateScheduledQuery(_ input: UpdateScheduledQueryRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "UpdateScheduledQuery", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config
                .with(middleware: EndpointDiscoveryMiddleware(storage: self.endpointStorage, discover: self.getEndpoint, required: true)
            ), 
            input: input, 
            logger: logger
        )
    }

    @Sendable func getEndpoint(logger: Logger) async throws -> AWSEndpoints {
        let response = try await self.describeEndpoints(.init(), logger: logger)
        return .init(endpoints: response.endpoints.map {
            .init(address: "https://\($0.address)", cachePeriodInMinutes: $0.cachePeriodInMinutes)
        })
    }
}

extension TimestreamQuery {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: TimestreamQuery, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
        self.endpointStorage = .init()
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension TimestreamQuery {
    /// Gets a list of all scheduled queries in the caller's Amazon account and Region. ListScheduledQueries is eventually consistent.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listScheduledQueriesPaginator(
        _ input: ListScheduledQueriesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListScheduledQueriesRequest, ListScheduledQueriesResponse> {
        return .init(
            input: input,
            command: self.listScheduledQueries,
            inputKey: \ListScheduledQueriesRequest.nextToken,
            outputKey: \ListScheduledQueriesResponse.nextToken,
            logger: logger
        )
    }

    /// List all tags on a Timestream query resource.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListTagsForResourceRequest, ListTagsForResourceResponse> {
        return .init(
            input: input,
            command: self.listTagsForResource,
            inputKey: \ListTagsForResourceRequest.nextToken,
            outputKey: \ListTagsForResourceResponse.nextToken,
            logger: logger
        )
    }

    ///  Query is a synchronous operation that enables you to run a query against your Amazon Timestream data. Query will time out after 60 seconds. You must update the default timeout in the SDK to support a timeout of 60 seconds. See the code sample for details.  Your query request will fail in the following cases:   If you submit a Query request with the same client token outside of the 5-minute idempotency window.    If you submit a Query request with the same client token, but change other parameters, within the 5-minute idempotency window.    If the size of the row (including the query metadata) exceeds 1 MB, then the query will fail with the following error message:   Query aborted as max page response size has been exceeded by the output result row    If the IAM principal of the query initiator and the result reader are not the same and/or the query initiator and the result reader do not have the same query string in the query requests, the query will fail with an Invalid pagination token error.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func queryPaginator(
        _ input: QueryRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<QueryRequest, QueryResponse> {
        return .init(
            input: input,
            command: self.query,
            inputKey: \QueryRequest.nextToken,
            outputKey: \QueryResponse.nextToken,
            logger: logger
        )
    }
}

extension TimestreamQuery.ListScheduledQueriesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> TimestreamQuery.ListScheduledQueriesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension TimestreamQuery.ListTagsForResourceRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> TimestreamQuery.ListTagsForResourceRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceARN: self.resourceARN
        )
    }
}

extension TimestreamQuery.QueryRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> TimestreamQuery.QueryRequest {
        return .init(
            clientToken: self.clientToken,
            maxRows: self.maxRows,
            nextToken: token,
            queryString: self.queryString
        )
    }
}
