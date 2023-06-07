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

extension ARCZonalShift {
    // MARK: Enums

    public enum AppliedStatus: String, CustomStringConvertible, Codable, Sendable {
        case applied = "APPLIED"
        case notApplied = "NOT_APPLIED"
        public var description: String { return self.rawValue }
    }

    public enum ZonalShiftStatus: String, CustomStringConvertible, Codable, Sendable {
        case active = "ACTIVE"
        case canceled = "CANCELED"
        case expired = "EXPIRED"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct CancelZonalShiftRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "zonalShiftId", location: .uri("zonalShiftId"))
        ]

        /// The internally-generated identifier of a zonal shift.
        public let zonalShiftId: String

        public init(zonalShiftId: String) {
            self.zonalShiftId = zonalShiftId
        }

        public func validate(name: String) throws {
            try self.validate(self.zonalShiftId, name: "zonalShiftId", parent: name, max: 36)
            try self.validate(self.zonalShiftId, name: "zonalShiftId", parent: name, min: 6)
            try self.validate(self.zonalShiftId, name: "zonalShiftId", parent: name, pattern: "^[A-Za-z0-9-]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetManagedResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceIdentifier", location: .uri("resourceIdentifier"))
        ]

        /// The identifier for the resource to include in a zonal shift. The identifier is the Amazon Resource Name (ARN) for the resource. 	     At this time, you can only start a zonal shift for Network Load Balancers and Application Load Balancers with cross-zone load balancing turned off.
        public let resourceIdentifier: String

        public init(resourceIdentifier: String) {
            self.resourceIdentifier = resourceIdentifier
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceIdentifier, name: "resourceIdentifier", parent: name, max: 1024)
            try self.validate(self.resourceIdentifier, name: "resourceIdentifier", parent: name, min: 8)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetManagedResourceResponse: AWSDecodableShape {
        /// A collection of key-value pairs that indicate whether resources are active in Availability Zones or not.   		The key name is the Availability Zone where the resource is deployed. The value is 1 or 0.
        public let appliedWeights: [String: Float]
        /// The Amazon Resource Name (ARN) for the resource.
        public let arn: String?
        /// The name of the resource.
        public let name: String?
        /// The zonal shifts that are currently active for a resource.
        public let zonalShifts: [ZonalShiftInResource]

        public init(appliedWeights: [String: Float], arn: String? = nil, name: String? = nil, zonalShifts: [ZonalShiftInResource]) {
            self.appliedWeights = appliedWeights
            self.arn = arn
            self.name = name
            self.zonalShifts = zonalShifts
        }

        private enum CodingKeys: String, CodingKey {
            case appliedWeights = "appliedWeights"
            case arn = "arn"
            case name = "name"
            case zonalShifts = "zonalShifts"
        }
    }

    public struct ListManagedResourcesRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring("maxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("nextToken"))
        ]

        /// The number of objects that you want to return with this call.
        public let maxResults: Int?
        /// Specifies that you want to receive the next page of results. Valid only if you received a NextToken response in the  		previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous  		call's NextToken response to request the next page of results.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListManagedResourcesResponse: AWSDecodableShape {
        /// The items in the response list.
        public let items: [ManagedResourceSummary]
        /// Specifies that you want to receive the next page of results. Valid only if you received a NextToken response in the  		previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous  		call's NextToken response to request the next page of results.
        public let nextToken: String?

        public init(items: [ManagedResourceSummary], nextToken: String? = nil) {
            self.items = items
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case items = "items"
            case nextToken = "nextToken"
        }
    }

    public struct ListZonalShiftsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring("maxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("nextToken")),
            AWSMemberEncoding(label: "status", location: .querystring("status"))
        ]

        /// The number of objects that you want to return with this call.
        public let maxResults: Int?
        /// Specifies that you want to receive the next page of results. Valid only if you received a NextToken response in the  		previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous  		call's NextToken response to request the next page of results.
        public let nextToken: String?
        /// A status for a zonal shift. 	     The Status for a zonal shift can have one of the following values: 	        ACTIVE: The zonal shift is started and active.    EXPIRED: The zonal shift has expired (the expiry time was exceeded).    CANCELED: The zonal shift was canceled.
        public let status: ZonalShiftStatus?

        public init(maxResults: Int? = nil, nextToken: String? = nil, status: ZonalShiftStatus? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.status = status
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListZonalShiftsResponse: AWSDecodableShape {
        /// The items in the response list.
        public let items: [ZonalShiftSummary]?
        /// Specifies that you want to receive the next page of results. Valid only if you received a NextToken response in the  		previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous  		call's NextToken response to request the next page of results.
        public let nextToken: String?

        public init(items: [ZonalShiftSummary]? = nil, nextToken: String? = nil) {
            self.items = items
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case items = "items"
            case nextToken = "nextToken"
        }
    }

    public struct ManagedResourceSummary: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) for the managed resource.
        public let arn: String?
        /// The Availability Zones that a resource is deployed in.
        public let availabilityZones: [String]
        /// The name of the managed resource.
        public let name: String?

        public init(arn: String? = nil, availabilityZones: [String], name: String? = nil) {
            self.arn = arn
            self.availabilityZones = availabilityZones
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case availabilityZones = "availabilityZones"
            case name = "name"
        }
    }

    public struct StartZonalShiftRequest: AWSEncodableShape {
        /// The Availability Zone that traffic is moved away from for a resource when you start a zonal shift.  		Until the zonal shift expires or you cancel it, traffic for the resource is instead moved to other Availability Zones in the AWS Region.
        public let awayFrom: String
        /// A comment that you enter about the zonal shift. Only the latest comment is retained; no comment 		history is maintained. A new comment overwrites any existing comment string.
        public let comment: String
        /// The length of time that you want a zonal shift to be active, which Route 53 ARC converts to an expiry time (expiration time). 		Zonal shifts are temporary. You can set a zonal shift to be active initially for up to three days (72 hours). 	     If you want to still keep traffic away from an Availability Zone, you can update the  		zonal shift and set a new expiration. You can also cancel a zonal shift, before it expires, for example, if you're ready to  		restore traffic to the Availability Zone. 	     To set a length of time for a zonal shift to be active, specify a whole number, and then one of the following, with no space: 	 	        A lowercase letter m: To specify that the value is in minutes.    A lowercase letter h: To specify that the value is in hours.   	     For example: 20h means the zonal shift expires in 20 hours. 120m means the zonal shift expires in 120 minutes (2 hours).
        public let expiresIn: String
        /// The identifier for the resource to include in a zonal shift. The identifier is the Amazon Resource Name (ARN) for the resource. 	     At this time, you can only start a zonal shift for Network Load Balancers and Application Load Balancers with cross-zone load balancing turned off.
        public let resourceIdentifier: String

        public init(awayFrom: String, comment: String, expiresIn: String, resourceIdentifier: String) {
            self.awayFrom = awayFrom
            self.comment = comment
            self.expiresIn = expiresIn
            self.resourceIdentifier = resourceIdentifier
        }

        public func validate(name: String) throws {
            try self.validate(self.awayFrom, name: "awayFrom", parent: name, max: 20)
            try self.validate(self.comment, name: "comment", parent: name, max: 128)
            try self.validate(self.expiresIn, name: "expiresIn", parent: name, max: 5)
            try self.validate(self.expiresIn, name: "expiresIn", parent: name, min: 2)
            try self.validate(self.expiresIn, name: "expiresIn", parent: name, pattern: "^([1-9][0-9]*)(m|h)$")
            try self.validate(self.resourceIdentifier, name: "resourceIdentifier", parent: name, max: 1024)
            try self.validate(self.resourceIdentifier, name: "resourceIdentifier", parent: name, min: 8)
        }

        private enum CodingKeys: String, CodingKey {
            case awayFrom = "awayFrom"
            case comment = "comment"
            case expiresIn = "expiresIn"
            case resourceIdentifier = "resourceIdentifier"
        }
    }

    public struct UpdateZonalShiftRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "zonalShiftId", location: .uri("zonalShiftId"))
        ]

        /// A comment that you enter about the zonal shift. Only the latest comment is retained; no comment 		history is maintained. A new comment overwrites any existing comment string.
        public let comment: String?
        /// The length of time that you want a zonal shift to be active, which Route 53 ARC converts to an expiry time (expiration time). 		Zonal shifts are temporary. You can set a zonal shift to be active initially for up to three days (72 hours). 	     If you want to still keep traffic away from an Availability Zone, you can update the  		zonal shift and set a new expiration. You can also cancel a zonal shift, before it expires, for example, if you're ready to  		restore traffic to the Availability Zone. 	     To set a length of time for a zonal shift to be active, specify a whole number, and then one of the following, with no space: 	        A lowercase letter m: To specify that the value is in minutes.    A lowercase letter h: To specify that the value is in hours.   	     For example: 20h means the zonal shift expires in 20 hours. 120m means the zonal shift expires in 120 minutes (2 hours).
        public let expiresIn: String?
        /// The identifier of a zonal shift.
        public let zonalShiftId: String

        public init(comment: String? = nil, expiresIn: String? = nil, zonalShiftId: String) {
            self.comment = comment
            self.expiresIn = expiresIn
            self.zonalShiftId = zonalShiftId
        }

        public func validate(name: String) throws {
            try self.validate(self.comment, name: "comment", parent: name, max: 128)
            try self.validate(self.expiresIn, name: "expiresIn", parent: name, max: 5)
            try self.validate(self.expiresIn, name: "expiresIn", parent: name, min: 2)
            try self.validate(self.expiresIn, name: "expiresIn", parent: name, pattern: "^([1-9][0-9]*)(m|h)$")
            try self.validate(self.zonalShiftId, name: "zonalShiftId", parent: name, max: 36)
            try self.validate(self.zonalShiftId, name: "zonalShiftId", parent: name, min: 6)
            try self.validate(self.zonalShiftId, name: "zonalShiftId", parent: name, pattern: "^[A-Za-z0-9-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case comment = "comment"
            case expiresIn = "expiresIn"
        }
    }

    public struct ZonalShift: AWSDecodableShape {
        /// The Availability Zone that traffic is moved away from for a resource when you start a zonal shift.
        /// 			Until the zonal shift expires or you cancel it, traffic for the resource is instead moved to other Availability Zones in the AWS Region.
        public let awayFrom: String
        /// A comment that you enter about the zonal shift. Only the latest comment is retained; no comment 		history is maintained. A new comment overwrites any existing comment string.
        public let comment: String
        /// The expiry time (expiration time) for the zonal shift. A zonal shift is temporary and must be set to expire when you start the zonal shift.
        /// 			You can initially set a zonal shift to expire in a maximum of three days (72 hours). However, you can update a zonal shift
        /// 			to set a new expiration at any time.
        /// 		       When you start a zonal shift, you specify how long you want it to be active, which Route 53 ARC converts
        /// 			to an expiry time (expiration time). You can cancel a zonal shift, for example, if you're ready to restore traffic to the Availability Zone. Or you
        /// 			can update the zonal shift to specify another length of time to expire in.
        public let expiryTime: Date
        /// The identifier for the resource to include in a zonal shift. The identifier is the Amazon Resource Name (ARN) for the resource.
        /// 		       At this time, you can only start a zonal shift for Network Load Balancers and Application Load Balancers with cross-zone load balancing turned off.
        public let resourceIdentifier: String
        /// The time (UTC) when the zonal shift is started.
        public let startTime: Date
        /// A status for a zonal shift. 	     The Status for a zonal shift can have one of the following values: 	        ACTIVE: The zonal shift is started and active.    EXPIRED: The zonal shift has expired (the expiry time was exceeded).    CANCELED: The zonal shift was canceled.
        public let status: ZonalShiftStatus
        /// The identifier of a zonal shift.
        public let zonalShiftId: String

        public init(awayFrom: String, comment: String, expiryTime: Date, resourceIdentifier: String, startTime: Date, status: ZonalShiftStatus, zonalShiftId: String) {
            self.awayFrom = awayFrom
            self.comment = comment
            self.expiryTime = expiryTime
            self.resourceIdentifier = resourceIdentifier
            self.startTime = startTime
            self.status = status
            self.zonalShiftId = zonalShiftId
        }

        private enum CodingKeys: String, CodingKey {
            case awayFrom = "awayFrom"
            case comment = "comment"
            case expiryTime = "expiryTime"
            case resourceIdentifier = "resourceIdentifier"
            case startTime = "startTime"
            case status = "status"
            case zonalShiftId = "zonalShiftId"
        }
    }

    public struct ZonalShiftInResource: AWSDecodableShape {
        /// An appliedStatus for a zonal shift for a resource can have one of two values: APPLIED 		or NOT_APPLIED.
        public let appliedStatus: AppliedStatus
        /// The Availability Zone that traffic is moved away from for a resource when you start a zonal shift.  		Until the zonal shift expires or you cancel it, traffic for the resource is instead moved to other Availability Zones in the AWS Region.
        public let awayFrom: String
        /// A comment that you enter about the zonal shift. Only the latest comment is retained; no comment 		history is maintained. That is, a new comment overwrites any existing comment string.
        public let comment: String
        /// The expiry time (expiration time) for the zonal shift. A zonal shift is temporary and must be set to expire when you start the zonal shift.  		You can initially set a zonal shift to expire in a maximum of three days (72 hours). However, you can update a zonal shift  		to set a new expiration at any time.  	     When you start a zonal shift, you specify how long you want it to be active, which Route 53 ARC converts  		to an expiry time (expiration time). You can cancel a zonal shift, for example, if you're ready to restore traffic to the Availability Zone. Or you 		can update the zonal shift to specify another length of time to expire in.
        public let expiryTime: Date
        /// The identifier for the resource to include in a zonal shift. The identifier is the Amazon Resource Name (ARN) for the resource. 	     At this time, you can only start a zonal shift for Network Load Balancers and Application Load Balancers with cross-zone load balancing turned off.
        public let resourceIdentifier: String
        /// The time (UTC) when the zonal shift is started.
        public let startTime: Date
        /// The identifier of a zonal shift.
        public let zonalShiftId: String

        public init(appliedStatus: AppliedStatus, awayFrom: String, comment: String, expiryTime: Date, resourceIdentifier: String, startTime: Date, zonalShiftId: String) {
            self.appliedStatus = appliedStatus
            self.awayFrom = awayFrom
            self.comment = comment
            self.expiryTime = expiryTime
            self.resourceIdentifier = resourceIdentifier
            self.startTime = startTime
            self.zonalShiftId = zonalShiftId
        }

        private enum CodingKeys: String, CodingKey {
            case appliedStatus = "appliedStatus"
            case awayFrom = "awayFrom"
            case comment = "comment"
            case expiryTime = "expiryTime"
            case resourceIdentifier = "resourceIdentifier"
            case startTime = "startTime"
            case zonalShiftId = "zonalShiftId"
        }
    }

    public struct ZonalShiftSummary: AWSDecodableShape {
        /// The Availability Zone that traffic is moved away from for a resource when you start a zonal shift.  		Until the zonal shift expires or you cancel it, traffic for the resource is instead moved to other Availability Zones in the AWS Region.
        public let awayFrom: String
        /// A comment that you enter about the zonal shift. Only the latest comment is retained; no comment 		history is maintained. That is, a new comment overwrites any existing comment string.
        public let comment: String
        /// The expiry time (expiration time) for the zonal shift. A zonal shift is temporary and must be set to expire when you start the zonal shift.  		You can initially set a zonal shift to expire in a maximum of three days (72 hours). However, you can update a zonal shift  		to set a new expiration at any time.  	     When you start a zonal shift, you specify how long you want it to be active, which Route 53 ARC converts  		to an expiry time (expiration time). You can cancel a zonal shift, for example, if you're ready to restore traffic to the Availability Zone. Or you 		can update the zonal shift to specify another length of time to expire in.
        public let expiryTime: Date
        /// The identifier for the resource to include in a zonal shift. The identifier is the Amazon Resource Name (ARN) for the resource. 	     At this time, you can only start a zonal shift for Network Load Balancers and Application Load Balancers with cross-zone load balancing turned off.
        public let resourceIdentifier: String
        /// The time (UTC) when the zonal shift is started.
        public let startTime: Date
        /// A status for a zonal shift. 	     The Status for a zonal shift can have one of the following values: 	        ACTIVE: The zonal shift is started and active.    EXPIRED: The zonal shift has expired (the expiry time was exceeded).    CANCELED: The zonal shift was canceled.
        public let status: ZonalShiftStatus
        /// The identifier of a zonal shift.
        public let zonalShiftId: String

        public init(awayFrom: String, comment: String, expiryTime: Date, resourceIdentifier: String, startTime: Date, status: ZonalShiftStatus, zonalShiftId: String) {
            self.awayFrom = awayFrom
            self.comment = comment
            self.expiryTime = expiryTime
            self.resourceIdentifier = resourceIdentifier
            self.startTime = startTime
            self.status = status
            self.zonalShiftId = zonalShiftId
        }

        private enum CodingKeys: String, CodingKey {
            case awayFrom = "awayFrom"
            case comment = "comment"
            case expiryTime = "expiryTime"
            case resourceIdentifier = "resourceIdentifier"
            case startTime = "startTime"
            case status = "status"
            case zonalShiftId = "zonalShiftId"
        }
    }
}

// MARK: - Errors

/// Error enum for ARCZonalShift
public struct ARCZonalShiftErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ARCZonalShift
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
    /// The request could not be processed because of conflict in the current state of the resource.
    public static var conflictException: Self { .init(.conflictException) }
    /// There was an internal server error.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The input requested a resource that was not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The request was denied due to request throttling.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The input fails to satisfy the constraints specified by an AWS service.
    public static var validationException: Self { .init(.validationException) }
}

extension ARCZonalShiftErrorType: Equatable {
    public static func == (lhs: ARCZonalShiftErrorType, rhs: ARCZonalShiftErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ARCZonalShiftErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
