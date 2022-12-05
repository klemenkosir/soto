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

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ChimeSDKVoice {
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPhoneNumberOrdersPaginator(
        _ input: ListPhoneNumberOrdersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPhoneNumberOrdersRequest, ListPhoneNumberOrdersResponse> {
        return .init(
            input: input,
            command: listPhoneNumberOrders,
            inputKey: \ListPhoneNumberOrdersRequest.nextToken,
            outputKey: \ListPhoneNumberOrdersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPhoneNumbersPaginator(
        _ input: ListPhoneNumbersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPhoneNumbersRequest, ListPhoneNumbersResponse> {
        return .init(
            input: input,
            command: listPhoneNumbers,
            inputKey: \ListPhoneNumbersRequest.nextToken,
            outputKey: \ListPhoneNumbersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listProxySessionsPaginator(
        _ input: ListProxySessionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListProxySessionsRequest, ListProxySessionsResponse> {
        return .init(
            input: input,
            command: listProxySessions,
            inputKey: \ListProxySessionsRequest.nextToken,
            outputKey: \ListProxySessionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSipMediaApplicationsPaginator(
        _ input: ListSipMediaApplicationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSipMediaApplicationsRequest, ListSipMediaApplicationsResponse> {
        return .init(
            input: input,
            command: listSipMediaApplications,
            inputKey: \ListSipMediaApplicationsRequest.nextToken,
            outputKey: \ListSipMediaApplicationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSipRulesPaginator(
        _ input: ListSipRulesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSipRulesRequest, ListSipRulesResponse> {
        return .init(
            input: input,
            command: listSipRules,
            inputKey: \ListSipRulesRequest.nextToken,
            outputKey: \ListSipRulesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listVoiceConnectorGroupsPaginator(
        _ input: ListVoiceConnectorGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListVoiceConnectorGroupsRequest, ListVoiceConnectorGroupsResponse> {
        return .init(
            input: input,
            command: listVoiceConnectorGroups,
            inputKey: \ListVoiceConnectorGroupsRequest.nextToken,
            outputKey: \ListVoiceConnectorGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listVoiceConnectorsPaginator(
        _ input: ListVoiceConnectorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListVoiceConnectorsRequest, ListVoiceConnectorsResponse> {
        return .init(
            input: input,
            command: listVoiceConnectors,
            inputKey: \ListVoiceConnectorsRequest.nextToken,
            outputKey: \ListVoiceConnectorsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchAvailablePhoneNumbersPaginator(
        _ input: SearchAvailablePhoneNumbersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchAvailablePhoneNumbersRequest, SearchAvailablePhoneNumbersResponse> {
        return .init(
            input: input,
            command: searchAvailablePhoneNumbers,
            inputKey: \SearchAvailablePhoneNumbersRequest.nextToken,
            outputKey: \SearchAvailablePhoneNumbersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)