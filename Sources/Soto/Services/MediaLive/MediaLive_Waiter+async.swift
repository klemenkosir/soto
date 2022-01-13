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

// MARK: Waiters

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension MediaLive {
    public func waitUntilChannelCreated(
        _ input: DescribeChannelRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "IDLE")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "CREATING")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerErrorException")),
                .init(state: .failure, matcher: try! JMESPathMatcher("state", expected: "CREATE_FAILED")),
            ],
            minDelayTime: .seconds(3),
            command: describeChannel
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilChannelDeleted(
        _ input: DescribeChannelRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "DELETED")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "DELETING")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerErrorException")),
            ],
            minDelayTime: .seconds(5),
            command: describeChannel
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilChannelRunning(
        _ input: DescribeChannelRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "RUNNING")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "STARTING")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerErrorException")),
            ],
            minDelayTime: .seconds(5),
            command: describeChannel
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilChannelStopped(
        _ input: DescribeChannelRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "IDLE")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "STOPPING")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerErrorException")),
            ],
            minDelayTime: .seconds(5),
            command: describeChannel
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilInputAttached(
        _ input: DescribeInputRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "ATTACHED")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "DETACHED")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerErrorException")),
            ],
            minDelayTime: .seconds(5),
            command: describeInput
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilInputDeleted(
        _ input: DescribeInputRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "DELETED")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "DELETING")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerErrorException")),
            ],
            minDelayTime: .seconds(5),
            command: describeInput
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilInputDetached(
        _ input: DescribeInputRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "DETACHED")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "CREATING")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "ATTACHED")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerErrorException")),
            ],
            minDelayTime: .seconds(5),
            command: describeInput
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilMultiplexCreated(
        _ input: DescribeMultiplexRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "IDLE")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "CREATING")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerErrorException")),
                .init(state: .failure, matcher: try! JMESPathMatcher("state", expected: "CREATE_FAILED")),
            ],
            minDelayTime: .seconds(3),
            command: describeMultiplex
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilMultiplexDeleted(
        _ input: DescribeMultiplexRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "DELETED")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "DELETING")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerErrorException")),
            ],
            minDelayTime: .seconds(5),
            command: describeMultiplex
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilMultiplexRunning(
        _ input: DescribeMultiplexRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "RUNNING")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "STARTING")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerErrorException")),
            ],
            minDelayTime: .seconds(5),
            command: describeMultiplex
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilMultiplexStopped(
        _ input: DescribeMultiplexRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("state", expected: "IDLE")),
                .init(state: .retry, matcher: try! JMESPathMatcher("state", expected: "STOPPING")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerErrorException")),
            ],
            minDelayTime: .seconds(5),
            command: describeMultiplex
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
