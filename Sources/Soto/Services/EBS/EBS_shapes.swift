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

extension EBS {
    // MARK: Enums

    public enum ChecksumAggregationMethod: String, CustomStringConvertible, Codable, Sendable {
        case linear = "LINEAR"
        public var description: String { return self.rawValue }
    }

    public enum ChecksumAlgorithm: String, CustomStringConvertible, Codable, Sendable {
        case sha256 = "SHA256"
        public var description: String { return self.rawValue }
    }

    public enum Status: String, CustomStringConvertible, Codable, Sendable {
        case completed = "completed"
        case error = "error"
        case pending = "pending"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct Block: AWSDecodableShape {
        /// The block index.
        public let blockIndex: Int?
        /// The block token for the block index.
        public let blockToken: String?

        public init(blockIndex: Int? = nil, blockToken: String? = nil) {
            self.blockIndex = blockIndex
            self.blockToken = blockToken
        }

        private enum CodingKeys: String, CodingKey {
            case blockIndex = "BlockIndex"
            case blockToken = "BlockToken"
        }
    }

    public struct ChangedBlock: AWSDecodableShape {
        /// The block index.
        public let blockIndex: Int?
        /// The block token for the block index of the FirstSnapshotId specified in the ListChangedBlocks operation. This value is absent if the first snapshot does not have the changed block that is on the second snapshot.
        public let firstBlockToken: String?
        /// The block token for the block index of the SecondSnapshotId specified in the ListChangedBlocks operation.
        public let secondBlockToken: String?

        public init(blockIndex: Int? = nil, firstBlockToken: String? = nil, secondBlockToken: String? = nil) {
            self.blockIndex = blockIndex
            self.firstBlockToken = firstBlockToken
            self.secondBlockToken = secondBlockToken
        }

        private enum CodingKeys: String, CodingKey {
            case blockIndex = "BlockIndex"
            case firstBlockToken = "FirstBlockToken"
            case secondBlockToken = "SecondBlockToken"
        }
    }

