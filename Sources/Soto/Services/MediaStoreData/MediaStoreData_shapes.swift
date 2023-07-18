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

#if compiler(>=5.7) && os(Linux)
// swift-corelibs-foundation hasn't been updated with Sendable conformances
@preconcurrency import Foundation
#else
import Foundation
#endif
import SotoCore

extension MediaStoreData {
    // MARK: Enums

    public enum ItemType: String, CustomStringConvertible, Codable, Sendable {
        case folder = "FOLDER"
        case object = "OBJECT"
        public var description: String { return self.rawValue }
    }

    public enum StorageClass: String, CustomStringConvertible, Codable, Sendable {
        case temporal = "TEMPORAL"
        public var description: String { return self.rawValue }
    }

    public enum UploadAvailability: String, CustomStringConvertible, Codable, Sendable {
        case standard = "STANDARD"
        case streaming = "STREAMING"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct DeleteObjectRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "path", location: .uri("Path"))
        ]

        /// The path (including the file name) where the object is stored in the container. Format: //
        public let path: String

        public init(path: String) {
            self.path = path
        }

        public func validate(name: String) throws {
            try self.validate(self.path, name: "path", parent: name, max: 900)
            try self.validate(self.path, name: "path", parent: name, min: 1)
            try self.validate(self.path, name: "path", parent: name, pattern: "(?:[A-Za-z0-9_\\.\\-\\~]+/){0,10}[A-Za-z0-9_\\.\\-\\~]+")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteObjectResponse: AWSDecodableShape {
        public init() {}
    }

    public struct DescribeObjectRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "path", location: .uri("Path"))
        ]

        /// The path (including the file name) where the object is stored in the container. Format: //
        public let path: String

        public init(path: String) {
            self.path = path
        }

        public func validate(name: String) throws {
            try self.validate(self.path, name: "path", parent: name, max: 900)
            try self.validate(self.path, name: "path", parent: name, min: 1)
            try self.validate(self.path, name: "path", parent: name, pattern: "(?:[A-Za-z0-9_\\.\\-\\~]+/){0,10}[A-Za-z0-9_\\.\\-\\~]+")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DescribeObjectResponse: AWSDecodableShape {
        /// An optional CacheControl header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP at https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9. Headers with a custom user-defined value are also accepted.
        public let cacheControl: String?
        /// The length of the object in bytes.
        public let contentLength: Int64?
        /// The content type of the object.
        public let contentType: String?
        /// The ETag that represents a unique instance of the object.
        public let eTag: String?
        /// The date and time that the object was last modified.
        @OptionalCustomCoding<HTTPHeaderDateCoder>
        public var lastModified: Date?

        public init(cacheControl: String? = nil, contentLength: Int64? = nil, contentType: String? = nil, eTag: String? = nil, lastModified: Date? = nil) {
            self.cacheControl = cacheControl
            self.contentLength = contentLength
            self.contentType = contentType
            self.eTag = eTag
            self.lastModified = lastModified
        }

        public init(from decoder: Decoder) throws {
            let response = decoder.userInfo[.awsResponse]! as! ResponseDecodingContainer
            self.cacheControl = try response.decodeIfPresent(String.self, forHeader: "Cache-Control")
            self.contentLength = try response.decodeIfPresent(Int64.self, forHeader: "Content-Length")
            self.contentType = try response.decodeIfPresent(String.self, forHeader: "Content-Type")
            self.eTag = try response.decodeIfPresent(String.self, forHeader: "ETag")
            self.lastModified = try response.decodeIfPresent(Date.self, forHeader: "Last-Modified")

        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetObjectRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "path", location: .uri("Path")),
            AWSMemberEncoding(label: "range", location: .header("Range"))
        ]

        /// The path (including the file name) where the object is stored in the container. Format: // For example, to upload the file mlaw.avi to the folder path premium\canada in the container movies, enter the path premium/canada/mlaw.avi. Do not include the container name in this path. If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing premium/usa subfolder. If you specify premium/canada, the service creates a canada subfolder in the premium folder. You then have two subfolders, usa and canada, in the premium folder.  There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore. For more information about folders and how they exist in a container, see the AWS Elemental MediaStore User Guide. The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension.
        public let path: String
        /// The range bytes of an object to retrieve. For more information about the Range header, see http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35. AWS Elemental MediaStore ignores this header for partially uploaded objects that have streaming upload availability.
        public let range: String?

        public init(path: String, range: String? = nil) {
            self.path = path
            self.range = range
        }

        public func validate(name: String) throws {
            try self.validate(self.path, name: "path", parent: name, max: 900)
            try self.validate(self.path, name: "path", parent: name, min: 1)
            try self.validate(self.path, name: "path", parent: name, pattern: "(?:[A-Za-z0-9_\\.\\-\\~]+/){0,10}[A-Za-z0-9_\\.\\-\\~]+")
            try self.validate(self.range, name: "range", parent: name, pattern: "^bytes=(?:\\d+\\-\\d*|\\d*\\-\\d+)$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetObjectResponse: AWSDecodableShape {
        public static let _options: AWSShapeOptions = [.rawPayload, .allowStreaming]
        /// The bytes of the object.
        public let body: AWSHTTPBody
        /// An optional CacheControl header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP spec at https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9. Headers with a custom user-defined value are also accepted.
        public let cacheControl: String?
        /// The length of the object in bytes.
        public let contentLength: Int64?
        /// The range of bytes to retrieve.
        public let contentRange: String?
        /// The content type of the object.
        public let contentType: String?
        /// The ETag that represents a unique instance of the object.
        public let eTag: String?
        /// The date and time that the object was last modified.
        @OptionalCustomCoding<HTTPHeaderDateCoder>
        public var lastModified: Date?
        /// The HTML status code of the request. Status codes ranging from 200 to 299 indicate success. All other status codes indicate the type of error that occurred.
        public let statusCode: Int

        public init(body: AWSHTTPBody, cacheControl: String? = nil, contentLength: Int64? = nil, contentRange: String? = nil, contentType: String? = nil, eTag: String? = nil, lastModified: Date? = nil, statusCode: Int) {
            self.body = body
            self.cacheControl = cacheControl
            self.contentLength = contentLength
            self.contentRange = contentRange
            self.contentType = contentType
            self.eTag = eTag
            self.lastModified = lastModified
            self.statusCode = statusCode
        }

        public init(from decoder: Decoder) throws {
            let response = decoder.userInfo[.awsResponse]! as! ResponseDecodingContainer
            self.body = response.decodePayload()
            self.cacheControl = try response.decodeIfPresent(String.self, forHeader: "Cache-Control")
            self.contentLength = try response.decodeIfPresent(Int64.self, forHeader: "Content-Length")
            self.contentRange = try response.decodeIfPresent(String.self, forHeader: "Content-Range")
            self.contentType = try response.decodeIfPresent(String.self, forHeader: "Content-Type")
            self.eTag = try response.decodeIfPresent(String.self, forHeader: "ETag")
            self.lastModified = try response.decodeIfPresent(Date.self, forHeader: "Last-Modified")
            self.statusCode = response.decodeStatus()

        }

        private enum CodingKeys: CodingKey {}
    }

    public struct Item: AWSDecodableShape {
        /// The length of the item in bytes.
        public let contentLength: Int64?
        /// The content type of the item.
        public let contentType: String?
        /// The ETag that represents a unique instance of the item.
        public let eTag: String?
        /// The date and time that the item was last modified.
        public let lastModified: Date?
        /// The name of the item.
        public let name: String?
        /// The item type (folder or object).
        public let type: ItemType?

        public init(contentLength: Int64? = nil, contentType: String? = nil, eTag: String? = nil, lastModified: Date? = nil, name: String? = nil, type: ItemType? = nil) {
            self.contentLength = contentLength
            self.contentType = contentType
            self.eTag = eTag
            self.lastModified = lastModified
            self.name = name
            self.type = type
        }

        private enum CodingKeys: String, CodingKey {
            case contentLength = "ContentLength"
            case contentType = "ContentType"
            case eTag = "ETag"
            case lastModified = "LastModified"
            case name = "Name"
            case type = "Type"
        }
    }

    public struct ListItemsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring("MaxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("NextToken")),
            AWSMemberEncoding(label: "path", location: .querystring("Path"))
        ]

        /// The maximum number of results to return per API request. For example, you submit a ListItems request with MaxResults set at 500. Although 2,000 items match your request, the service returns no more than the first 500 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 1,000 results per page.
        public let maxResults: Int?
        /// The token that identifies which batch of results that you want to see. For example, you submit a ListItems request with MaxResults set at 500. The service returns the first batch of results (up to 500) and a NextToken value. To see the next batch of results, you can submit the ListItems request a second time and specify the NextToken value. Tokens expire after 15 minutes.
        public let nextToken: String?
        /// The path in the container from which to retrieve items. Format: //
        public let path: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil, path: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.path = path
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 1000)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.path, name: "path", parent: name, max: 900)
            try self.validate(self.path, name: "path", parent: name, pattern: "/?(?:[A-Za-z0-9_\\.\\-\\~]+/){0,10}(?:[A-Za-z0-9_\\.\\-\\~]+)?/?")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListItemsResponse: AWSDecodableShape {
        /// The metadata entries for the folders and objects at the requested path.
        public let items: [Item]?
        /// The token that can be used in a request to view the next set of results. For example, you submit a ListItems request that matches 2,000 items with MaxResults set at 500. The service returns the first batch of results (up to 500) and a NextToken value that can be used to fetch the next batch of results.
        public let nextToken: String?

        public init(items: [Item]? = nil, nextToken: String? = nil) {
            self.items = items
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case items = "Items"
            case nextToken = "NextToken"
        }
    }

    public struct PutObjectRequest: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "body"
        public static let _options: AWSShapeOptions = [.rawPayload, .allowStreaming, .allowChunkedStreaming]
        public static var _encoding = [
            AWSMemberEncoding(label: "cacheControl", location: .header("Cache-Control")),
            AWSMemberEncoding(label: "contentType", location: .header("Content-Type")),
            AWSMemberEncoding(label: "path", location: .uri("Path")),
            AWSMemberEncoding(label: "storageClass", location: .header("x-amz-storage-class")),
            AWSMemberEncoding(label: "uploadAvailability", location: .header("x-amz-upload-availability"))
        ]

        /// The bytes to be stored.
        public let body: AWSHTTPBody
        /// An optional CacheControl header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP at https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9. Headers with a custom user-defined value are also accepted.
        public let cacheControl: String?
        /// The content type of the object.
        public let contentType: String?
        /// The path (including the file name) where the object is stored in the container. Format: // For example, to upload the file mlaw.avi to the folder path premium\canada in the container movies, enter the path premium/canada/mlaw.avi. Do not include the container name in this path. If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing premium/usa subfolder. If you specify premium/canada, the service creates a canada subfolder in the premium folder. You then have two subfolders, usa and canada, in the premium folder.  There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore. For more information about folders and how they exist in a container, see the AWS Elemental MediaStore User Guide. The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension.
        public let path: String
        /// Indicates the storage class of a Put request. Defaults to high-performance temporal storage class, and objects are persisted into durable storage shortly after being received.
        public let storageClass: StorageClass?
        /// Indicates the availability of an object while it is still uploading. If the value is set to streaming, the object is available for downloading after some initial buffering but before the object is uploaded completely. If the value is set to standard, the object is available for downloading only when it is uploaded completely. The default value for this header is standard. To use this header, you must also set the HTTP Transfer-Encoding header to chunked.
        public let uploadAvailability: UploadAvailability?

        public init(body: AWSHTTPBody, cacheControl: String? = nil, contentType: String? = nil, path: String, storageClass: StorageClass? = nil, uploadAvailability: UploadAvailability? = nil) {
            self.body = body
            self.cacheControl = cacheControl
            self.contentType = contentType
            self.path = path
            self.storageClass = storageClass
            self.uploadAvailability = uploadAvailability
        }

        public func validate(name: String) throws {
            try self.validate(self.contentType, name: "contentType", parent: name, pattern: "^[\\w\\-\\/\\.\\+]{1,255}$")
            try self.validate(self.path, name: "path", parent: name, max: 900)
            try self.validate(self.path, name: "path", parent: name, min: 1)
            try self.validate(self.path, name: "path", parent: name, pattern: "(?:[A-Za-z0-9_\\.\\-\\~]+/){0,10}[A-Za-z0-9_\\.\\-\\~]+")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct PutObjectResponse: AWSDecodableShape {
        /// The SHA256 digest of the object that is persisted.
        public let contentSHA256: String?
        /// Unique identifier of the object in the container.
        public let eTag: String?
        /// The storage class where the object was persisted. The class should be “Temporal”.
        public let storageClass: StorageClass?

        public init(contentSHA256: String? = nil, eTag: String? = nil, storageClass: StorageClass? = nil) {
            self.contentSHA256 = contentSHA256
            self.eTag = eTag
            self.storageClass = storageClass
        }

        private enum CodingKeys: String, CodingKey {
            case contentSHA256 = "ContentSHA256"
            case eTag = "ETag"
            case storageClass = "StorageClass"
        }
    }
}

// MARK: - Errors

/// Error enum for MediaStoreData
public struct MediaStoreDataErrorType: AWSErrorType {
    enum Code: String {
        case containerNotFoundException = "ContainerNotFoundException"
        case internalServerError = "InternalServerError"
        case objectNotFoundException = "ObjectNotFoundException"
        case requestedRangeNotSatisfiableException = "RequestedRangeNotSatisfiableException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize MediaStoreData
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

    /// The specified container was not found for the specified account.
    public static var containerNotFoundException: Self { .init(.containerNotFoundException) }
    /// The service is temporarily unavailable.
    public static var internalServerError: Self { .init(.internalServerError) }
    /// Could not perform an operation on an object that does not exist.
    public static var objectNotFoundException: Self { .init(.objectNotFoundException) }
    /// The requested content range is not valid.
    public static var requestedRangeNotSatisfiableException: Self { .init(.requestedRangeNotSatisfiableException) }
}

extension MediaStoreDataErrorType: Equatable {
    public static func == (lhs: MediaStoreDataErrorType, rhs: MediaStoreDataErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MediaStoreDataErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
