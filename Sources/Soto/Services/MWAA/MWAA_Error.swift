//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

/// Error enum for MWAA
public struct MWAAErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize MWAA
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

    /// Access to the Airflow Web UI or CLI has been Denied. Please follow the MWAA user guide to setup permissions to access the Web UI and CLI functionality.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// InternalServerException: An internal error has occurred.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// ResourceNotFoundException: The resource is not available.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// ValidationException: The provided input is not valid.
    public static var validationException: Self { .init(.validationException) }
}

extension MWAAErrorType: Equatable {
    public static func == (lhs: MWAAErrorType, rhs: MWAAErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MWAAErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
