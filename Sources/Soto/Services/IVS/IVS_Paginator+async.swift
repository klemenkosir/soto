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
extension IVS {
    ///  Gets summary information about all channels in your account, in the Amazon Web Services region where the API request is processed. This list can be filtered to match a specified name or recording-configuration ARN. Filters are mutually exclusive and cannot be used together. If you try to use both filters, you will get an error (409 ConflictException).
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listChannelsPaginator(
        _ input: ListChannelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListChannelsRequest, ListChannelsResponse> {
        return .init(
            input: input,
            command: listChannels,
            inputKey: \ListChannelsRequest.nextToken,
            outputKey: \ListChannelsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets summary information about playback key pairs. For more information, see Setting Up Private Channels in the Amazon IVS User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPlaybackKeyPairsPaginator(
        _ input: ListPlaybackKeyPairsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPlaybackKeyPairsRequest, ListPlaybackKeyPairsResponse> {
        return .init(
            input: input,
            command: listPlaybackKeyPairs,
            inputKey: \ListPlaybackKeyPairsRequest.nextToken,
            outputKey: \ListPlaybackKeyPairsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets summary information about all recording configurations in your account, in the Amazon Web Services region where the API request is processed.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRecordingConfigurationsPaginator(
        _ input: ListRecordingConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRecordingConfigurationsRequest, ListRecordingConfigurationsResponse> {
        return .init(
            input: input,
            command: listRecordingConfigurations,
            inputKey: \ListRecordingConfigurationsRequest.nextToken,
            outputKey: \ListRecordingConfigurationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets summary information about stream keys for the specified channel.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStreamKeysPaginator(
        _ input: ListStreamKeysRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStreamKeysRequest, ListStreamKeysResponse> {
        return .init(
            input: input,
            command: listStreamKeys,
            inputKey: \ListStreamKeysRequest.nextToken,
            outputKey: \ListStreamKeysResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a summary of current and previous streams for a specified channel in your account, in the AWS region where the API request is processed.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStreamSessionsPaginator(
        _ input: ListStreamSessionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStreamSessionsRequest, ListStreamSessionsResponse> {
        return .init(
            input: input,
            command: listStreamSessions,
            inputKey: \ListStreamSessionsRequest.nextToken,
            outputKey: \ListStreamSessionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets summary information about live streams in your account, in the Amazon Web Services region where the API request is processed.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStreamsPaginator(
        _ input: ListStreamsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStreamsRequest, ListStreamsResponse> {
        return .init(
            input: input,
            command: listStreams,
            inputKey: \ListStreamsRequest.nextToken,
            outputKey: \ListStreamsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
