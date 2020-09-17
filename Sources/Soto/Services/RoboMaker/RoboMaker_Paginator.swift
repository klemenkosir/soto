//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension RoboMaker {
    ///  Returns a list of deployment jobs for a fleet. You can optionally provide filters to retrieve specific deployment jobs.
    public func listDeploymentJobsPaginator(
        _ input: ListDeploymentJobsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDeploymentJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDeploymentJobs,
            tokenKey: \ListDeploymentJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of fleets. You can optionally provide filters to retrieve specific fleets.
    public func listFleetsPaginator(
        _ input: ListFleetsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListFleetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listFleets,
            tokenKey: \ListFleetsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of robot application. You can optionally provide filters to retrieve specific robot applications.
    public func listRobotApplicationsPaginator(
        _ input: ListRobotApplicationsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListRobotApplicationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRobotApplications,
            tokenKey: \ListRobotApplicationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of robots. You can optionally provide filters to retrieve specific robots.
    public func listRobotsPaginator(
        _ input: ListRobotsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListRobotsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRobots,
            tokenKey: \ListRobotsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of simulation applications. You can optionally provide filters to retrieve specific simulation applications.
    public func listSimulationApplicationsPaginator(
        _ input: ListSimulationApplicationsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSimulationApplicationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSimulationApplications,
            tokenKey: \ListSimulationApplicationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list simulation job batches. You can optionally provide filters to retrieve specific simulation batch jobs.
    public func listSimulationJobBatchesPaginator(
        _ input: ListSimulationJobBatchesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSimulationJobBatchesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSimulationJobBatches,
            tokenKey: \ListSimulationJobBatchesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of simulation jobs. You can optionally provide filters to retrieve specific simulation jobs.
    public func listSimulationJobsPaginator(
        _ input: ListSimulationJobsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSimulationJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSimulationJobs,
            tokenKey: \ListSimulationJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists world export jobs.
    public func listWorldExportJobsPaginator(
        _ input: ListWorldExportJobsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListWorldExportJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listWorldExportJobs,
            tokenKey: \ListWorldExportJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists world generator jobs.
    public func listWorldGenerationJobsPaginator(
        _ input: ListWorldGenerationJobsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListWorldGenerationJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listWorldGenerationJobs,
            tokenKey: \ListWorldGenerationJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists world templates.
    public func listWorldTemplatesPaginator(
        _ input: ListWorldTemplatesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListWorldTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listWorldTemplates,
            tokenKey: \ListWorldTemplatesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists worlds.
    public func listWorldsPaginator(
        _ input: ListWorldsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListWorldsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listWorlds,
            tokenKey: \ListWorldsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension RoboMaker.ListDeploymentJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RoboMaker.ListDeploymentJobsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension RoboMaker.ListFleetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RoboMaker.ListFleetsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension RoboMaker.ListRobotApplicationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RoboMaker.ListRobotApplicationsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            versionQualifier: self.versionQualifier
        )
    }
}

extension RoboMaker.ListRobotsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RoboMaker.ListRobotsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension RoboMaker.ListSimulationApplicationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RoboMaker.ListSimulationApplicationsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            versionQualifier: self.versionQualifier
        )
    }
}

extension RoboMaker.ListSimulationJobBatchesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RoboMaker.ListSimulationJobBatchesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension RoboMaker.ListSimulationJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RoboMaker.ListSimulationJobsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension RoboMaker.ListWorldExportJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RoboMaker.ListWorldExportJobsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension RoboMaker.ListWorldGenerationJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RoboMaker.ListWorldGenerationJobsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension RoboMaker.ListWorldTemplatesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RoboMaker.ListWorldTemplatesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension RoboMaker.ListWorldsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RoboMaker.ListWorldsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}