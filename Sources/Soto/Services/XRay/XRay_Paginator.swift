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

extension XRay {
    ///  Retrieves a list of traces specified by ID. Each trace is a collection of segment documents that originates from a single request. Use GetTraceSummaries to get a list of trace IDs.
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
    public func batchGetTracesPaginator<Result>(
        _ input: BatchGetTracesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, BatchGetTracesResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: batchGetTraces,
            inputKey: \BatchGetTracesRequest.nextToken,
            outputKey: \BatchGetTracesResult.nextToken,
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
    public func batchGetTracesPaginator(
        _ input: BatchGetTracesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (BatchGetTracesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: batchGetTraces,
            inputKey: \BatchGetTracesRequest.nextToken,
            outputKey: \BatchGetTracesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves all active group details.
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
    public func getGroupsPaginator<Result>(
        _ input: GetGroupsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetGroupsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getGroups,
            inputKey: \GetGroupsRequest.nextToken,
            outputKey: \GetGroupsResult.nextToken,
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
    public func getGroupsPaginator(
        _ input: GetGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetGroupsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getGroups,
            inputKey: \GetGroupsRequest.nextToken,
            outputKey: \GetGroupsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  X-Ray reevaluates insights periodically until they're resolved, and records each intermediate state as an event. You can review an insight's events in the Impact Timeline on the Inspect page in the X-Ray console.
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
    public func getInsightEventsPaginator<Result>(
        _ input: GetInsightEventsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetInsightEventsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getInsightEvents,
            inputKey: \GetInsightEventsRequest.nextToken,
            outputKey: \GetInsightEventsResult.nextToken,
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
    public func getInsightEventsPaginator(
        _ input: GetInsightEventsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetInsightEventsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getInsightEvents,
            inputKey: \GetInsightEventsRequest.nextToken,
            outputKey: \GetInsightEventsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves the summaries of all insights in the specified group matching the provided filter values.
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
    public func getInsightSummariesPaginator<Result>(
        _ input: GetInsightSummariesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetInsightSummariesResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getInsightSummaries,
            inputKey: \GetInsightSummariesRequest.nextToken,
            outputKey: \GetInsightSummariesResult.nextToken,
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
    public func getInsightSummariesPaginator(
        _ input: GetInsightSummariesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetInsightSummariesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getInsightSummaries,
            inputKey: \GetInsightSummariesRequest.nextToken,
            outputKey: \GetInsightSummariesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves all sampling rules.
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
    public func getSamplingRulesPaginator<Result>(
        _ input: GetSamplingRulesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetSamplingRulesResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getSamplingRules,
            inputKey: \GetSamplingRulesRequest.nextToken,
            outputKey: \GetSamplingRulesResult.nextToken,
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
    public func getSamplingRulesPaginator(
        _ input: GetSamplingRulesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetSamplingRulesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getSamplingRules,
            inputKey: \GetSamplingRulesRequest.nextToken,
            outputKey: \GetSamplingRulesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves information about recent sampling results for all sampling rules.
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
    public func getSamplingStatisticSummariesPaginator<Result>(
        _ input: GetSamplingStatisticSummariesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetSamplingStatisticSummariesResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getSamplingStatisticSummaries,
            inputKey: \GetSamplingStatisticSummariesRequest.nextToken,
            outputKey: \GetSamplingStatisticSummariesResult.nextToken,
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
    public func getSamplingStatisticSummariesPaginator(
        _ input: GetSamplingStatisticSummariesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetSamplingStatisticSummariesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getSamplingStatisticSummaries,
            inputKey: \GetSamplingStatisticSummariesRequest.nextToken,
            outputKey: \GetSamplingStatisticSummariesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result. Root services process incoming requests and make calls to downstream services. Root services are applications that use the Amazon Web Services X-Ray SDK. Downstream services can be other applications, Amazon Web Services resources, HTTP web APIs, or SQL databases.
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
    public func getServiceGraphPaginator<Result>(
        _ input: GetServiceGraphRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetServiceGraphResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getServiceGraph,
            inputKey: \GetServiceGraphRequest.nextToken,
            outputKey: \GetServiceGraphResult.nextToken,
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
    public func getServiceGraphPaginator(
        _ input: GetServiceGraphRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetServiceGraphResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getServiceGraph,
            inputKey: \GetServiceGraphRequest.nextToken,
            outputKey: \GetServiceGraphResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Get an aggregation of service statistics defined by a specific time range.
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
    public func getTimeSeriesServiceStatisticsPaginator<Result>(
        _ input: GetTimeSeriesServiceStatisticsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetTimeSeriesServiceStatisticsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getTimeSeriesServiceStatistics,
            inputKey: \GetTimeSeriesServiceStatisticsRequest.nextToken,
            outputKey: \GetTimeSeriesServiceStatisticsResult.nextToken,
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
    public func getTimeSeriesServiceStatisticsPaginator(
        _ input: GetTimeSeriesServiceStatisticsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetTimeSeriesServiceStatisticsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getTimeSeriesServiceStatistics,
            inputKey: \GetTimeSeriesServiceStatisticsRequest.nextToken,
            outputKey: \GetTimeSeriesServiceStatisticsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a service graph for one or more specific trace IDs.
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
    public func getTraceGraphPaginator<Result>(
        _ input: GetTraceGraphRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetTraceGraphResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getTraceGraph,
            inputKey: \GetTraceGraphRequest.nextToken,
            outputKey: \GetTraceGraphResult.nextToken,
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
    public func getTraceGraphPaginator(
        _ input: GetTraceGraphRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetTraceGraphResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getTraceGraph,
            inputKey: \GetTraceGraphRequest.nextToken,
            outputKey: \GetTraceGraphResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves IDs and annotations for traces available for a specified time frame using an optional filter. To get the full traces, pass the trace IDs to BatchGetTraces. A filter expression can target traced requests that hit specific service nodes or edges, have errors, or come from a known user. For example, the following filter expression targets traces that pass through api.example.com:  service("api.example.com")  This filter expression finds traces that have an annotation named account with the value 12345:  annotation.account = "12345"  For a full list of indexed fields and keywords that you can use in filter expressions, see Using Filter Expressions in the Amazon Web Services X-Ray Developer Guide.
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
    public func getTraceSummariesPaginator<Result>(
        _ input: GetTraceSummariesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetTraceSummariesResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getTraceSummaries,
            inputKey: \GetTraceSummariesRequest.nextToken,
            outputKey: \GetTraceSummariesResult.nextToken,
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
    public func getTraceSummariesPaginator(
        _ input: GetTraceSummariesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetTraceSummariesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getTraceSummaries,
            inputKey: \GetTraceSummariesRequest.nextToken,
            outputKey: \GetTraceSummariesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension XRay.BatchGetTracesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> XRay.BatchGetTracesRequest {
        return .init(
            nextToken: token,
            traceIds: self.traceIds
        )
    }
}

extension XRay.GetGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> XRay.GetGroupsRequest {
        return .init(
            nextToken: token
        )
    }
}

extension XRay.GetInsightEventsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> XRay.GetInsightEventsRequest {
        return .init(
            insightId: self.insightId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension XRay.GetInsightSummariesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> XRay.GetInsightSummariesRequest {
        return .init(
            endTime: self.endTime,
            groupARN: self.groupARN,
            groupName: self.groupName,
            maxResults: self.maxResults,
            nextToken: token,
            startTime: self.startTime,
            states: self.states
        )
    }
}

extension XRay.GetSamplingRulesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> XRay.GetSamplingRulesRequest {
        return .init(
            nextToken: token
        )
    }
}

extension XRay.GetSamplingStatisticSummariesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> XRay.GetSamplingStatisticSummariesRequest {
        return .init(
            nextToken: token
        )
    }
}

extension XRay.GetServiceGraphRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> XRay.GetServiceGraphRequest {
        return .init(
            endTime: self.endTime,
            groupARN: self.groupARN,
            groupName: self.groupName,
            nextToken: token,
            startTime: self.startTime
        )
    }
}

extension XRay.GetTimeSeriesServiceStatisticsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> XRay.GetTimeSeriesServiceStatisticsRequest {
        return .init(
            endTime: self.endTime,
            entitySelectorExpression: self.entitySelectorExpression,
            forecastStatistics: self.forecastStatistics,
            groupARN: self.groupARN,
            groupName: self.groupName,
            nextToken: token,
            period: self.period,
            startTime: self.startTime
        )
    }
}

extension XRay.GetTraceGraphRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> XRay.GetTraceGraphRequest {
        return .init(
            nextToken: token,
            traceIds: self.traceIds
        )
    }
}

extension XRay.GetTraceSummariesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> XRay.GetTraceSummariesRequest {
        return .init(
            endTime: self.endTime,
            filterExpression: self.filterExpression,
            nextToken: token,
            sampling: self.sampling,
            samplingStrategy: self.samplingStrategy,
            startTime: self.startTime,
            timeRangeType: self.timeRangeType
        )
    }
}
