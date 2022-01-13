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
extension ResourceGroups {
    ///  Returns a list of ARNs of the resources that are members of a specified resource group.  Minimum permissions  To run this command, you must have the following permissions:    resource-groups:ListGroupResources     cloudformation:DescribeStacks     cloudformation:ListStackResources     tag:GetResources
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGroupResourcesPaginator(
        _ input: ListGroupResourcesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGroupResourcesInput, ListGroupResourcesOutput> {
        return .init(
            input: input,
            command: listGroupResources,
            inputKey: \ListGroupResourcesInput.nextToken,
            outputKey: \ListGroupResourcesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of existing resource groups in your account.  Minimum permissions  To run this command, you must have the following permissions:    resource-groups:ListGroups
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGroupsPaginator(
        _ input: ListGroupsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGroupsInput, ListGroupsOutput> {
        return .init(
            input: input,
            command: listGroups,
            inputKey: \ListGroupsInput.nextToken,
            outputKey: \ListGroupsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of AWS resource identifiers that matches the specified query. The query uses the same format as a resource query in a CreateGroup or UpdateGroupQuery operation.  Minimum permissions  To run this command, you must have the following permissions:    resource-groups:SearchResources     cloudformation:DescribeStacks     cloudformation:ListStackResources     tag:GetResources
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchResourcesPaginator(
        _ input: SearchResourcesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchResourcesInput, SearchResourcesOutput> {
        return .init(
            input: input,
            command: searchResources,
            inputKey: \SearchResourcesInput.nextToken,
            outputKey: \SearchResourcesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
