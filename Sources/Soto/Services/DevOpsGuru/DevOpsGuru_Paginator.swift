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

import SotoCore

// MARK: Paginators

extension DevOpsGuru {
    ///  Provides an overview of your system's health. If additional member accounts are part
    ///  			of your organization, you can filter those accounts using the AccountIds
    ///  			field.
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
    public func describeOrganizationResourceCollectionHealthPaginator<Result>(
        _ input: DescribeOrganizationResourceCollectionHealthRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeOrganizationResourceCollectionHealthResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeOrganizationResourceCollectionHealth,
            inputKey: \DescribeOrganizationResourceCollectionHealthRequest.nextToken,
            outputKey: \DescribeOrganizationResourceCollectionHealthResponse.nextToken,
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
    public func describeOrganizationResourceCollectionHealthPaginator(
        _ input: DescribeOrganizationResourceCollectionHealthRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeOrganizationResourceCollectionHealthResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeOrganizationResourceCollectionHealth,
            inputKey: \DescribeOrganizationResourceCollectionHealthRequest.nextToken,
            outputKey: \DescribeOrganizationResourceCollectionHealthResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns the number of open proactive insights, open reactive insights, and the Mean Time to Recover (MTTR)
    ///  			for all closed insights in resource collections in your account. You specify the type of
    ///  			Amazon Web Services resources collection. The one type of Amazon Web Services resource collection supported is Amazon Web Services CloudFormation stacks. DevOps Guru can be configured to analyze  	only the Amazon Web Services resources that are defined in the stacks. You can specify up to 500 Amazon Web Services CloudFormation stacks.
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
    public func describeResourceCollectionHealthPaginator<Result>(
        _ input: DescribeResourceCollectionHealthRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeResourceCollectionHealthResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeResourceCollectionHealth,
            inputKey: \DescribeResourceCollectionHealthRequest.nextToken,
            outputKey: \DescribeResourceCollectionHealthResponse.nextToken,
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
    public func describeResourceCollectionHealthPaginator(
        _ input: DescribeResourceCollectionHealthRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeResourceCollectionHealthResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeResourceCollectionHealth,
            inputKey: \DescribeResourceCollectionHealthRequest.nextToken,
            outputKey: \DescribeResourceCollectionHealthResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns an estimate of the monthly cost for DevOps Guru to analyze your Amazon Web Services resources.
    ///  			For more information,
    ///  			see Estimate your
    ///  			Amazon DevOps Guru costs and
    ///  			Amazon DevOps Guru pricing.
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
    public func getCostEstimationPaginator<Result>(
        _ input: GetCostEstimationRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetCostEstimationResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getCostEstimation,
            inputKey: \GetCostEstimationRequest.nextToken,
            outputKey: \GetCostEstimationResponse.nextToken,
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
    public func getCostEstimationPaginator(
        _ input: GetCostEstimationRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetCostEstimationResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getCostEstimation,
            inputKey: \GetCostEstimationRequest.nextToken,
            outputKey: \GetCostEstimationResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns lists Amazon Web Services resources that are of the specified resource collection type.
    ///  			The one type of Amazon Web Services resource collection supported is Amazon Web Services CloudFormation stacks. DevOps Guru can be configured to analyze  	only the Amazon Web Services resources that are defined in the stacks. You can specify up to 500 Amazon Web Services CloudFormation stacks.
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
    public func getResourceCollectionPaginator<Result>(
        _ input: GetResourceCollectionRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetResourceCollectionResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getResourceCollection,
            inputKey: \GetResourceCollectionRequest.nextToken,
            outputKey: \GetResourceCollectionResponse.nextToken,
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
    public func getResourceCollectionPaginator(
        _ input: GetResourceCollectionRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetResourceCollectionResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getResourceCollection,
            inputKey: \GetResourceCollectionRequest.nextToken,
            outputKey: \GetResourceCollectionResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of the anomalies that belong to an insight that you specify using its
    ///  			ID.
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
    public func listAnomaliesForInsightPaginator<Result>(
        _ input: ListAnomaliesForInsightRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAnomaliesForInsightResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAnomaliesForInsight,
            inputKey: \ListAnomaliesForInsightRequest.nextToken,
            outputKey: \ListAnomaliesForInsightResponse.nextToken,
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
    public func listAnomaliesForInsightPaginator(
        _ input: ListAnomaliesForInsightRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAnomaliesForInsightResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAnomaliesForInsight,
            inputKey: \ListAnomaliesForInsightRequest.nextToken,
            outputKey: \ListAnomaliesForInsightResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of the events emitted by the resources that are evaluated by DevOps Guru.
    ///  			You can use filters to specify which events are returned.
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
    public func listEventsPaginator<Result>(
        _ input: ListEventsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListEventsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listEvents,
            inputKey: \ListEventsRequest.nextToken,
            outputKey: \ListEventsResponse.nextToken,
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
    public func listEventsPaginator(
        _ input: ListEventsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEventsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEvents,
            inputKey: \ListEventsRequest.nextToken,
            outputKey: \ListEventsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of insights in your Amazon Web Services account. You can specify which insights are
    ///  			returned by their start time and status (ONGOING, CLOSED, or
    ///  				ANY).
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
    public func listInsightsPaginator<Result>(
        _ input: ListInsightsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListInsightsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listInsights,
            inputKey: \ListInsightsRequest.nextToken,
            outputKey: \ListInsightsResponse.nextToken,
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
    public func listInsightsPaginator(
        _ input: ListInsightsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListInsightsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listInsights,
            inputKey: \ListInsightsRequest.nextToken,
            outputKey: \ListInsightsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of notification channels configured for DevOps Guru. Each notification
    ///  			channel is used to notify you when DevOps Guru generates an insight that contains information
    ///  			about how to improve your operations. The one  	supported notification channel is Amazon Simple Notification Service (Amazon SNS).
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
    public func listNotificationChannelsPaginator<Result>(
        _ input: ListNotificationChannelsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListNotificationChannelsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listNotificationChannels,
            inputKey: \ListNotificationChannelsRequest.nextToken,
            outputKey: \ListNotificationChannelsResponse.nextToken,
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
    public func listNotificationChannelsPaginator(
        _ input: ListNotificationChannelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListNotificationChannelsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listNotificationChannels,
            inputKey: \ListNotificationChannelsRequest.nextToken,
            outputKey: \ListNotificationChannelsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of insights associated with the account or OU Id.
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
    public func listOrganizationInsightsPaginator<Result>(
        _ input: ListOrganizationInsightsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListOrganizationInsightsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listOrganizationInsights,
            inputKey: \ListOrganizationInsightsRequest.nextToken,
            outputKey: \ListOrganizationInsightsResponse.nextToken,
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
    public func listOrganizationInsightsPaginator(
        _ input: ListOrganizationInsightsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListOrganizationInsightsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listOrganizationInsights,
            inputKey: \ListOrganizationInsightsRequest.nextToken,
            outputKey: \ListOrganizationInsightsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of a specified insight's recommendations. Each recommendation includes
    ///  			a list of related metrics and a list of related events.
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
    public func listRecommendationsPaginator<Result>(
        _ input: ListRecommendationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRecommendationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRecommendations,
            inputKey: \ListRecommendationsRequest.nextToken,
            outputKey: \ListRecommendationsResponse.nextToken,
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
    public func listRecommendationsPaginator(
        _ input: ListRecommendationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRecommendationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRecommendations,
            inputKey: \ListRecommendationsRequest.nextToken,
            outputKey: \ListRecommendationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of insights in your Amazon Web Services account. You can specify which insights are
    ///  			returned by their start time, one or more statuses (ONGOING,
    ///  				CLOSED, and CLOSED), one or more severities
    ///  				(LOW, MEDIUM, and HIGH), and type
    ///  				(REACTIVE or PROACTIVE).
    ///  		        Use the Filters parameter to specify status and severity search
    ///  			parameters. Use the Type parameter to specify REACTIVE or
    ///  				PROACTIVE in your search.
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
    public func searchInsightsPaginator<Result>(
        _ input: SearchInsightsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, SearchInsightsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: searchInsights,
            inputKey: \SearchInsightsRequest.nextToken,
            outputKey: \SearchInsightsResponse.nextToken,
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
    public func searchInsightsPaginator(
        _ input: SearchInsightsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (SearchInsightsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchInsights,
            inputKey: \SearchInsightsRequest.nextToken,
            outputKey: \SearchInsightsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns a list of insights in your organization. You can specify which insights are
    ///  			returned by their start time, one or more statuses (ONGOING,
    ///  				CLOSED, and CLOSED), one or more severities
    ///  				(LOW, MEDIUM, and HIGH), and type
    ///  				(REACTIVE or PROACTIVE).
    ///  		        Use the Filters parameter to specify status and severity search
    ///  			parameters. Use the Type parameter to specify REACTIVE or
    ///  				PROACTIVE in your search.
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
    public func searchOrganizationInsightsPaginator<Result>(
        _ input: SearchOrganizationInsightsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, SearchOrganizationInsightsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: searchOrganizationInsights,
            inputKey: \SearchOrganizationInsightsRequest.nextToken,
            outputKey: \SearchOrganizationInsightsResponse.nextToken,
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
    public func searchOrganizationInsightsPaginator(
        _ input: SearchOrganizationInsightsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (SearchOrganizationInsightsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchOrganizationInsights,
            inputKey: \SearchOrganizationInsightsRequest.nextToken,
            outputKey: \SearchOrganizationInsightsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension DevOpsGuru.DescribeOrganizationResourceCollectionHealthRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DevOpsGuru.DescribeOrganizationResourceCollectionHealthRequest {
        return .init(
            accountIds: self.accountIds,
            maxResults: self.maxResults,
            nextToken: token,
            organizationalUnitIds: self.organizationalUnitIds,
            organizationResourceCollectionType: self.organizationResourceCollectionType
        )
    }
}

extension DevOpsGuru.DescribeResourceCollectionHealthRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DevOpsGuru.DescribeResourceCollectionHealthRequest {
        return .init(
            nextToken: token,
            resourceCollectionType: self.resourceCollectionType
        )
    }
}

extension DevOpsGuru.GetCostEstimationRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DevOpsGuru.GetCostEstimationRequest {
        return .init(
            nextToken: token
        )
    }
}

extension DevOpsGuru.GetResourceCollectionRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DevOpsGuru.GetResourceCollectionRequest {
        return .init(
            nextToken: token,
            resourceCollectionType: self.resourceCollectionType
        )
    }
}

extension DevOpsGuru.ListAnomaliesForInsightRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DevOpsGuru.ListAnomaliesForInsightRequest {
        return .init(
            accountId: self.accountId,
            insightId: self.insightId,
            maxResults: self.maxResults,
            nextToken: token,
            startTimeRange: self.startTimeRange
        )
    }
}

extension DevOpsGuru.ListEventsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DevOpsGuru.ListEventsRequest {
        return .init(
            accountId: self.accountId,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension DevOpsGuru.ListInsightsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DevOpsGuru.ListInsightsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            statusFilter: self.statusFilter
        )
    }
}

extension DevOpsGuru.ListNotificationChannelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DevOpsGuru.ListNotificationChannelsRequest {
        return .init(
            nextToken: token
        )
    }
}

extension DevOpsGuru.ListOrganizationInsightsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DevOpsGuru.ListOrganizationInsightsRequest {
        return .init(
            accountIds: self.accountIds,
            maxResults: self.maxResults,
            nextToken: token,
            organizationalUnitIds: self.organizationalUnitIds,
            statusFilter: self.statusFilter
        )
    }
}

extension DevOpsGuru.ListRecommendationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DevOpsGuru.ListRecommendationsRequest {
        return .init(
            accountId: self.accountId,
            insightId: self.insightId,
            locale: self.locale,
            nextToken: token
        )
    }
}

extension DevOpsGuru.SearchInsightsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DevOpsGuru.SearchInsightsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            startTimeRange: self.startTimeRange,
            type: self.type
        )
    }
}

extension DevOpsGuru.SearchOrganizationInsightsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DevOpsGuru.SearchOrganizationInsightsRequest {
        return .init(
            accountIds: self.accountIds,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            startTimeRange: self.startTimeRange,
            type: self.type
        )
    }
}
