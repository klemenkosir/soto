//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2023 the Soto project authors
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

#if os(Linux) && compiler(<5.10)
// swift-corelibs-foundation hasn't been updated with Sendable conformances
@preconcurrency import Foundation
#else
import Foundation
#endif
@_spi(SotoInternal) import SotoCore

extension CloudFrontKeyValueStore {
    // MARK: Enums

    // MARK: Shapes

    public struct DeleteKeyRequest: AWSEncodableShape {
        /// The current version (ETag) of the Key Value Store that you are deleting keys from, which you can get using DescribeKeyValueStore.
        public let ifMatch: String
        /// The key to delete.
        public let key: String
        /// The Amazon Resource Name (ARN) of the Key Value Store.
        public let kvsARN: String

        public init(ifMatch: String, key: String, kvsARN: String) {
            self.ifMatch = ifMatch
            self.key = key
            self.kvsARN = kvsARN
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodeHeader(self.ifMatch, key: "If-Match")
            request.encodePath(self.key, key: "Key")
            request.encodePath(self.kvsARN, key: "KvsARN")
        }

        public func validate(name: String) throws {
            try self.validate(self.key, name: "key", parent: name, max: 1024)
            try self.validate(self.key, name: "key", parent: name, min: 1)
            try self.validate(self.kvsARN, name: "kvsARN", parent: name, max: 2048)
            try self.validate(self.kvsARN, name: "kvsARN", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteKeyRequestListItem: AWSEncodableShape {
        /// The key of the key value pair to be deleted.
        public let key: String

        public init(key: String) {
            self.key = key
        }

        public func validate(name: String) throws {
            try self.validate(self.key, name: "key", parent: name, max: 1024)
            try self.validate(self.key, name: "key", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
        }
    }

    public struct DeleteKeyResponse: AWSDecodableShape {
        /// The current version identifier of the Key Value Store after the successful delete.
        public let eTag: String
        /// Number of key value pairs in the Key Value Store after the successful delete.
        public let itemCount: Int
        /// Total size of the Key Value Store after the successful delete, in bytes.
        public let totalSizeInBytes: Int64

        public init(eTag: String, itemCount: Int, totalSizeInBytes: Int64) {
            self.eTag = eTag
            self.itemCount = itemCount
            self.totalSizeInBytes = totalSizeInBytes
        }

        public init(from decoder: Decoder) throws {
            let response = decoder.userInfo[.awsResponse]! as! ResponseDecodingContainer
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.eTag = try response.decodeHeader(String.self, key: "ETag")
            self.itemCount = try container.decode(Int.self, forKey: .itemCount)
            self.totalSizeInBytes = try container.decode(Int64.self, forKey: .totalSizeInBytes)
        }

        private enum CodingKeys: String, CodingKey {
            case itemCount = "ItemCount"
            case totalSizeInBytes = "TotalSizeInBytes"
        }
    }

    public struct DescribeKeyValueStoreRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the Key Value Store.
        public let kvsARN: String

        public init(kvsARN: String) {
            self.kvsARN = kvsARN
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.kvsARN, key: "KvsARN")
        }

        public func validate(name: String) throws {
            try self.validate(self.kvsARN, name: "kvsARN", parent: name, max: 2048)
            try self.validate(self.kvsARN, name: "kvsARN", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DescribeKeyValueStoreResponse: AWSDecodableShape {
        /// Date and time when the Key Value Store was created.
        public let created: Date
        /// The version identifier for the current version of the Key Value Store.
        public let eTag: String
        /// The reason for Key Value Store creation failure.
        public let failureReason: String?
        /// Number of key value pairs in the Key Value Store.
        public let itemCount: Int
        /// The Amazon Resource Name (ARN) of the Key Value Store.
        public let kvsARN: String
        /// Date and time when the key value pairs in the Key Value Store was last modified.
        public let lastModified: Date?
        /// The current status of the Key Value Store.
        public let status: String?
        /// Total size of the Key Value Store in bytes.
        public let totalSizeInBytes: Int64

        public init(created: Date, eTag: String, failureReason: String? = nil, itemCount: Int, kvsARN: String, lastModified: Date? = nil, status: String? = nil, totalSizeInBytes: Int64) {
            self.created = created
            self.eTag = eTag
            self.failureReason = failureReason
            self.itemCount = itemCount
            self.kvsARN = kvsARN
            self.lastModified = lastModified
            self.status = status
            self.totalSizeInBytes = totalSizeInBytes
        }

        public init(from decoder: Decoder) throws {
            let response = decoder.userInfo[.awsResponse]! as! ResponseDecodingContainer
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.created = try container.decode(Date.self, forKey: .created)
            self.eTag = try response.decodeHeader(String.self, key: "ETag")
            self.failureReason = try container.decodeIfPresent(String.self, forKey: .failureReason)
            self.itemCount = try container.decode(Int.self, forKey: .itemCount)
            self.kvsARN = try container.decode(String.self, forKey: .kvsARN)
            self.lastModified = try container.decodeIfPresent(Date.self, forKey: .lastModified)
            self.status = try container.decodeIfPresent(String.self, forKey: .status)
            self.totalSizeInBytes = try container.decode(Int64.self, forKey: .totalSizeInBytes)
        }

        private enum CodingKeys: String, CodingKey {
            case created = "Created"
            case failureReason = "FailureReason"
            case itemCount = "ItemCount"
            case kvsARN = "KvsARN"
            case lastModified = "LastModified"
            case status = "Status"
            case totalSizeInBytes = "TotalSizeInBytes"
        }
    }

    public struct GetKeyRequest: AWSEncodableShape {
        /// The key to get.
        public let key: String
        /// The Amazon Resource Name (ARN) of the Key Value Store.
        public let kvsARN: String

        public init(key: String, kvsARN: String) {
            self.key = key
            self.kvsARN = kvsARN
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.key, key: "Key")
            request.encodePath(self.kvsARN, key: "KvsARN")
        }

        public func validate(name: String) throws {
            try self.validate(self.key, name: "key", parent: name, max: 1024)
            try self.validate(self.key, name: "key", parent: name, min: 1)
            try self.validate(self.kvsARN, name: "kvsARN", parent: name, max: 2048)
            try self.validate(self.kvsARN, name: "kvsARN", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetKeyResponse: AWSDecodableShape {
        /// Number of key value pairs in the Key Value Store.
        public let itemCount: Int
        /// The key of the key value pair.
        public let key: String
        /// Total size of the Key Value Store in bytes.
        public let totalSizeInBytes: Int64
        /// The value of the key value pair.
        public let value: String

        public init(itemCount: Int, key: String, totalSizeInBytes: Int64, value: String) {
            self.itemCount = itemCount
            self.key = key
            self.totalSizeInBytes = totalSizeInBytes
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case itemCount = "ItemCount"
            case key = "Key"
            case totalSizeInBytes = "TotalSizeInBytes"
            case value = "Value"
        }
    }

    public struct ListKeysRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the Key Value Store.
        public let kvsARN: String
        /// Maximum number of results that are returned per call. The default is 10 and maximum allowed page is 50.
        public let maxResults: Int?
        /// If nextToken is returned in the response, there are more results available. Make the next call using the returned token to retrieve the next page.
        public let nextToken: String?

        public init(kvsARN: String, maxResults: Int? = nil, nextToken: String? = nil) {
            self.kvsARN = kvsARN
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.kvsARN, key: "KvsARN")
            request.encodeQuery(self.maxResults, key: "MaxResults")
            request.encodeQuery(self.nextToken, key: "NextToken")
        }

        public func validate(name: String) throws {
            try self.validate(self.kvsARN, name: "kvsARN", parent: name, max: 2048)
            try self.validate(self.kvsARN, name: "kvsARN", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListKeysResponse: AWSDecodableShape {
        /// Key value pairs
        public let items: [ListKeysResponseListItem]?
        /// If nextToken is returned in the response, there are more results available. Make the next call using the returned token to retrieve the next page.
        public let nextToken: String?

        public init(items: [ListKeysResponseListItem]? = nil, nextToken: String? = nil) {
            self.items = items
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case items = "Items"
            case nextToken = "NextToken"
        }
    }

    public struct ListKeysResponseListItem: AWSDecodableShape {
        /// The key of the key value pair.
        public let key: String
        /// The value of the key value pair.
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    public struct PutKeyRequest: AWSEncodableShape {
        /// The current version (ETag) of the Key Value Store that you are putting keys into, which you can get using DescribeKeyValueStore.
        public let ifMatch: String
        /// The key to put.
        public let key: String
        /// The Amazon Resource Name (ARN) of the Key Value Store.
        public let kvsARN: String
        /// The value to put.
        public let value: String

        public init(ifMatch: String, key: String, kvsARN: String, value: String) {
            self.ifMatch = ifMatch
            self.key = key
            self.kvsARN = kvsARN
            self.value = value
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            var container = encoder.container(keyedBy: CodingKeys.self)
            request.encodeHeader(self.ifMatch, key: "If-Match")
            request.encodePath(self.key, key: "Key")
            request.encodePath(self.kvsARN, key: "KvsARN")
            try container.encode(self.value, forKey: .value)
        }

        public func validate(name: String) throws {
            try self.validate(self.key, name: "key", parent: name, max: 1024)
            try self.validate(self.key, name: "key", parent: name, min: 1)
            try self.validate(self.kvsARN, name: "kvsARN", parent: name, max: 2048)
            try self.validate(self.kvsARN, name: "kvsARN", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case value = "Value"
        }
    }

    public struct PutKeyRequestListItem: AWSEncodableShape {
        /// The key of the key value pair list item to put.
        public let key: String
        /// The value for the key value pair to put.
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        public func validate(name: String) throws {
            try self.validate(self.key, name: "key", parent: name, max: 1024)
            try self.validate(self.key, name: "key", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    public struct PutKeyResponse: AWSDecodableShape {
        /// The current version identifier of the Key Value Store after the successful put.
        public let eTag: String
        /// Number of key value pairs in the Key Value Store after the successful put.
        public let itemCount: Int
        /// Total size of the Key Value Store after the successful put, in bytes.
        public let totalSizeInBytes: Int64

        public init(eTag: String, itemCount: Int, totalSizeInBytes: Int64) {
            self.eTag = eTag
            self.itemCount = itemCount
            self.totalSizeInBytes = totalSizeInBytes
        }

        public init(from decoder: Decoder) throws {
            let response = decoder.userInfo[.awsResponse]! as! ResponseDecodingContainer
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.eTag = try response.decodeHeader(String.self, key: "ETag")
            self.itemCount = try container.decode(Int.self, forKey: .itemCount)
            self.totalSizeInBytes = try container.decode(Int64.self, forKey: .totalSizeInBytes)
        }

        private enum CodingKeys: String, CodingKey {
            case itemCount = "ItemCount"
            case totalSizeInBytes = "TotalSizeInBytes"
        }
    }

    public struct UpdateKeysRequest: AWSEncodableShape {
        /// List of keys to delete.
        public let deletes: [DeleteKeyRequestListItem]?
        /// The current version (ETag) of the Key Value Store that you are updating keys of, which you can get using DescribeKeyValueStore.
        public let ifMatch: String
        /// The Amazon Resource Name (ARN) of the Key Value Store.
        public let kvsARN: String
        /// List of key value pairs to put.
        public let puts: [PutKeyRequestListItem]?

        public init(deletes: [DeleteKeyRequestListItem]? = nil, ifMatch: String, kvsARN: String, puts: [PutKeyRequestListItem]? = nil) {
            self.deletes = deletes
            self.ifMatch = ifMatch
            self.kvsARN = kvsARN
            self.puts = puts
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodeIfPresent(self.deletes, forKey: .deletes)
            request.encodeHeader(self.ifMatch, key: "If-Match")
            request.encodePath(self.kvsARN, key: "KvsARN")
            try container.encodeIfPresent(self.puts, forKey: .puts)
        }

        public func validate(name: String) throws {
            try self.deletes?.forEach {
                try $0.validate(name: "\(name).deletes[]")
            }
            try self.validate(self.kvsARN, name: "kvsARN", parent: name, max: 2048)
            try self.validate(self.kvsARN, name: "kvsARN", parent: name, min: 1)
            try self.puts?.forEach {
                try $0.validate(name: "\(name).puts[]")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case deletes = "Deletes"
            case puts = "Puts"
        }
    }

    public struct UpdateKeysResponse: AWSDecodableShape {
        /// The current version identifier of the Key Value Store after the successful update.
        public let eTag: String
        /// Number of key value pairs in the Key Value Store after the successful update.
        public let itemCount: Int
        /// Total size of the Key Value Store after the successful update, in bytes.
        public let totalSizeInBytes: Int64

        public init(eTag: String, itemCount: Int, totalSizeInBytes: Int64) {
            self.eTag = eTag
            self.itemCount = itemCount
            self.totalSizeInBytes = totalSizeInBytes
        }

        public init(from decoder: Decoder) throws {
            let response = decoder.userInfo[.awsResponse]! as! ResponseDecodingContainer
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.eTag = try response.decodeHeader(String.self, key: "ETag")
            self.itemCount = try container.decode(Int.self, forKey: .itemCount)
            self.totalSizeInBytes = try container.decode(Int64.self, forKey: .totalSizeInBytes)
        }

        private enum CodingKeys: String, CodingKey {
            case itemCount = "ItemCount"
            case totalSizeInBytes = "TotalSizeInBytes"
        }
    }
}

// MARK: - Errors

/// Error enum for CloudFrontKeyValueStore
public struct CloudFrontKeyValueStoreErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize CloudFrontKeyValueStore
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// Access denied.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// Resource is not in expected state.
    public static var conflictException: Self { .init(.conflictException) }
    /// Internal server error.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// Resource was not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Limit exceeded.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// Validation failed.
    public static var validationException: Self { .init(.validationException) }
}

extension CloudFrontKeyValueStoreErrorType: Equatable {
    public static func == (lhs: CloudFrontKeyValueStoreErrorType, rhs: CloudFrontKeyValueStoreErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CloudFrontKeyValueStoreErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
