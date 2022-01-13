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
extension ServiceCatalogAppRegistry {
    ///  Retrieves a list of all of your applications. Results are paginated.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listApplicationsPaginator(
        _ input: ListApplicationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListApplicationsRequest, ListApplicationsResponse> {
        return .init(
            input: input,
            command: listApplications,
            inputKey: \ListApplicationsRequest.nextToken,
            outputKey: \ListApplicationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all attribute groups that are associated with specified application.  Results are paginated.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssociatedAttributeGroupsPaginator(
        _ input: ListAssociatedAttributeGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssociatedAttributeGroupsRequest, ListAssociatedAttributeGroupsResponse> {
        return .init(
            input: input,
            command: listAssociatedAttributeGroups,
            inputKey: \ListAssociatedAttributeGroupsRequest.nextToken,
            outputKey: \ListAssociatedAttributeGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all resources that are associated with specified application. Results are paginated.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssociatedResourcesPaginator(
        _ input: ListAssociatedResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssociatedResourcesRequest, ListAssociatedResourcesResponse> {
        return .init(
            input: input,
            command: listAssociatedResources,
            inputKey: \ListAssociatedResourcesRequest.nextToken,
            outputKey: \ListAssociatedResourcesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all attribute groups which you have access to. Results are paginated.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAttributeGroupsPaginator(
        _ input: ListAttributeGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAttributeGroupsRequest, ListAttributeGroupsResponse> {
        return .init(
            input: input,
            command: listAttributeGroups,
            inputKey: \ListAttributeGroupsRequest.nextToken,
            outputKey: \ListAttributeGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
