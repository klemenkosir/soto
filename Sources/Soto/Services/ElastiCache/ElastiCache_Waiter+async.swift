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
extension ElastiCache {
    public func waitUntilCacheClusterAvailable(
        _ input: DescribeCacheClustersMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("cacheClusters[].cacheClusterStatus", expected: "available")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("cacheClusters[].cacheClusterStatus", expected: "deleted")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("cacheClusters[].cacheClusterStatus", expected: "deleting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("cacheClusters[].cacheClusterStatus", expected: "incompatible-network")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("cacheClusters[].cacheClusterStatus", expected: "restore-failed")),
            ],
            minDelayTime: .seconds(15),
            command: describeCacheClusters
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilCacheClusterDeleted(
        _ input: DescribeCacheClustersMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("cacheClusters[].cacheClusterStatus", expected: "deleted")),
                .init(state: .success, matcher: AWSErrorCodeMatcher("CacheClusterNotFound")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("cacheClusters[].cacheClusterStatus", expected: "available")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("cacheClusters[].cacheClusterStatus", expected: "creating")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("cacheClusters[].cacheClusterStatus", expected: "incompatible-network")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("cacheClusters[].cacheClusterStatus", expected: "modifying")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("cacheClusters[].cacheClusterStatus", expected: "restore-failed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("cacheClusters[].cacheClusterStatus", expected: "snapshotting")),
            ],
            minDelayTime: .seconds(15),
            command: describeCacheClusters
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilReplicationGroupAvailable(
        _ input: DescribeReplicationGroupsMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("replicationGroups[].status", expected: "available")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationGroups[].status", expected: "deleted")),
            ],
            minDelayTime: .seconds(15),
            command: describeReplicationGroups
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilReplicationGroupDeleted(
        _ input: DescribeReplicationGroupsMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("replicationGroups[].status", expected: "deleted")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationGroups[].status", expected: "available")),
                .init(state: .success, matcher: AWSErrorCodeMatcher("ReplicationGroupNotFoundFault")),
            ],
            minDelayTime: .seconds(15),
            command: describeReplicationGroups
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
