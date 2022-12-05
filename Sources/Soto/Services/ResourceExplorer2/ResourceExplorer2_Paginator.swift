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

import SotoCore

// MARK: Paginators

extension ResourceExplorer2 {
    ///  Retrieves a list of all of the indexes in Amazon Web Services Regions that are currently collecting resource information for Amazon Web Services Resource Explorer.
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
    public func listIndexesPaginator<Result>(
        _ input: ListIndexesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListIndexesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listIndexes,
            inputKey: \ListIndexesInput.nextToken,
            outputKey: \ListIndexesOutput.nextToken,
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
    public func listIndexesPaginator(
        _ input: ListIndexesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListIndexesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listIndexes,
            inputKey: \ListIndexesInput.nextToken,
            outputKey: \ListIndexesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of all resource types currently supported by Amazon Web Services Resource Explorer.
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
    public func listSupportedResourceTypesPaginator<Result>(
        _ input: ListSupportedResourceTypesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSupportedResourceTypesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listSupportedResourceTypes,
            inputKey: \ListSupportedResourceTypesInput.nextToken,
            outputKey: \ListSupportedResourceTypesOutput.nextToken,
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
    public func listSupportedResourceTypesPaginator(
        _ input: ListSupportedResourceTypesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSupportedResourceTypesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSupportedResourceTypes,
            inputKey: \ListSupportedResourceTypesInput.nextToken,
            outputKey: \ListSupportedResourceTypesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the Amazon resource names (ARNs) of the views available in the Amazon Web Services Region in which you call this operation.  Always check the NextToken response parameter
    ///  for a null value when calling a paginated operation. These operations can
    ///  occasionally return an empty set of results even when there are more results available. The
    ///  NextToken response parameter value is null only
    ///  when there are no more results to display.
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
    public func listViewsPaginator<Result>(
        _ input: ListViewsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListViewsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listViews,
            inputKey: \ListViewsInput.nextToken,
            outputKey: \ListViewsOutput.nextToken,
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
    public func listViewsPaginator(
        _ input: ListViewsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListViewsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listViews,
            inputKey: \ListViewsInput.nextToken,
            outputKey: \ListViewsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Searches for resources and displays details about all resources that match the specified criteria. You must specify a query string. All search queries must use a view. If you don't explicitly specify a view, then Amazon Web Services Resource Explorer uses the default view for the Amazon Web Services Region in which you call this operation. The results are the logical intersection of the results that match both the QueryString parameter supplied to this operation and the SearchFilter parameter attached to the view. For the complete syntax supported by the QueryString parameter, see Search query syntax reference for Resource Explorer. If your search results are empty, or are missing results that you think should be there, see Troubleshooting Resource Explorer search.
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
    public func searchPaginator<Result>(
        _ input: SearchInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, SearchOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: search,
            inputKey: \SearchInput.nextToken,
            outputKey: \SearchOutput.nextToken,
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
    public func searchPaginator(
        _ input: SearchInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (SearchOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: search,
            inputKey: \SearchInput.nextToken,
            outputKey: \SearchOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension ResourceExplorer2.ListIndexesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceExplorer2.ListIndexesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            regions: self.regions,
            type: self.type
        )
    }
}

extension ResourceExplorer2.ListSupportedResourceTypesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceExplorer2.ListSupportedResourceTypesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ResourceExplorer2.ListViewsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceExplorer2.ListViewsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ResourceExplorer2.SearchInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceExplorer2.SearchInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            queryString: self.queryString,
            viewArn: self.viewArn
        )
    }
}