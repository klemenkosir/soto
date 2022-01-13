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

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Drs {
    ///  Retrieves a detailed Job log with pagination.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeJobLogItemsPaginator(
        _ input: DescribeJobLogItemsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeJobLogItemsRequest, DescribeJobLogItemsResponse> {
        return .init(
            input: input,
            command: describeJobLogItems,
            inputKey: \DescribeJobLogItemsRequest.nextToken,
            outputKey: \DescribeJobLogItemsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of Jobs. Use the JobsID and fromDate and toDate filters to limit which jobs are returned. The response is sorted by creationDataTime - latest date first. Jobs are created by the StartRecovery, TerminateRecoveryInstances and StartFailbackLaunch APIs. Jobs are also created by DiagnosticLaunch and TerminateDiagnosticInstances, which are APIs available only to *Support* and only used in response to relevant support tickets.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeJobsPaginator(
        _ input: DescribeJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeJobsRequest, DescribeJobsResponse> {
        return .init(
            input: input,
            command: describeJobs,
            inputKey: \DescribeJobsRequest.nextToken,
            outputKey: \DescribeJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all Recovery Instances or multiple Recovery Instances by ID.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeRecoveryInstancesPaginator(
        _ input: DescribeRecoveryInstancesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeRecoveryInstancesRequest, DescribeRecoveryInstancesResponse> {
        return .init(
            input: input,
            command: describeRecoveryInstances,
            inputKey: \DescribeRecoveryInstancesRequest.nextToken,
            outputKey: \DescribeRecoveryInstancesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all Recovery Snapshots for a single Source Server.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeRecoverySnapshotsPaginator(
        _ input: DescribeRecoverySnapshotsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeRecoverySnapshotsRequest, DescribeRecoverySnapshotsResponse> {
        return .init(
            input: input,
            command: describeRecoverySnapshots,
            inputKey: \DescribeRecoverySnapshotsRequest.nextToken,
            outputKey: \DescribeRecoverySnapshotsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all ReplicationConfigurationTemplates, filtered by Source Server IDs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeReplicationConfigurationTemplatesPaginator(
        _ input: DescribeReplicationConfigurationTemplatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeReplicationConfigurationTemplatesRequest, DescribeReplicationConfigurationTemplatesResponse> {
        return .init(
            input: input,
            command: describeReplicationConfigurationTemplates,
            inputKey: \DescribeReplicationConfigurationTemplatesRequest.nextToken,
            outputKey: \DescribeReplicationConfigurationTemplatesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all Source Servers or multiple Source Servers filtered by ID.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeSourceServersPaginator(
        _ input: DescribeSourceServersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeSourceServersRequest, DescribeSourceServersResponse> {
        return .init(
            input: input,
            command: describeSourceServers,
            inputKey: \DescribeSourceServersRequest.nextToken,
            outputKey: \DescribeSourceServersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
