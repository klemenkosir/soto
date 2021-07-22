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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension S3Control {
    ///  Returns a list of the access points currently associated with the specified bucket. You can retrieve up to 1000 access points per call. If the specified bucket has more than 1,000 access points (or the number specified in maxResults, whichever is less), the response will include a continuation token that you can use to list the additional access points.  All Amazon S3 on Outposts REST API requests for this action require an additional parameter of x-amz-outpost-id to be passed with the request and an S3 on Outposts endpoint hostname prefix instead of s3-control. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the x-amz-outpost-id derived using the access point ARN, see the Examples section. The following actions are related to ListAccessPoints:    CreateAccessPoint     DeleteAccessPoint     GetAccessPoint
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listAccessPointsPaginator<Result>(
        _ input: ListAccessPointsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAccessPointsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAccessPoints,
            inputKey: \ListAccessPointsRequest.nextToken,
            outputKey: \ListAccessPointsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listAccessPointsPaginator(
        _ input: ListAccessPointsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAccessPointsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAccessPoints,
            inputKey: \ListAccessPointsRequest.nextToken,
            outputKey: \ListAccessPointsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of the access points associated with the Object Lambda Access Point. You can retrieve up to 1000 access points per call. If there are more than 1,000 access points (or the number specified in maxResults, whichever is less), the response will include a continuation token that you can use to list the additional access points. The following actions are related to ListAccessPointsForObjectLambda:    CreateAccessPointForObjectLambda     DeleteAccessPointForObjectLambda     GetAccessPointForObjectLambda
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listAccessPointsForObjectLambdaPaginator<Result>(
        _ input: ListAccessPointsForObjectLambdaRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAccessPointsForObjectLambdaResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAccessPointsForObjectLambda,
            inputKey: \ListAccessPointsForObjectLambdaRequest.nextToken,
            outputKey: \ListAccessPointsForObjectLambdaResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listAccessPointsForObjectLambdaPaginator(
        _ input: ListAccessPointsForObjectLambdaRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAccessPointsForObjectLambdaResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAccessPointsForObjectLambda,
            inputKey: \ListAccessPointsForObjectLambdaRequest.nextToken,
            outputKey: \ListAccessPointsForObjectLambdaResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists current S3 Batch Operations jobs and jobs that have ended within the last 30 days for the AWS account making the request. For more information, see S3 Batch Operations in the Amazon S3 User Guide. Related actions include:     CreateJob     DescribeJob     UpdateJobPriority     UpdateJobStatus
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listJobsPaginator<Result>(
        _ input: ListJobsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListJobsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listJobs,
            inputKey: \ListJobsRequest.nextToken,
            outputKey: \ListJobsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listJobsPaginator(
        _ input: ListJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListJobsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listJobs,
            inputKey: \ListJobsRequest.nextToken,
            outputKey: \ListJobsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of all Outposts buckets in an Outpost that are owned by the authenticated sender of the request. For more information, see Using Amazon S3 on Outposts in the Amazon S3 User Guide. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and x-amz-outpost-id in your request, see the Examples section.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listRegionalBucketsPaginator<Result>(
        _ input: ListRegionalBucketsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRegionalBucketsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRegionalBuckets,
            inputKey: \ListRegionalBucketsRequest.nextToken,
            outputKey: \ListRegionalBucketsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listRegionalBucketsPaginator(
        _ input: ListRegionalBucketsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRegionalBucketsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRegionalBuckets,
            inputKey: \ListRegionalBucketsRequest.nextToken,
            outputKey: \ListRegionalBucketsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of Amazon S3 Storage Lens configurations. For more information about S3 Storage Lens, see Assessing your storage activity and usage with Amazon S3 Storage Lens  in the Amazon S3 User Guide.  To use this action, you must have permission to perform the s3:ListStorageLensConfigurations action. For more information, see Setting permissions to use Amazon S3 Storage Lens in the Amazon S3 User Guide.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listStorageLensConfigurationsPaginator<Result>(
        _ input: ListStorageLensConfigurationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListStorageLensConfigurationsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listStorageLensConfigurations,
            inputKey: \ListStorageLensConfigurationsRequest.nextToken,
            outputKey: \ListStorageLensConfigurationsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listStorageLensConfigurationsPaginator(
        _ input: ListStorageLensConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListStorageLensConfigurationsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listStorageLensConfigurations,
            inputKey: \ListStorageLensConfigurationsRequest.nextToken,
            outputKey: \ListStorageLensConfigurationsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension S3Control.ListAccessPointsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> S3Control.ListAccessPointsRequest {
        return .init(
            accountId: self.accountId,
            bucket: self.bucket,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension S3Control.ListAccessPointsForObjectLambdaRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> S3Control.ListAccessPointsForObjectLambdaRequest {
        return .init(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension S3Control.ListJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> S3Control.ListJobsRequest {
        return .init(
            accountId: self.accountId,
            jobStatuses: self.jobStatuses,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension S3Control.ListRegionalBucketsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> S3Control.ListRegionalBucketsRequest {
        return .init(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token,
            outpostId: self.outpostId
        )
    }
}

extension S3Control.ListStorageLensConfigurationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> S3Control.ListStorageLensConfigurationsRequest {
        return .init(
            accountId: self.accountId,
            nextToken: token
        )
    }
}
