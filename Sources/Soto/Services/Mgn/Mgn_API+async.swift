//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
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

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Mgn {
    // MARK: Async API Calls

    /// Allows the user to set the SourceServer.LifeCycle.state property for specific Source Server IDs to one of the following: READY_FOR_TEST or READY_FOR_CUTOVER. This command only works if the Source Server is already launchable (dataReplicationInfo.lagDuration is not null.)
    public func changeServerLifeCycleState(_ input: ChangeServerLifeCycleStateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SourceServer {
        return try await self.client.execute(operation: "ChangeServerLifeCycleState", path: "/ChangeServerLifeCycleState", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new ReplicationConfigurationTemplate.
    public func createReplicationConfigurationTemplate(_ input: CreateReplicationConfigurationTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplicationConfigurationTemplate {
        return try await self.client.execute(operation: "CreateReplicationConfigurationTemplate", path: "/CreateReplicationConfigurationTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a single Job by ID.
    public func deleteJob(_ input: DeleteJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteJobResponse {
        return try await self.client.execute(operation: "DeleteJob", path: "/DeleteJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a single Replication Configuration Template by ID
    public func deleteReplicationConfigurationTemplate(_ input: DeleteReplicationConfigurationTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReplicationConfigurationTemplateResponse {
        return try await self.client.execute(operation: "DeleteReplicationConfigurationTemplate", path: "/DeleteReplicationConfigurationTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a single source server by ID.
    public func deleteSourceServer(_ input: DeleteSourceServerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSourceServerResponse {
        return try await self.client.execute(operation: "DeleteSourceServer", path: "/DeleteSourceServer", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a single vCenter client by ID.
    public func deleteVcenterClient(_ input: DeleteVcenterClientRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteVcenterClient", path: "/DeleteVcenterClient", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves detailed Job log with paging.
    public func describeJobLogItems(_ input: DescribeJobLogItemsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobLogItemsResponse {
        return try await self.client.execute(operation: "DescribeJobLogItems", path: "/DescribeJobLogItems", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of Jobs. Use the JobsID and fromDate and toData filters to limit which jobs are returned. The response is sorted by creationDataTime - latest date first. Jobs are normaly created by the StartTest, StartCutover, and TerminateTargetInstances APIs. Jobs are also created by DiagnosticLaunch and TerminateDiagnosticInstances, which are APIs available only to *Support* and only used in response to relevant support tickets.
    public func describeJobs(_ input: DescribeJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobsResponse {
        return try await self.client.execute(operation: "DescribeJobs", path: "/DescribeJobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all ReplicationConfigurationTemplates, filtered by Source Server IDs.
    public func describeReplicationConfigurationTemplates(_ input: DescribeReplicationConfigurationTemplatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReplicationConfigurationTemplatesResponse {
        return try await self.client.execute(operation: "DescribeReplicationConfigurationTemplates", path: "/DescribeReplicationConfigurationTemplates", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves all SourceServers or multiple SourceServers by ID.
    public func describeSourceServers(_ input: DescribeSourceServersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSourceServersResponse {
        return try await self.client.execute(operation: "DescribeSourceServers", path: "/DescribeSourceServers", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all vCenter clients.
    public func describeVcenterClients(_ input: DescribeVcenterClientsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVcenterClientsResponse {
        return try await self.client.execute(operation: "DescribeVcenterClients", path: "/DescribeVcenterClients", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disconnects specific Source Servers from Application Migration Service. Data replication is stopped immediately. All AWS resources created by Application Migration Service for enabling the replication of these source servers will be terminated / deleted within 90 minutes. Launched Test or Cutover instances will NOT be terminated. If the agent on the source server has not been prevented from communciating with the Application Migration Service service, then it will receive a command to uninstall itself (within approximately 10 minutes). The following properties of the SourceServer will be changed immediately: dataReplicationInfo.dataReplicationState will be set to DISCONNECTED; The totalStorageBytes property for each of dataReplicationInfo.replicatedDisks will be set to zero; dataReplicationInfo.lagDuration and dataReplicationInfo.lagDurationwill be nullified.
    public func disconnectFromService(_ input: DisconnectFromServiceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SourceServer {
        return try await self.client.execute(operation: "DisconnectFromService", path: "/DisconnectFromService", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Finalizes the cutover immediately for specific Source Servers. All AWS resources created by Application Migration Service for enabling the replication of these source servers will be terminated / deleted within 90 minutes. Launched Test or Cutover instances will NOT be terminated. The AWS Replication Agent will receive a command to uninstall itself (within 10 minutes). The following properties of the SourceServer will be changed immediately: dataReplicationInfo.dataReplicationState will be to DISCONNECTED; The SourceServer.lifeCycle.state will be changed to CUTOVER; The totalStorageBytes property fo each of dataReplicationInfo.replicatedDisks will be set to zero; dataReplicationInfo.lagDuration and dataReplicationInfo.lagDurationwill be nullified.
    public func finalizeCutover(_ input: FinalizeCutoverRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SourceServer {
        return try await self.client.execute(operation: "FinalizeCutover", path: "/FinalizeCutover", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all LaunchConfigurations available, filtered by Source Server IDs.
    public func getLaunchConfiguration(_ input: GetLaunchConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LaunchConfiguration {
        return try await self.client.execute(operation: "GetLaunchConfiguration", path: "/GetLaunchConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all ReplicationConfigurations, filtered by Source Server ID.
    public func getReplicationConfiguration(_ input: GetReplicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplicationConfiguration {
        return try await self.client.execute(operation: "GetReplicationConfiguration", path: "/GetReplicationConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Initialize Application Migration Service.
    public func initializeService(_ input: InitializeServiceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InitializeServiceResponse {
        return try await self.client.execute(operation: "InitializeService", path: "/InitializeService", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all tags for your Application Migration Service resources.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Archives specific Source Servers by setting the SourceServer.isArchived property to true for specified SourceServers by ID. This command only works for SourceServers with a lifecycle.state which equals DISCONNECTED or CUTOVER.
    public func markAsArchived(_ input: MarkAsArchivedRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SourceServer {
        return try await self.client.execute(operation: "MarkAsArchived", path: "/MarkAsArchived", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Causes the data replication initiation sequence to begin immediately upon next Handshake for specified SourceServer IDs, regardless of when the previous initiation started. This command will not work if the SourceServer is not stalled or is in a DISCONNECTED or STOPPED state.
    public func retryDataReplication(_ input: RetryDataReplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SourceServer {
        return try await self.client.execute(operation: "RetryDataReplication", path: "/RetryDataReplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Launches a Cutover Instance for specific Source Servers. This command starts a LAUNCH job whose initiatedBy property is StartCutover and changes the SourceServer.lifeCycle.state property to CUTTING_OVER.
    public func startCutover(_ input: StartCutoverRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartCutoverResponse {
        return try await self.client.execute(operation: "StartCutover", path: "/StartCutover", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts replication on source server by ID.
    public func startReplication(_ input: StartReplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SourceServer {
        return try await self.client.execute(operation: "StartReplication", path: "/StartReplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lauches a Test Instance for specific Source Servers. This command starts a LAUNCH job whose initiatedBy property is StartTest and changes the SourceServer.lifeCycle.state property to TESTING.
    public func startTest(_ input: StartTestRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartTestResponse {
        return try await self.client.execute(operation: "StartTest", path: "/StartTest", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds or overwrites only the specified tags for the specified Application Migration Service resource or resources. When you specify an existing tag key, the value is overwritten with the new value. Each resource can have a maximum of 50 tags. Each tag consists of a key and optional value.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a job that terminates specific launched EC2 Test and Cutover instances. This command will not work for any Source Server with a lifecycle.state of TESTING, CUTTING_OVER, or CUTOVER.
    public func terminateTargetInstances(_ input: TerminateTargetInstancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateTargetInstancesResponse {
        return try await self.client.execute(operation: "TerminateTargetInstances", path: "/TerminateTargetInstances", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified set of tags from the specified set of Application Migration Service resources.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates multiple LaunchConfigurations by Source Server ID.
    public func updateLaunchConfiguration(_ input: UpdateLaunchConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LaunchConfiguration {
        return try await self.client.execute(operation: "UpdateLaunchConfiguration", path: "/UpdateLaunchConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows you to update multiple ReplicationConfigurations by Source Server ID.
    public func updateReplicationConfiguration(_ input: UpdateReplicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplicationConfiguration {
        return try await self.client.execute(operation: "UpdateReplicationConfiguration", path: "/UpdateReplicationConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates multiple ReplicationConfigurationTemplates by ID.
    public func updateReplicationConfigurationTemplate(_ input: UpdateReplicationConfigurationTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplicationConfigurationTemplate {
        return try await self.client.execute(operation: "UpdateReplicationConfigurationTemplate", path: "/UpdateReplicationConfigurationTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates source server Replication Type by ID.
    public func updateSourceServerReplicationType(_ input: UpdateSourceServerReplicationTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SourceServer {
        return try await self.client.execute(operation: "UpdateSourceServerReplicationType", path: "/UpdateSourceServerReplicationType", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
