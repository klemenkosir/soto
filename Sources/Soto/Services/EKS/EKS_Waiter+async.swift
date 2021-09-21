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

// MARK: Waiters

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension EKS {
    public func waitUntilAddonActive(
        _ input: DescribeAddonRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .failure, matcher: try! JMESPathMatcher("addon.status", expected: "CREATE_FAILED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("addon.status", expected: "DEGRADED")),
                .init(state: .success, matcher: try! JMESPathMatcher("addon.status", expected: "ACTIVE")),
            ],
            minDelayTime: .seconds(10),
            command: describeAddon
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilAddonDeleted(
        _ input: DescribeAddonRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .failure, matcher: try! JMESPathMatcher("addon.status", expected: "DELETE_FAILED")),
                .init(state: .success, matcher: AWSErrorCodeMatcher("ResourceNotFoundException")),
            ],
            minDelayTime: .seconds(10),
            command: describeAddon
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilClusterActive(
        _ input: DescribeClusterRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .failure, matcher: try! JMESPathMatcher("cluster.status", expected: "DELETING")),
                .init(state: .failure, matcher: try! JMESPathMatcher("cluster.status", expected: "FAILED")),
                .init(state: .success, matcher: try! JMESPathMatcher("cluster.status", expected: "ACTIVE")),
            ],
            minDelayTime: .seconds(30),
            command: describeCluster
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilClusterDeleted(
        _ input: DescribeClusterRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .failure, matcher: try! JMESPathMatcher("cluster.status", expected: "ACTIVE")),
                .init(state: .failure, matcher: try! JMESPathMatcher("cluster.status", expected: "CREATING")),
                .init(state: .failure, matcher: try! JMESPathMatcher("cluster.status", expected: "PENDING")),
                .init(state: .success, matcher: AWSErrorCodeMatcher("ResourceNotFoundException")),
            ],
            minDelayTime: .seconds(30),
            command: describeCluster
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilFargateProfileActive(
        _ input: DescribeFargateProfileRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .failure, matcher: try! JMESPathMatcher("fargateProfile.status", expected: "CREATE_FAILED")),
                .init(state: .success, matcher: try! JMESPathMatcher("fargateProfile.status", expected: "ACTIVE")),
            ],
            minDelayTime: .seconds(10),
            command: describeFargateProfile
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilFargateProfileDeleted(
        _ input: DescribeFargateProfileRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .failure, matcher: try! JMESPathMatcher("fargateProfile.status", expected: "DELETE_FAILED")),
                .init(state: .success, matcher: AWSErrorCodeMatcher("ResourceNotFoundException")),
            ],
            minDelayTime: .seconds(30),
            command: describeFargateProfile
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilNodegroupActive(
        _ input: DescribeNodegroupRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .failure, matcher: try! JMESPathMatcher("nodegroup.status", expected: "CREATE_FAILED")),
                .init(state: .success, matcher: try! JMESPathMatcher("nodegroup.status", expected: "ACTIVE")),
            ],
            minDelayTime: .seconds(30),
            command: describeNodegroup
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilNodegroupDeleted(
        _ input: DescribeNodegroupRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .failure, matcher: try! JMESPathMatcher("nodegroup.status", expected: "DELETE_FAILED")),
                .init(state: .success, matcher: AWSErrorCodeMatcher("ResourceNotFoundException")),
            ],
            minDelayTime: .seconds(30),
            command: describeNodegroup
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5)
