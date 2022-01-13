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

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension MarketplaceEntitlementService {
    // MARK: Async API Calls

    /// GetEntitlements retrieves entitlement values for a given product. The results can be filtered based on customer identifier or product dimensions.
    public func getEntitlements(_ input: GetEntitlementsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEntitlementsResult {
        return try await self.client.execute(operation: "GetEntitlements", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