    public struct CompleteSnapshotRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "changedBlocksCount", location: .header("x-amz-ChangedBlocksCount")),
            AWSMemberEncoding(label: "checksum", location: .header("x-amz-Checksum")),
            AWSMemberEncoding(label: "checksumAggregationMethod", location: .header("x-amz-Checksum-Aggregation-Method")),
            AWSMemberEncoding(label: "checksumAlgorithm", location: .header("x-amz-Checksum-Algorithm")),
            AWSMemberEncoding(label: "snapshotId", location: .uri("SnapshotId"))
        ]

        /// The number of blocks that were written to the snapshot.
        public let changedBlocksCount: Int
        /// An aggregated Base-64 SHA256 checksum based on the checksums of each written block. To generate the aggregated checksum using the linear aggregation method, arrange the checksums for each written block in ascending order of their block index, concatenate them to form a single string, and then generate the checksum on the entire string using the SHA256 algorithm.
        public let checksum: String?
        /// The aggregation method used to generate the checksum. Currently, the only supported aggregation method is LINEAR.
        public let checksumAggregationMethod: ChecksumAggregationMethod?
        /// The algorithm used to generate the checksum. Currently, the only supported algorithm is SHA256.
        public let checksumAlgorithm: ChecksumAlgorithm?
        /// The ID of the snapshot.
        public let snapshotId: String

        public init(changedBlocksCount: Int, checksum: String? = nil, checksumAggregationMethod: ChecksumAggregationMethod? = nil, checksumAlgorithm: ChecksumAlgorithm? = nil, snapshotId: String) {
            self.changedBlocksCount = changedBlocksCount
            self.checksum = checksum
            self.checksumAggregationMethod = checksumAggregationMethod
            self.checksumAlgorithm = checksumAlgorithm
            self.snapshotId = snapshotId
        }

        public func validate(name: String) throws {
            try self.validate(self.changedBlocksCount, name: "changedBlocksCount", parent: name, min: 0)
            try self.validate(self.checksum, name: "checksum", parent: name, max: 64)
            try self.validate(self.checksum, name: "checksum", parent: name, pattern: "^[A-Za-z0-9+/=]+$")
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, max: 64)
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, min: 1)
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct CompleteSnapshotResponse: AWSDecodableShape {
        /// The status of the snapshot.
        public let status: Status?

        public init(status: Status? = nil) {
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case status = "Status"
        }
    }

    public struct GetSnapshotBlockRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "blockIndex", location: .uri("BlockIndex")),
            AWSMemberEncoding(label: "blockToken", location: .querystring("blockToken")),
            AWSMemberEncoding(label: "snapshotId", location: .uri("SnapshotId"))
        ]

        /// The block index of the block in which to read the data. A block index is a logical  index in units of 512 KiB blocks. To identify the block index, divide  the logical offset of the data in the logical volume by the block size (logical offset  of data/524288). The logical offset of the data must be 512  KiB aligned.
        public let blockIndex: Int
        /// The block token of the block from which to get data. You can obtain the BlockToken  by running the ListChangedBlocks or ListSnapshotBlocks operations.
        public let blockToken: String
        /// The ID of the snapshot containing the block from which to get data.  If the specified snapshot is encrypted, you must have permission to use the  KMS key that was used to encrypt the snapshot. For more information, see   Using encryption in the Amazon Elastic Compute Cloud User  Guide.
        public let snapshotId: String

        public init(blockIndex: Int, blockToken: String, snapshotId: String) {
            self.blockIndex = blockIndex
            self.blockToken = blockToken
            self.snapshotId = snapshotId
        }

        public func validate(name: String) throws {
            try self.validate(self.blockIndex, name: "blockIndex", parent: name, min: 0)
            try self.validate(self.blockToken, name: "blockToken", parent: name, max: 256)
            try self.validate(self.blockToken, name: "blockToken", parent: name, pattern: "^[A-Za-z0-9+/=]+$")
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, max: 64)
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, min: 1)
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetSnapshotBlockResponse: AWSDecodableShape {
        public static let _options: AWSShapeOptions = [.rawPayload, .allowStreaming]
        /// The data content of the block.
        public let blockData: AWSHTTPBody
        /// The checksum generated for the block, which is Base64 encoded.
        public let checksum: String?
        /// The algorithm used to generate the checksum for the block, such as SHA256.
        public let checksumAlgorithm: ChecksumAlgorithm?
        /// The size of the data in the block.
        public let dataLength: Int?

        public init(blockData: AWSHTTPBody, checksum: String? = nil, checksumAlgorithm: ChecksumAlgorithm? = nil, dataLength: Int? = nil) {
            self.blockData = blockData
            self.checksum = checksum
            self.checksumAlgorithm = checksumAlgorithm
            self.dataLength = dataLength
        }

        public init(from decoder: Decoder) throws {
            let response = decoder.userInfo[.awsResponse]! as! ResponseDecodingContainer
            self.blockData = response.decodePayload()
            self.checksum = try response.decodeIfPresent(String.self, forHeader: "x-amz-Checksum")
            self.checksumAlgorithm = try response.decodeIfPresent(ChecksumAlgorithm.self, forHeader: "x-amz-Checksum-Algorithm")
            self.dataLength = try response.decodeIfPresent(Int.self, forHeader: "x-amz-Data-Length")

        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListChangedBlocksRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "firstSnapshotId", location: .querystring("firstSnapshotId")),
            AWSMemberEncoding(label: "maxResults", location: .querystring("maxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("pageToken")),
            AWSMemberEncoding(label: "secondSnapshotId", location: .uri("SecondSnapshotId")),
            AWSMemberEncoding(label: "startingBlockIndex", location: .querystring("startingBlockIndex"))
        ]

        /// The ID of the first snapshot to use for the comparison.  The FirstSnapshotID parameter must be specified with a SecondSnapshotId parameter; otherwise, an error occurs.
        public let firstSnapshotId: String?
        /// The maximum number of blocks to be returned by the request. Even if additional blocks can be retrieved from the snapshot, the request can  return less blocks than MaxResults or an empty  array of blocks. To retrieve the next set of blocks from the snapshot, make another request with  the returned NextToken value. The value of  NextToken is null when there are no  more blocks to return.
        public let maxResults: Int?
        /// The token to request the next page of results. If you specify NextToken, then  StartingBlockIndex is ignored.
        public let nextToken: String?
        /// The ID of the second snapshot to use for the comparison.  The SecondSnapshotId parameter must be specified with a FirstSnapshotID parameter; otherwise, an error occurs.
        public let secondSnapshotId: String
        /// The block index from which the comparison should start. The list in the response will start from this block index or the next valid block index in the snapshots. If you specify NextToken, then  StartingBlockIndex is ignored.
        public let startingBlockIndex: Int?

        public init(firstSnapshotId: String? = nil, maxResults: Int? = nil, nextToken: String? = nil, secondSnapshotId: String, startingBlockIndex: Int? = nil) {
            self.firstSnapshotId = firstSnapshotId
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.secondSnapshotId = secondSnapshotId
            self.startingBlockIndex = startingBlockIndex
        }

        public func validate(name: String) throws {
            try self.validate(self.firstSnapshotId, name: "firstSnapshotId", parent: name, max: 64)
            try self.validate(self.firstSnapshotId, name: "firstSnapshotId", parent: name, min: 1)
            try self.validate(self.firstSnapshotId, name: "firstSnapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 10000)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 100)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 256)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[A-Za-z0-9+/=]+$")
            try self.validate(self.secondSnapshotId, name: "secondSnapshotId", parent: name, max: 64)
            try self.validate(self.secondSnapshotId, name: "secondSnapshotId", parent: name, min: 1)
            try self.validate(self.secondSnapshotId, name: "secondSnapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
            try self.validate(self.startingBlockIndex, name: "startingBlockIndex", parent: name, min: 0)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListChangedBlocksResponse: AWSDecodableShape {
        /// The size of the blocks in the snapshot, in bytes.
        public let blockSize: Int?
        /// An array of objects containing information about the changed blocks.
        public let changedBlocks: [ChangedBlock]?
        /// The time when the BlockToken expires.
        public let expiryTime: Date?
        /// The token to use to retrieve the next page of results. This value is null when there are no more results to return.
        public let nextToken: String?
        /// The size of the volume in GB.
        public let volumeSize: Int64?

        public init(blockSize: Int? = nil, changedBlocks: [ChangedBlock]? = nil, expiryTime: Date? = nil, nextToken: String? = nil, volumeSize: Int64? = nil) {
            self.blockSize = blockSize
            self.changedBlocks = changedBlocks
            self.expiryTime = expiryTime
            self.nextToken = nextToken
            self.volumeSize = volumeSize
        }

        private enum CodingKeys: String, CodingKey {
            case blockSize = "BlockSize"
            case changedBlocks = "ChangedBlocks"
            case expiryTime = "ExpiryTime"
            case nextToken = "NextToken"
            case volumeSize = "VolumeSize"
        }
    }

    public struct ListSnapshotBlocksRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring("maxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("pageToken")),
            AWSMemberEncoding(label: "snapshotId", location: .uri("SnapshotId")),
            AWSMemberEncoding(label: "startingBlockIndex", location: .querystring("startingBlockIndex"))
        ]

        /// The maximum number of blocks to be returned by the request. Even if additional blocks can be retrieved from the snapshot, the request can  return less blocks than MaxResults or an empty  array of blocks. To retrieve the next set of blocks from the snapshot, make another request with  the returned NextToken value. The value of  NextToken is null when there are no  more blocks to return.
        public let maxResults: Int?
        /// The token to request the next page of results. If you specify NextToken, then  StartingBlockIndex is ignored.
        public let nextToken: String?
        /// The ID of the snapshot from which to get block indexes and block tokens.
        public let snapshotId: String
        /// The block index from which the list should start. The list in the response will start from this block index or the next valid block index in the snapshot. If you specify NextToken, then  StartingBlockIndex is ignored.
        public let startingBlockIndex: Int?

        public init(maxResults: Int? = nil, nextToken: String? = nil, snapshotId: String, startingBlockIndex: Int? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.snapshotId = snapshotId
            self.startingBlockIndex = startingBlockIndex
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 10000)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 100)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 256)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[A-Za-z0-9+/=]+$")
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, max: 64)
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, min: 1)
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
            try self.validate(self.startingBlockIndex, name: "startingBlockIndex", parent: name, min: 0)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListSnapshotBlocksResponse: AWSDecodableShape {
        /// An array of objects containing information about the blocks.
        public let blocks: [Block]?
        /// The size of the blocks in the snapshot, in bytes.
        public let blockSize: Int?
        /// The time when the BlockToken expires.
        public let expiryTime: Date?
        /// The token to use to retrieve the next page of results. This value is null when there are no more results to return.
        public let nextToken: String?
        /// The size of the volume in GB.
        public let volumeSize: Int64?

        public init(blocks: [Block]? = nil, blockSize: Int? = nil, expiryTime: Date? = nil, nextToken: String? = nil, volumeSize: Int64? = nil) {
            self.blocks = blocks
            self.blockSize = blockSize
            self.expiryTime = expiryTime
            self.nextToken = nextToken
            self.volumeSize = volumeSize
        }

        private enum CodingKeys: String, CodingKey {
            case blocks = "Blocks"
            case blockSize = "BlockSize"
            case expiryTime = "ExpiryTime"
            case nextToken = "NextToken"
            case volumeSize = "VolumeSize"
        }
    }

    public struct PutSnapshotBlockRequest: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "blockData"
        public static let _options: AWSShapeOptions = [.rawPayload, .allowStreaming, .allowChunkedStreaming]
        public static var _encoding = [
            AWSMemberEncoding(label: "blockIndex", location: .uri("BlockIndex")),
            AWSMemberEncoding(label: "checksum", location: .header("x-amz-Checksum")),
            AWSMemberEncoding(label: "checksumAlgorithm", location: .header("x-amz-Checksum-Algorithm")),
            AWSMemberEncoding(label: "dataLength", location: .header("x-amz-Data-Length")),
            AWSMemberEncoding(label: "progress", location: .header("x-amz-Progress")),
            AWSMemberEncoding(label: "snapshotId", location: .uri("SnapshotId"))
        ]

        /// The data to write to the block. The block data is not signed as part of the Signature Version 4 signing process. As a result, you must generate and provide a Base64-encoded SHA256 checksum for the block data using the x-amz-Checksum header. Also, you  	must specify the checksum algorithm using the x-amz-Checksum-Algorithm  	header. The checksum that you provide is part of the Signature Version 4 signing process.  	It is validated against a checksum generated by Amazon EBS to ensure the validity and authenticity  	of the data. If the checksums do not correspond, the request fails. For more information,  	see  Using checksums with the EBS direct APIs in the Amazon Elastic Compute Cloud User Guide.
        public let blockData: AWSHTTPBody
        /// The block index of the block in which to write the data. A block index is a logical  	index in units of 512 KiB blocks. To identify the block index, divide  	the logical offset of the data in the logical volume by the block size (logical offset of  	data/524288). The logical offset of the data must be 512  	KiB aligned.
        public let blockIndex: Int
        /// A Base64-encoded SHA256 checksum of the data. Only SHA256 checksums are supported.
        public let checksum: String
        /// The algorithm used to generate the checksum. Currently, the only supported algorithm is SHA256.
        public let checksumAlgorithm: ChecksumAlgorithm
        /// The size of the data to write to the block, in bytes. Currently, the only supported size is 524288 bytes. Valid values: 524288
        public let dataLength: Int
        /// The progress of the write process, as a percentage.
        public let progress: Int?
        /// The ID of the snapshot.  If the specified snapshot is encrypted, you must have permission to use  the KMS key that was used to encrypt the snapshot. For more information,  see  Using encryption in the Amazon Elastic Compute Cloud User  Guide..
        public let snapshotId: String

        public init(blockData: AWSHTTPBody, blockIndex: Int, checksum: String, checksumAlgorithm: ChecksumAlgorithm, dataLength: Int, progress: Int? = nil, snapshotId: String) {
            self.blockData = blockData
            self.blockIndex = blockIndex
            self.checksum = checksum
            self.checksumAlgorithm = checksumAlgorithm
            self.dataLength = dataLength
            self.progress = progress
            self.snapshotId = snapshotId
        }

        public func validate(name: String) throws {
            try self.validate(self.blockIndex, name: "blockIndex", parent: name, min: 0)
            try self.validate(self.checksum, name: "checksum", parent: name, max: 64)
            try self.validate(self.checksum, name: "checksum", parent: name, pattern: "^[A-Za-z0-9+/=]+$")
            try self.validate(self.progress, name: "progress", parent: name, max: 100)
            try self.validate(self.progress, name: "progress", parent: name, min: 0)
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, max: 64)
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, min: 1)
            try self.validate(self.snapshotId, name: "snapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct PutSnapshotBlockResponse: AWSDecodableShape {
        /// The SHA256 checksum generated for the block data by Amazon EBS.
        public let checksum: String?
        /// The algorithm used by Amazon EBS to generate the checksum.
        public let checksumAlgorithm: ChecksumAlgorithm?

        public init(checksum: String? = nil, checksumAlgorithm: ChecksumAlgorithm? = nil) {
            self.checksum = checksum
            self.checksumAlgorithm = checksumAlgorithm
        }

        public init(from decoder: Decoder) throws {
            let response = decoder.userInfo[.awsResponse]! as! ResponseDecodingContainer
            self.checksum = try response.decodeIfPresent(String.self, forHeader: "x-amz-Checksum")
            self.checksumAlgorithm = try response.decodeIfPresent(ChecksumAlgorithm.self, forHeader: "x-amz-Checksum-Algorithm")

        }

        private enum CodingKeys: CodingKey {}
    }

    public struct StartSnapshotRequest: AWSEncodableShape {
        /// A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent  request, if the original request completes successfully. The subsequent retries with the same  client token return the result from the original successful request and they have no additional  effect. If you do not specify a client token, one is automatically generated by the Amazon Web Services SDK. For more information, see  		Idempotency for StartSnapshot API in the Amazon Elastic Compute Cloud User Guide.
        public let clientToken: String?
        /// A description for the snapshot.
        public let description: String?
        /// Indicates whether to encrypt the snapshot.   You can't specify Encrypted and  ParentSnapshotId in the same request. If you specify both parameters, the  request fails with ValidationException.  The encryption status of the snapshot depends on the values that you specify for  Encrypted, KmsKeyArn,  and ParentSnapshotId, and whether your Amazon Web Services account  is enabled for  encryption by default. For more information, see  Using encryption in the Amazon Elastic Compute Cloud User Guide.     To create an encrypted snapshot, you must have permission to use the KMS key. For  more information, see  Permissions to use Key Management Service keys in the Amazon Elastic Compute Cloud User  Guide.
        public let encrypted: Bool?
        /// The Amazon Resource Name (ARN) of the Key Management Service (KMS) key to be used to encrypt the snapshot.   The encryption status of the snapshot depends on the values that you specify for  Encrypted, KmsKeyArn,  and ParentSnapshotId, and whether your Amazon Web Services account  is enabled for  encryption by default. For more information, see  Using encryption in the Amazon Elastic Compute Cloud User Guide.    To create an encrypted snapshot, you must have permission to use the KMS key. For  more information, see  Permissions to use Key Management Service keys in the Amazon Elastic Compute Cloud User  Guide.
        public let kmsKeyArn: String?
        /// The ID of the parent snapshot. If there is no parent snapshot, or if you are creating the first snapshot for an on-premises volume, omit this parameter. You can't specify ParentSnapshotId and  Encrypted in the same request. If you specify both  parameters, the request fails with ValidationException.    The encryption status of the snapshot depends on the values that you specify for  Encrypted, KmsKeyArn,  and ParentSnapshotId, and whether your Amazon Web Services account  is enabled for  encryption by default. For more information, see  Using encryption in the Amazon Elastic Compute Cloud User Guide.   If you specify an encrypted parent snapshot, you must have permission to use the  KMS key that was used to encrypt the parent snapshot. For more information, see   Permissions to use Key Management Service keys in the Amazon Elastic Compute Cloud User  Guide.
        public let parentSnapshotId: String?
        /// The tags to apply to the snapshot.
        public let tags: [Tag]?
        /// The amount of time (in minutes) after which the snapshot is automatically cancelled if:   No blocks are written to the snapshot.   The snapshot is not completed after writing the last block of data.   If no value is specified, the timeout defaults to 60 minutes.
        public let timeout: Int?
        /// The size of the volume, in GiB. The maximum size is 65536 GiB (64 TiB).
        public let volumeSize: Int64

        public init(clientToken: String? = StartSnapshotRequest.idempotencyToken(), description: String? = nil, encrypted: Bool? = nil, kmsKeyArn: String? = nil, parentSnapshotId: String? = nil, tags: [Tag]? = nil, timeout: Int? = nil, volumeSize: Int64) {
            self.clientToken = clientToken
            self.description = description
            self.encrypted = encrypted
            self.kmsKeyArn = kmsKeyArn
            self.parentSnapshotId = parentSnapshotId
            self.tags = tags
            self.timeout = timeout
            self.volumeSize = volumeSize
        }

        public func validate(name: String) throws {
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 255)
            try self.validate(self.clientToken, name: "clientToken", parent: name, pattern: "^[\\S]+$")
            try self.validate(self.description, name: "description", parent: name, max: 255)
            try self.validate(self.description, name: "description", parent: name, pattern: "^[\\S\\s]+$")
            try self.validate(self.kmsKeyArn, name: "kmsKeyArn", parent: name, max: 2048)
            try self.validate(self.kmsKeyArn, name: "kmsKeyArn", parent: name, min: 1)
            try self.validate(self.kmsKeyArn, name: "kmsKeyArn", parent: name, pattern: "^arn:aws[a-z\\-]*:kms:.*:[0-9]{12}:key/")
            try self.validate(self.parentSnapshotId, name: "parentSnapshotId", parent: name, max: 64)
            try self.validate(self.parentSnapshotId, name: "parentSnapshotId", parent: name, min: 1)
            try self.validate(self.parentSnapshotId, name: "parentSnapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
            try self.tags?.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try self.validate(self.timeout, name: "timeout", parent: name, max: 4320)
            try self.validate(self.timeout, name: "timeout", parent: name, min: 10)
            try self.validate(self.volumeSize, name: "volumeSize", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken = "ClientToken"
            case description = "Description"
            case encrypted = "Encrypted"
            case kmsKeyArn = "KmsKeyArn"
            case parentSnapshotId = "ParentSnapshotId"
            case tags = "Tags"
            case timeout = "Timeout"
            case volumeSize = "VolumeSize"
        }
    }

    public struct StartSnapshotResponse: AWSDecodableShape {
        /// The size of the blocks in the snapshot, in bytes.
        public let blockSize: Int?
        /// The description of the snapshot.
        public let description: String?
        /// The Amazon Resource Name (ARN) of the Key Management Service (KMS) key used to encrypt the snapshot.
        public let kmsKeyArn: String?
        /// The Amazon Web Services account ID of the snapshot owner.
        public let ownerId: String?
        /// The ID of the parent snapshot.
        public let parentSnapshotId: String?
        /// The ID of the snapshot.
        public let snapshotId: String?
        /// The timestamp when the snapshot was created.
        public let startTime: Date?
        /// The status of the snapshot.
        public let status: Status?
        /// The tags applied to the snapshot. You can specify up to 50 tags per snapshot. For more information, see  Tagging your Amazon EC2 resources in the Amazon Elastic Compute Cloud User Guide.
        public let tags: [Tag]?
        /// The size of the volume, in GiB.
        public let volumeSize: Int64?

        public init(blockSize: Int? = nil, description: String? = nil, kmsKeyArn: String? = nil, ownerId: String? = nil, parentSnapshotId: String? = nil, snapshotId: String? = nil, startTime: Date? = nil, status: Status? = nil, tags: [Tag]? = nil, volumeSize: Int64? = nil) {
            self.blockSize = blockSize
            self.description = description
            self.kmsKeyArn = kmsKeyArn
            self.ownerId = ownerId
            self.parentSnapshotId = parentSnapshotId
            self.snapshotId = snapshotId
            self.startTime = startTime
            self.status = status
            self.tags = tags
            self.volumeSize = volumeSize
        }

        private enum CodingKeys: String, CodingKey {
            case blockSize = "BlockSize"
            case description = "Description"
            case kmsKeyArn = "KmsKeyArn"
            case ownerId = "OwnerId"
            case parentSnapshotId = "ParentSnapshotId"
            case snapshotId = "SnapshotId"
            case startTime = "StartTime"
            case status = "Status"
            case tags = "Tags"
            case volumeSize = "VolumeSize"
        }
    }

    public struct Tag: AWSEncodableShape & AWSDecodableShape {
        /// The key of the tag.
        public let key: String?
        /// The value of the tag.
        public let value: String?

        public init(key: String? = nil, value: String? = nil) {
            self.key = key
            self.value = value
        }

        public func validate(name: String) throws {
            try self.validate(self.key, name: "key", parent: name, max: 127)
            try self.validate(self.key, name: "key", parent: name, pattern: "^[\\S\\s]+$")
            try self.validate(self.value, name: "value", parent: name, max: 255)
            try self.validate(self.value, name: "value", parent: name, pattern: "^[\\S\\s]*$")
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }
}

// MARK: - Errors

/// Error enum for EBS
public struct EBSErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case concurrentLimitExceededException = "ConcurrentLimitExceededException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case requestThrottledException = "RequestThrottledException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize EBS
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

    /// You do not have sufficient access to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// You have reached the limit for concurrent API requests. For more information, see Optimizing performance of the EBS direct APIs in the Amazon Elastic Compute Cloud User Guide.
    public static var concurrentLimitExceededException: Self { .init(.concurrentLimitExceededException) }
    /// The request uses the same client token as a previous, but non-identical request.
    public static var conflictException: Self { .init(.conflictException) }
    /// An internal error has occurred.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The number of API requests has exceed the maximum allowed API request throttling limit.
    public static var requestThrottledException: Self { .init(.requestThrottledException) }
    /// The specified resource does not exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Your current service quotas do not allow you to perform this action.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// The input fails to satisfy the constraints of the EBS direct APIs.
    public static var validationException: Self { .init(.validationException) }
}

extension EBSErrorType: Equatable {
    public static func == (lhs: EBSErrorType, rhs: EBSErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension EBSErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
