//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
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

/// Service object for interacting with AWS DocDBElastic service.
///
/// The new Amazon Elastic DocumentDB service endpoint.
public struct DocDBElastic: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the DocDBElastic client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "docdb-elastic",
            serviceProtocol: .restjson,
            apiVersion: "2022-11-28",
            endpoint: endpoint,
            errorType: DocDBElasticErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a new Elastic DocumentDB cluster and returns its Cluster structure.
    public func createCluster(_ input: CreateClusterInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterOutput> {
        return self.client.execute(operation: "CreateCluster", path: "/cluster", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a snapshot of a cluster.
    public func createClusterSnapshot(_ input: CreateClusterSnapshotInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterSnapshotOutput> {
        return self.client.execute(operation: "CreateClusterSnapshot", path: "/cluster-snapshot", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a Elastic DocumentDB cluster.
    public func deleteCluster(_ input: DeleteClusterInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterOutput> {
        return self.client.execute(operation: "DeleteCluster", path: "/cluster/{clusterArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a Elastic DocumentDB snapshot.
    public func deleteClusterSnapshot(_ input: DeleteClusterSnapshotInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterSnapshotOutput> {
        return self.client.execute(operation: "DeleteClusterSnapshot", path: "/cluster-snapshot/{snapshotArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a specific Elastic DocumentDB cluster.
    public func getCluster(_ input: GetClusterInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetClusterOutput> {
        return self.client.execute(operation: "GetCluster", path: "/cluster/{clusterArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a specific Elastic DocumentDB snapshot
    public func getClusterSnapshot(_ input: GetClusterSnapshotInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetClusterSnapshotOutput> {
        return self.client.execute(operation: "GetClusterSnapshot", path: "/cluster-snapshot/{snapshotArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about Elastic DocumentDB snapshots for a specified cluster.
    public func listClusterSnapshots(_ input: ListClusterSnapshotsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListClusterSnapshotsOutput> {
        return self.client.execute(operation: "ListClusterSnapshots", path: "/cluster-snapshots", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about provisioned Elastic DocumentDB clusters.
    public func listClusters(_ input: ListClustersInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListClustersOutput> {
        return self.client.execute(operation: "ListClusters", path: "/clusters", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all tags on a Elastic DocumentDB resource
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Restores a Elastic DocumentDB cluster from a snapshot.
    public func restoreClusterFromSnapshot(_ input: RestoreClusterFromSnapshotInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestoreClusterFromSnapshotOutput> {
        return self.client.execute(operation: "RestoreClusterFromSnapshot", path: "/cluster-snapshot/{snapshotArn}/restore", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds metadata tags to a Elastic DocumentDB resource
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes metadata tags to a Elastic DocumentDB resource
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies a Elastic DocumentDB cluster. This includes updating admin-username/password,  upgrading API version setting up a backup window and maintenance window
    public func updateCluster(_ input: UpdateClusterInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateClusterOutput> {
        return self.client.execute(operation: "UpdateCluster", path: "/cluster/{clusterArn}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension DocDBElastic {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: DocDBElastic, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension DocDBElastic {
    ///  Returns information about Elastic DocumentDB snapshots for a specified cluster.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listClusterSnapshotsPaginator<Result>(
        _ input: ListClusterSnapshotsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListClusterSnapshotsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listClusterSnapshots,
            inputKey: \ListClusterSnapshotsInput.nextToken,
            outputKey: \ListClusterSnapshotsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listClusterSnapshotsPaginator(
        _ input: ListClusterSnapshotsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListClusterSnapshotsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listClusterSnapshots,
            inputKey: \ListClusterSnapshotsInput.nextToken,
            outputKey: \ListClusterSnapshotsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about provisioned Elastic DocumentDB clusters.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listClustersPaginator<Result>(
        _ input: ListClustersInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListClustersOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listClusters,
            inputKey: \ListClustersInput.nextToken,
            outputKey: \ListClustersOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listClustersPaginator(
        _ input: ListClustersInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListClustersOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listClusters,
            inputKey: \ListClustersInput.nextToken,
            outputKey: \ListClustersOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension DocDBElastic.ListClusterSnapshotsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DocDBElastic.ListClusterSnapshotsInput {
        return .init(
            clusterArn: self.clusterArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension DocDBElastic.ListClustersInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DocDBElastic.ListClustersInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}