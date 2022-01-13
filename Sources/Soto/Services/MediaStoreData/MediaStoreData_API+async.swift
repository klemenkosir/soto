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
extension MediaStoreData {
    // MARK: Async API Calls

    /// Deletes an object at the specified path.
    public func deleteObject(_ input: DeleteObjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteObjectResponse {
        return try await self.client.execute(operation: "DeleteObject", path: "/{Path+}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the headers for an object at the specified path.
    public func describeObject(_ input: DescribeObjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeObjectResponse {
        return try await self.client.execute(operation: "DescribeObject", path: "/{Path+}", httpMethod: .HEAD, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Downloads the object at the specified path. If the object’s upload availability is set to streaming, AWS Elemental MediaStore downloads the object even if it’s still uploading the object.
    public func getObject(_ input: GetObjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetObjectResponse {
        return try await self.client.execute(operation: "GetObject", path: "/{Path+}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a list of metadata entries about folders and objects in the specified folder.
    public func listItems(_ input: ListItemsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListItemsResponse {
        return try await self.client.execute(operation: "ListItems", path: "/", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Uploads an object to the specified path. Object sizes are limited to 25 MB for standard upload availability and 10 MB for streaming upload availability.
    public func putObject(_ input: PutObjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutObjectResponse {
        return try await self.client.execute(operation: "PutObject", path: "/{Path+}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    // MARK: Streaming Async API Calls

    /// Downloads the object at the specified path. If the object’s upload availability is set to streaming, AWS Elemental MediaStore downloads the object even if it’s still uploading the object.
    public func getObjectStreaming(_ input: GetObjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil, _ stream: @escaping (ByteBuffer, EventLoop) -> EventLoopFuture<Void>) async throws -> GetObjectResponse {
        return try await self.client.execute(operation: "GetObject", path: "/{Path+}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop, stream: stream)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
