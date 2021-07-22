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

extension CodePipeline {
    ///  Lists the action executions that have occurred in a pipeline.
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
    public func listActionExecutionsPaginator<Result>(
        _ input: ListActionExecutionsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListActionExecutionsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listActionExecutions,
            inputKey: \ListActionExecutionsInput.nextToken,
            outputKey: \ListActionExecutionsOutput.nextToken,
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
    public func listActionExecutionsPaginator(
        _ input: ListActionExecutionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListActionExecutionsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listActionExecutions,
            inputKey: \ListActionExecutionsInput.nextToken,
            outputKey: \ListActionExecutionsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a summary of all AWS CodePipeline action types associated with your account.
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
    public func listActionTypesPaginator<Result>(
        _ input: ListActionTypesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListActionTypesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listActionTypes,
            inputKey: \ListActionTypesInput.nextToken,
            outputKey: \ListActionTypesOutput.nextToken,
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
    public func listActionTypesPaginator(
        _ input: ListActionTypesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListActionTypesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listActionTypes,
            inputKey: \ListActionTypesInput.nextToken,
            outputKey: \ListActionTypesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a summary of the most recent executions for a pipeline.
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
    public func listPipelineExecutionsPaginator<Result>(
        _ input: ListPipelineExecutionsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPipelineExecutionsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPipelineExecutions,
            inputKey: \ListPipelineExecutionsInput.nextToken,
            outputKey: \ListPipelineExecutionsOutput.nextToken,
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
    public func listPipelineExecutionsPaginator(
        _ input: ListPipelineExecutionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPipelineExecutionsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPipelineExecutions,
            inputKey: \ListPipelineExecutionsInput.nextToken,
            outputKey: \ListPipelineExecutionsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a summary of all of the pipelines associated with your account.
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
    public func listPipelinesPaginator<Result>(
        _ input: ListPipelinesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPipelinesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPipelines,
            inputKey: \ListPipelinesInput.nextToken,
            outputKey: \ListPipelinesOutput.nextToken,
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
    public func listPipelinesPaginator(
        _ input: ListPipelinesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPipelinesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPipelines,
            inputKey: \ListPipelinesInput.nextToken,
            outputKey: \ListPipelinesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets the set of key-value pairs (metadata) that are used to manage the resource.
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
    public func listTagsForResourcePaginator<Result>(
        _ input: ListTagsForResourceInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTagsForResourceOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTagsForResource,
            inputKey: \ListTagsForResourceInput.nextToken,
            outputKey: \ListTagsForResourceOutput.nextToken,
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
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTagsForResourceOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTagsForResource,
            inputKey: \ListTagsForResourceInput.nextToken,
            outputKey: \ListTagsForResourceOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a listing of all the webhooks in this AWS Region for this account. The output lists all webhooks and includes the webhook URL and ARN and the configuration for each webhook.
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
    public func listWebhooksPaginator<Result>(
        _ input: ListWebhooksInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListWebhooksOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listWebhooks,
            inputKey: \ListWebhooksInput.nextToken,
            outputKey: \ListWebhooksOutput.nextToken,
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
    public func listWebhooksPaginator(
        _ input: ListWebhooksInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListWebhooksOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listWebhooks,
            inputKey: \ListWebhooksInput.nextToken,
            outputKey: \ListWebhooksOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension CodePipeline.ListActionExecutionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodePipeline.ListActionExecutionsInput {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            pipelineName: self.pipelineName
        )
    }
}

extension CodePipeline.ListActionTypesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodePipeline.ListActionTypesInput {
        return .init(
            actionOwnerFilter: self.actionOwnerFilter,
            nextToken: token,
            regionFilter: self.regionFilter
        )
    }
}

extension CodePipeline.ListPipelineExecutionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodePipeline.ListPipelineExecutionsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            pipelineName: self.pipelineName
        )
    }
}

extension CodePipeline.ListPipelinesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodePipeline.ListPipelinesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension CodePipeline.ListTagsForResourceInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodePipeline.ListTagsForResourceInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )
    }
}

extension CodePipeline.ListWebhooksInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodePipeline.ListWebhooksInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
