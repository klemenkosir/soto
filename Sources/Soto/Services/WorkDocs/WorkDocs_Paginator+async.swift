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
extension WorkDocs {
    ///  Retrieves the document versions for the specified document. By default, only active versions are returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeDocumentVersionsPaginator(
        _ input: DescribeDocumentVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeDocumentVersionsRequest, DescribeDocumentVersionsResponse> {
        return .init(
            input: input,
            command: describeDocumentVersions,
            inputKey: \DescribeDocumentVersionsRequest.marker,
            outputKey: \DescribeDocumentVersionsResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes the contents of the specified folder, including its documents and subfolders. By default, Amazon WorkDocs returns the first 100 active document and folder metadata items. If there are more results, the response includes a marker that you can use to request the next set of results. You can also request initialized documents.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeFolderContentsPaginator(
        _ input: DescribeFolderContentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeFolderContentsRequest, DescribeFolderContentsResponse> {
        return .init(
            input: input,
            command: describeFolderContents,
            inputKey: \DescribeFolderContentsRequest.marker,
            outputKey: \DescribeFolderContentsResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes the specified users. You can describe all users or filter the results (for example, by status or organization). By default, Amazon WorkDocs returns the first 24 active or pending users. If there are more results, the response includes a marker that you can use to request the next set of results.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeUsersPaginator(
        _ input: DescribeUsersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeUsersRequest, DescribeUsersResponse> {
        return .init(
            input: input,
            command: describeUsers,
            inputKey: \DescribeUsersRequest.marker,
            outputKey: \DescribeUsersResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
