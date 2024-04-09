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

/// Service object for interacting with AWS DAX service.
///
/// DAX is a managed caching service engineered for Amazon DynamoDB. DAX dramatically speeds up database reads by caching frequently-accessed data from DynamoDB, so applications can access that data with sub-millisecond latency. You can create a DAX cluster easily, using the AWS Management Console. With a few simple modifications to your code, your application can begin taking advantage of the DAX cluster and realize significant improvements in read performance.
public struct DAX: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the DAX client
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
            amzTarget: "AmazonDAXV3",
            serviceName: "DAX",
            serviceIdentifier: "dax",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-04-19",
            endpoint: endpoint,
            errorType: DAXErrorType.self,
            xmlNamespace: "http://dax.amazonaws.com/doc/2017-04-19/",
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Creates a DAX cluster. All nodes in the cluster run the same DAX caching software.
    @Sendable
    public func createCluster(_ input: CreateClusterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateClusterResponse {
        return try await self.client.execute(
            operation: "CreateCluster", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new parameter group. A parameter group is a collection of parameters that you apply to all of the nodes in a DAX cluster.
    @Sendable
    public func createParameterGroup(_ input: CreateParameterGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateParameterGroupResponse {
        return try await self.client.execute(
            operation: "CreateParameterGroup", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new subnet group.
    @Sendable
    public func createSubnetGroup(_ input: CreateSubnetGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateSubnetGroupResponse {
        return try await self.client.execute(
            operation: "CreateSubnetGroup", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes one or more nodes from a DAX cluster.  You cannot use DecreaseReplicationFactor to remove the last node in a DAX cluster. If you need to do this, use DeleteCluster instead.
    @Sendable
    public func decreaseReplicationFactor(_ input: DecreaseReplicationFactorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DecreaseReplicationFactorResponse {
        return try await self.client.execute(
            operation: "DecreaseReplicationFactor", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a previously provisioned DAX cluster. DeleteCluster deletes all associated nodes, node endpoints and the DAX cluster itself. When you receive a successful response from this action, DAX immediately begins deleting the cluster; you cannot cancel or revert this action.
    @Sendable
    public func deleteCluster(_ input: DeleteClusterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteClusterResponse {
        return try await self.client.execute(
            operation: "DeleteCluster", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified parameter group. You cannot delete a parameter group if it is associated with any DAX clusters.
    @Sendable
    public func deleteParameterGroup(_ input: DeleteParameterGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteParameterGroupResponse {
        return try await self.client.execute(
            operation: "DeleteParameterGroup", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a subnet group.  You cannot delete a subnet group if it is associated with any DAX clusters.
    @Sendable
    public func deleteSubnetGroup(_ input: DeleteSubnetGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteSubnetGroupResponse {
        return try await self.client.execute(
            operation: "DeleteSubnetGroup", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns information about all provisioned DAX clusters if no cluster identifier is specified, or about a specific DAX cluster if a cluster identifier is supplied. If the cluster is in the CREATING state, only cluster level information will be displayed until all of the nodes are successfully provisioned. If the cluster is in the DELETING state, only cluster level information will be displayed. If nodes are currently being added to the DAX cluster, node endpoint information and creation time for the additional nodes will not be displayed until they are completely provisioned. When the DAX cluster state is available, the cluster is ready for use. If nodes are currently being removed from the DAX cluster, no endpoint information for the removed nodes is displayed.
    @Sendable
    public func describeClusters(_ input: DescribeClustersRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeClustersResponse {
        return try await self.client.execute(
            operation: "DescribeClusters", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the default system parameter information for the DAX caching software.
    @Sendable
    public func describeDefaultParameters(_ input: DescribeDefaultParametersRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeDefaultParametersResponse {
        return try await self.client.execute(
            operation: "DescribeDefaultParameters", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns events related to DAX clusters and parameter groups. You can obtain events specific to a particular DAX cluster or parameter group by providing the name as a parameter. By default, only the events occurring within the last 24 hours are returned; however, you can retrieve up to 14 days' worth of events if necessary.
    @Sendable
    public func describeEvents(_ input: DescribeEventsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeEventsResponse {
        return try await self.client.execute(
            operation: "DescribeEvents", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of parameter group descriptions. If a parameter group name is specified, the list will contain only the descriptions for that group.
    @Sendable
    public func describeParameterGroups(_ input: DescribeParameterGroupsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeParameterGroupsResponse {
        return try await self.client.execute(
            operation: "DescribeParameterGroups", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the detailed parameter list for a particular parameter group.
    @Sendable
    public func describeParameters(_ input: DescribeParametersRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeParametersResponse {
        return try await self.client.execute(
            operation: "DescribeParameters", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of subnet group descriptions. If a subnet group name is specified, the list will contain only the description of that group.
    @Sendable
    public func describeSubnetGroups(_ input: DescribeSubnetGroupsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeSubnetGroupsResponse {
        return try await self.client.execute(
            operation: "DescribeSubnetGroups", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds one or more nodes to a DAX cluster.
    @Sendable
    public func increaseReplicationFactor(_ input: IncreaseReplicationFactorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> IncreaseReplicationFactorResponse {
        return try await self.client.execute(
            operation: "IncreaseReplicationFactor", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// List all of the tags for a DAX cluster. You can call ListTags up to 10 times per second, per account.
    @Sendable
    public func listTags(_ input: ListTagsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsResponse {
        return try await self.client.execute(
            operation: "ListTags", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Reboots a single node of a DAX cluster. The reboot action takes place as soon as possible. During the reboot, the node status is set to REBOOTING.   RebootNode restarts the DAX engine process and does not remove the contents of the cache.
    @Sendable
    public func rebootNode(_ input: RebootNodeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RebootNodeResponse {
        return try await self.client.execute(
            operation: "RebootNode", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Associates a set of tags with a DAX resource.  You can call TagResource up to 5 times per second, per account.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes the association of tags from a DAX resource. You can call UntagResource up to 5 times per second, per account.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Modifies the settings for a DAX cluster. You can use this action to change one or more cluster configuration parameters by specifying the parameters and the new values.
    @Sendable
    public func updateCluster(_ input: UpdateClusterRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateClusterResponse {
        return try await self.client.execute(
            operation: "UpdateCluster", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Modifies the parameters of a parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.
    @Sendable
    public func updateParameterGroup(_ input: UpdateParameterGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateParameterGroupResponse {
        return try await self.client.execute(
            operation: "UpdateParameterGroup", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Modifies an existing subnet group.
    @Sendable
    public func updateSubnetGroup(_ input: UpdateSubnetGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateSubnetGroupResponse {
        return try await self.client.execute(
            operation: "UpdateSubnetGroup", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension DAX {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: DAX, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
