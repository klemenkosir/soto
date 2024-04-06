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

extension SageMakerA2IRuntime {
    // MARK: Enums

    public enum ContentClassifier: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case freeOfAdultContent = "FreeOfAdultContent"
        case freeOfPersonallyIdentifiableInformation = "FreeOfPersonallyIdentifiableInformation"
        public var description: String { return self.rawValue }
    }

    public enum HumanLoopStatus: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case completed = "Completed"
        case failed = "Failed"
        case inProgress = "InProgress"
        case stopped = "Stopped"
        case stopping = "Stopping"
        public var description: String { return self.rawValue }
    }

    public enum SortOrder: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case ascending = "Ascending"
        case descending = "Descending"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct DeleteHumanLoopRequest: AWSEncodableShape {
        /// The name of the human loop that you want to delete.
        public let humanLoopName: String

        public init(humanLoopName: String) {
            self.humanLoopName = humanLoopName
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.humanLoopName, key: "HumanLoopName")
        }

        public func validate(name: String) throws {
            try self.validate(self.humanLoopName, name: "humanLoopName", parent: name, max: 63)
            try self.validate(self.humanLoopName, name: "humanLoopName", parent: name, min: 1)
            try self.validate(self.humanLoopName, name: "humanLoopName", parent: name, pattern: "^[a-z0-9](-*[a-z0-9])*$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteHumanLoopResponse: AWSDecodableShape {
        public init() {}
    }

    public struct DescribeHumanLoopRequest: AWSEncodableShape {
        /// The name of the human loop that you want information about.
        public let humanLoopName: String

        public init(humanLoopName: String) {
            self.humanLoopName = humanLoopName
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodePath(self.humanLoopName, key: "HumanLoopName")
        }

        public func validate(name: String) throws {
            try self.validate(self.humanLoopName, name: "humanLoopName", parent: name, max: 63)
            try self.validate(self.humanLoopName, name: "humanLoopName", parent: name, min: 1)
            try self.validate(self.humanLoopName, name: "humanLoopName", parent: name, pattern: "^[a-z0-9](-*[a-z0-9])*$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DescribeHumanLoopResponse: AWSDecodableShape {
        /// The creation time when Amazon Augmented AI created the human loop.
        @OptionalCustomCoding<ISO8601DateCoder>
        public var creationTime: Date?
        /// A failure code that identifies the type of failure. Possible values: ValidationError, Expired, InternalError
        public let failureCode: String?
        /// The reason why a human loop failed. The failure reason is returned when the status of the human loop is Failed.
        public let failureReason: String?
        /// The Amazon Resource Name (ARN) of the flow definition.
        public let flowDefinitionArn: String?
        /// The Amazon Resource Name (ARN) of the human loop.
        public let humanLoopArn: String?
        /// The name of the human loop. The name must be lowercase, unique within the Region in your account, and can have up to 63 characters. Valid characters: a-z, 0-9, and - (hyphen).
        public let humanLoopName: String?
        /// An object that contains information about the output of the human loop.
        public let humanLoopOutput: HumanLoopOutput?
        /// The status of the human loop.
        public let humanLoopStatus: HumanLoopStatus?

        public init(creationTime: Date? = nil, failureCode: String? = nil, failureReason: String? = nil, flowDefinitionArn: String? = nil, humanLoopArn: String? = nil, humanLoopName: String? = nil, humanLoopOutput: HumanLoopOutput? = nil, humanLoopStatus: HumanLoopStatus? = nil) {
            self.creationTime = creationTime
            self.failureCode = failureCode
            self.failureReason = failureReason
            self.flowDefinitionArn = flowDefinitionArn
            self.humanLoopArn = humanLoopArn
            self.humanLoopName = humanLoopName
            self.humanLoopOutput = humanLoopOutput
            self.humanLoopStatus = humanLoopStatus
        }

        private enum CodingKeys: String, CodingKey {
            case creationTime = "CreationTime"
            case failureCode = "FailureCode"
            case failureReason = "FailureReason"
            case flowDefinitionArn = "FlowDefinitionArn"
            case humanLoopArn = "HumanLoopArn"
            case humanLoopName = "HumanLoopName"
            case humanLoopOutput = "HumanLoopOutput"
            case humanLoopStatus = "HumanLoopStatus"
        }
    }

    public struct HumanLoopDataAttributes: AWSEncodableShape {
        /// Declares that your content is free of personally identifiable information or adult content. Amazon SageMaker can restrict the Amazon Mechanical Turk workers who can view your task based on this information.
        public let contentClassifiers: [ContentClassifier]?

        public init(contentClassifiers: [ContentClassifier]? = nil) {
            self.contentClassifiers = contentClassifiers
        }

        public func validate(name: String) throws {
            try self.validate(self.contentClassifiers, name: "contentClassifiers", parent: name, max: 256)
        }

        private enum CodingKeys: String, CodingKey {
            case contentClassifiers = "ContentClassifiers"
        }
    }

    public struct HumanLoopInput: AWSEncodableShape {
        /// Serialized input from the human loop. The input must be a string representation of a file in JSON format.
        public let inputContent: String?

        public init(inputContent: String? = nil) {
            self.inputContent = inputContent
        }

        public func validate(name: String) throws {
            try self.validate(self.inputContent, name: "inputContent", parent: name, max: 3145728)
        }

        private enum CodingKeys: String, CodingKey {
            case inputContent = "InputContent"
        }
    }

    public struct HumanLoopOutput: AWSDecodableShape {
        /// The location of the Amazon S3 object where Amazon Augmented AI stores your human loop output.
        public let outputS3Uri: String?

        public init(outputS3Uri: String? = nil) {
            self.outputS3Uri = outputS3Uri
        }

        private enum CodingKeys: String, CodingKey {
            case outputS3Uri = "OutputS3Uri"
        }
    }

    public struct HumanLoopSummary: AWSDecodableShape {
        /// When Amazon Augmented AI created the human loop.
        @OptionalCustomCoding<ISO8601DateCoder>
        public var creationTime: Date?
        /// The reason why the human loop failed. A failure reason is returned when the status of the human loop is Failed.
        public let failureReason: String?
        /// The Amazon Resource Name (ARN) of the flow definition used to configure the human loop.
        public let flowDefinitionArn: String?
        /// The name of the human loop.
        public let humanLoopName: String?
        /// The status of the human loop.
        public let humanLoopStatus: HumanLoopStatus?

        public init(creationTime: Date? = nil, failureReason: String? = nil, flowDefinitionArn: String? = nil, humanLoopName: String? = nil, humanLoopStatus: HumanLoopStatus? = nil) {
            self.creationTime = creationTime
            self.failureReason = failureReason
            self.flowDefinitionArn = flowDefinitionArn
            self.humanLoopName = humanLoopName
            self.humanLoopStatus = humanLoopStatus
        }

        private enum CodingKeys: String, CodingKey {
            case creationTime = "CreationTime"
            case failureReason = "FailureReason"
            case flowDefinitionArn = "FlowDefinitionArn"
            case humanLoopName = "HumanLoopName"
            case humanLoopStatus = "HumanLoopStatus"
        }
    }

    public struct ListHumanLoopsRequest: AWSEncodableShape {
        /// (Optional) The timestamp of the date when you want the human loops to begin in ISO 8601 format. For example, 2020-02-24.
        @OptionalCustomCoding<ISO8601DateCoder>
        public var creationTimeAfter: Date?
        /// (Optional) The timestamp of the date before which you want the human loops to begin in ISO 8601 format. For example, 2020-02-24.
        @OptionalCustomCoding<ISO8601DateCoder>
        public var creationTimeBefore: Date?
        /// The Amazon Resource Name (ARN) of a flow definition.
        public let flowDefinitionArn: String?
        /// The total number of items to return. If the total number of available items is more than the value specified in MaxResults, then a NextToken is returned in the output. You can use this token to display the next page of results.
        public let maxResults: Int?
        /// A token to display the next page of results.
        public let nextToken: String?
        /// Optional. The order for displaying results. Valid values: Ascending and Descending.
        public let sortOrder: SortOrder?

        public init(creationTimeAfter: Date? = nil, creationTimeBefore: Date? = nil, flowDefinitionArn: String? = nil, maxResults: Int? = nil, nextToken: String? = nil, sortOrder: SortOrder? = nil) {
            self.creationTimeAfter = creationTimeAfter
            self.creationTimeBefore = creationTimeBefore
            self.flowDefinitionArn = flowDefinitionArn
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.sortOrder = sortOrder
        }

        public func encode(to encoder: Encoder) throws {
            let request = encoder.userInfo[.awsRequest]! as! RequestEncodingContainer
            _ = encoder.container(keyedBy: CodingKeys.self)
            request.encodeQuery(self._creationTimeAfter, key: "CreationTimeAfter")
            request.encodeQuery(self._creationTimeBefore, key: "CreationTimeBefore")
            request.encodeQuery(self.flowDefinitionArn, key: "FlowDefinitionArn")
            request.encodeQuery(self.maxResults, key: "MaxResults")
            request.encodeQuery(self.nextToken, key: "NextToken")
            request.encodeQuery(self.sortOrder, key: "SortOrder")
        }

        public func validate(name: String) throws {
            try self.validate(self.flowDefinitionArn, name: "flowDefinitionArn", parent: name, max: 1024)
            try self.validate(self.flowDefinitionArn, name: "flowDefinitionArn", parent: name, pattern: "^arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:flow-definition/")
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 8192)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: ".*")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListHumanLoopsResponse: AWSDecodableShape {
        /// An array of objects that contain information about the human loops.
        public let humanLoopSummaries: [HumanLoopSummary]?
        /// A token to display the next page of results.
        public let nextToken: String?

        public init(humanLoopSummaries: [HumanLoopSummary]? = nil, nextToken: String? = nil) {
            self.humanLoopSummaries = humanLoopSummaries
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case humanLoopSummaries = "HumanLoopSummaries"
            case nextToken = "NextToken"
        }
    }

    public struct StartHumanLoopRequest: AWSEncodableShape {
        /// Attributes of the specified data. Use DataAttributes to specify if your data is free of personally identifiable information and/or free of adult content.
        public let dataAttributes: HumanLoopDataAttributes?
        /// The Amazon Resource Name (ARN) of the flow definition associated with this human loop.
        public let flowDefinitionArn: String?
        /// An object that contains information about the human loop.
        public let humanLoopInput: HumanLoopInput?
        /// The name of the human loop.
        public let humanLoopName: String?

        public init(dataAttributes: HumanLoopDataAttributes? = nil, flowDefinitionArn: String? = nil, humanLoopInput: HumanLoopInput? = nil, humanLoopName: String? = nil) {
            self.dataAttributes = dataAttributes
            self.flowDefinitionArn = flowDefinitionArn
            self.humanLoopInput = humanLoopInput
            self.humanLoopName = humanLoopName
        }

        public func validate(name: String) throws {
            try self.dataAttributes?.validate(name: "\(name).dataAttributes")
            try self.validate(self.flowDefinitionArn, name: "flowDefinitionArn", parent: name, max: 1024)
            try self.validate(self.flowDefinitionArn, name: "flowDefinitionArn", parent: name, pattern: "^arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:flow-definition/")
            try self.humanLoopInput?.validate(name: "\(name).humanLoopInput")
            try self.validate(self.humanLoopName, name: "humanLoopName", parent: name, max: 63)
            try self.validate(self.humanLoopName, name: "humanLoopName", parent: name, min: 1)
            try self.validate(self.humanLoopName, name: "humanLoopName", parent: name, pattern: "^[a-z0-9](-*[a-z0-9])*$")
        }

        private enum CodingKeys: String, CodingKey {
            case dataAttributes = "DataAttributes"
            case flowDefinitionArn = "FlowDefinitionArn"
            case humanLoopInput = "HumanLoopInput"
            case humanLoopName = "HumanLoopName"
        }
    }

    public struct StartHumanLoopResponse: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the human loop.
        public let humanLoopArn: String?

        public init(humanLoopArn: String? = nil) {
            self.humanLoopArn = humanLoopArn
        }

        private enum CodingKeys: String, CodingKey {
            case humanLoopArn = "HumanLoopArn"
        }
    }

    public struct StopHumanLoopRequest: AWSEncodableShape {
        /// The name of the human loop that you want to stop.
        public let humanLoopName: String?

        public init(humanLoopName: String? = nil) {
            self.humanLoopName = humanLoopName
        }

        public func validate(name: String) throws {
            try self.validate(self.humanLoopName, name: "humanLoopName", parent: name, max: 63)
            try self.validate(self.humanLoopName, name: "humanLoopName", parent: name, min: 1)
            try self.validate(self.humanLoopName, name: "humanLoopName", parent: name, pattern: "^[a-z0-9](-*[a-z0-9])*$")
        }

        private enum CodingKeys: String, CodingKey {
            case humanLoopName = "HumanLoopName"
        }
    }

    public struct StopHumanLoopResponse: AWSDecodableShape {
        public init() {}
    }
}

// MARK: - Errors

/// Error enum for SageMakerA2IRuntime
public struct SageMakerA2IRuntimeErrorType: AWSErrorType {
    enum Code: String {
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SageMakerA2IRuntime
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

    /// Your request has the same name as another active human loop but has different input data. You cannot start two  human loops with the same name and different input data.
    public static var conflictException: Self { .init(.conflictException) }
    /// We couldn't process your request because of an issue with the server. Try again later.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// We couldn't find the requested resource. Check that your resources exists and were created in the same AWS Region as your request, and try your request again.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// You exceeded your service quota. Service quotas, also referred to as limits, are the maximum number of service resources or operations for your AWS account. For a list of Amazon A2I service quotes, see Amazon Augmented AI Service Quotes. Delete some resources or request an increase in your service quota. You can request a quota increase using Service Quotas or the AWS Support Center. To request an increase, see AWS Service Quotas in the AWS General Reference.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// You exceeded the maximum number of requests.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The request isn't valid. Check the syntax and try again.
    public static var validationException: Self { .init(.validationException) }
}

extension SageMakerA2IRuntimeErrorType: Equatable {
    public static func == (lhs: SageMakerA2IRuntimeErrorType, rhs: SageMakerA2IRuntimeErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SageMakerA2IRuntimeErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
