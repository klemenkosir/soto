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

#if compiler(>=5.5)

import SotoCore

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension IoTThingsGraph {
    ///  Gets revisions of the specified workflow. Only the last 100 revisions are stored. If the workflow has been deprecated, this action will return revisions that occurred before the deprecation. This action won't work for workflows that have been deleted.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getFlowTemplateRevisionsPaginator(
        _ input: GetFlowTemplateRevisionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetFlowTemplateRevisionsRequest, GetFlowTemplateRevisionsResponse> {
        return .init(
            input: input,
            command: getFlowTemplateRevisions,
            inputKey: \GetFlowTemplateRevisionsRequest.nextToken,
            outputKey: \GetFlowTemplateRevisionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets revisions made to the specified system template. Only the previous 100 revisions are stored. If the system has been deprecated, this action will return the revisions that occurred before its deprecation. This action won't work with systems that have been deleted.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getSystemTemplateRevisionsPaginator(
        _ input: GetSystemTemplateRevisionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetSystemTemplateRevisionsRequest, GetSystemTemplateRevisionsResponse> {
        return .init(
            input: input,
            command: getSystemTemplateRevisions,
            inputKey: \GetSystemTemplateRevisionsRequest.nextToken,
            outputKey: \GetSystemTemplateRevisionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of objects that contain information about events in a flow execution.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFlowExecutionMessagesPaginator(
        _ input: ListFlowExecutionMessagesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFlowExecutionMessagesRequest, ListFlowExecutionMessagesResponse> {
        return .init(
            input: input,
            command: listFlowExecutionMessages,
            inputKey: \ListFlowExecutionMessagesRequest.nextToken,
            outputKey: \ListFlowExecutionMessagesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all tags on an AWS IoT Things Graph resource.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTagsForResourceRequest, ListTagsForResourceResponse> {
        return .init(
            input: input,
            command: listTagsForResource,
            inputKey: \ListTagsForResourceRequest.nextToken,
            outputKey: \ListTagsForResourceResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Searches for entities of the specified type. You can search for entities in your namespace and the public namespace that you're tracking.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchEntitiesPaginator(
        _ input: SearchEntitiesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchEntitiesRequest, SearchEntitiesResponse> {
        return .init(
            input: input,
            command: searchEntities,
            inputKey: \SearchEntitiesRequest.nextToken,
            outputKey: \SearchEntitiesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Searches for AWS IoT Things Graph workflow execution instances.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchFlowExecutionsPaginator(
        _ input: SearchFlowExecutionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchFlowExecutionsRequest, SearchFlowExecutionsResponse> {
        return .init(
            input: input,
            command: searchFlowExecutions,
            inputKey: \SearchFlowExecutionsRequest.nextToken,
            outputKey: \SearchFlowExecutionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Searches for summary information about workflows.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchFlowTemplatesPaginator(
        _ input: SearchFlowTemplatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchFlowTemplatesRequest, SearchFlowTemplatesResponse> {
        return .init(
            input: input,
            command: searchFlowTemplates,
            inputKey: \SearchFlowTemplatesRequest.nextToken,
            outputKey: \SearchFlowTemplatesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Searches for system instances in the user's account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchSystemInstancesPaginator(
        _ input: SearchSystemInstancesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchSystemInstancesRequest, SearchSystemInstancesResponse> {
        return .init(
            input: input,
            command: searchSystemInstances,
            inputKey: \SearchSystemInstancesRequest.nextToken,
            outputKey: \SearchSystemInstancesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Searches for summary information about systems in the user's account. You can filter by the ID of a workflow to return only systems that use the specified workflow.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchSystemTemplatesPaginator(
        _ input: SearchSystemTemplatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchSystemTemplatesRequest, SearchSystemTemplatesResponse> {
        return .init(
            input: input,
            command: searchSystemTemplates,
            inputKey: \SearchSystemTemplatesRequest.nextToken,
            outputKey: \SearchSystemTemplatesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Searches for things associated with the specified entity. You can search by both device and device model. For example, if two different devices, camera1 and camera2, implement the camera device model, the user can associate thing1 to camera1 and thing2 to camera2. SearchThings(camera2) will return only thing2, but SearchThings(camera) will return both thing1 and thing2. This action searches for exact matches and doesn't perform partial text matching.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchThingsPaginator(
        _ input: SearchThingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchThingsRequest, SearchThingsResponse> {
        return .init(
            input: input,
            command: searchThings,
            inputKey: \SearchThingsRequest.nextToken,
            outputKey: \SearchThingsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5)
