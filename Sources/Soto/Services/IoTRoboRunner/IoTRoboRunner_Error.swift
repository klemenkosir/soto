//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
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

import SotoCore

/// Error enum for IoTRoboRunner
public struct IoTRoboRunnerErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize IoTRoboRunner
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

    ///  User does not have sufficient access to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// Exception thrown if a resource in a create request already exists.
    public static var conflictException: Self { .init(.conflictException) }
    /// Exception thrown if something goes wrong within the service.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// Exception thrown if a resource referenced in the request doesn't exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Exception thrown if the user's AWS account has reached a service limit and the operation cannot proceed.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// Exception thrown if the api has been called too quickly be the client.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// Exception thrown if an invalid parameter is provided to an API.
    public static var validationException: Self { .init(.validationException) }
}

extension IoTRoboRunnerErrorType: Equatable {
    public static func == (lhs: IoTRoboRunnerErrorType, rhs: IoTRoboRunnerErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension IoTRoboRunnerErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}