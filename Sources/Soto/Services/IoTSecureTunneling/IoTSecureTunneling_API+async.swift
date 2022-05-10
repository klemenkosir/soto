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
extension IoTSecureTunneling {
    // MARK: Async API Calls

    /// Closes a tunnel identified by the unique tunnel id. When a CloseTunnel
    /// 			request is received, we close the WebSocket connections between the client and proxy
    /// 			server so no data can be transmitted.
    /// 		       Requires permission to access the CloseTunnel action.
    public func closeTunnel(_ input: CloseTunnelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseTunnelResponse {
        return try await self.client.execute(operation: "CloseTunnel", path: "/tunnels/{tunnelId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a tunnel identified by the unique tunnel id.
    /// 		       Requires permission to access the DescribeTunnel action.
    public func describeTunnel(_ input: DescribeTunnelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTunnelResponse {
        return try await self.client.execute(operation: "DescribeTunnel", path: "/tunnels/{tunnelId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all tunnels for an Amazon Web Services account. Tunnels are listed by creation time in
    /// 			descending order, newer tunnels will be listed before older tunnels.
    /// 		       Requires permission to access the ListTunnels action.
    public func listTunnels(_ input: ListTunnelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTunnelsResponse {
        return try await self.client.execute(operation: "ListTunnels", path: "/tunnels", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new tunnel, and returns two client access tokens for clients to use to
    /// 			connect to the IoT Secure Tunneling proxy server.
    /// 		       Requires permission to access the OpenTunnel action.
    public func openTunnel(_ input: OpenTunnelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenTunnelResponse {
        return try await self.client.execute(operation: "OpenTunnel", path: "/tunnels", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Revokes the current client access token (CAT) and returns new CAT for clients to
    /// 			use when reconnecting to secure tunneling to access the same tunnel.
    /// 		       Requires permission to access the RotateTunnelAccessToken action.
    ///
    /// 			         Rotating the CAT doesn't extend the tunnel duration. For example, say the tunnel
    /// 				duration is 12 hours and the tunnel has already been open for 4 hours. When you
    /// 				rotate the access tokens, the new tokens that are generated can only be used for the
    /// 				remaining 8 hours.
    ///
    public func rotateTunnelAccessToken(_ input: RotateTunnelAccessTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RotateTunnelAccessTokenResponse {
        return try await self.client.execute(operation: "RotateTunnelAccessToken", path: "/tunnel/{tunnelId}/rotate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A resource tag.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a tag from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/untag", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
