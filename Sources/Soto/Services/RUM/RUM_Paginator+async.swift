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
extension RUM {
    ///  Retrieves the raw performance events that RUM has collected from your web application, so that you can do your own processing or analysis of this data.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getAppMonitorDataPaginator(
        _ input: GetAppMonitorDataRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetAppMonitorDataRequest, GetAppMonitorDataResponse> {
        return .init(
            input: input,
            command: getAppMonitorData,
            inputKey: \GetAppMonitorDataRequest.nextToken,
            outputKey: \GetAppMonitorDataResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of the Amazon CloudWatch RUM app monitors in the account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAppMonitorsPaginator(
        _ input: ListAppMonitorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAppMonitorsRequest, ListAppMonitorsResponse> {
        return .init(
            input: input,
            command: listAppMonitors,
            inputKey: \ListAppMonitorsRequest.nextToken,
            outputKey: \ListAppMonitorsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
