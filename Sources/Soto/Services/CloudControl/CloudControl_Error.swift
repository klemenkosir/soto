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

import SotoCore

/// Error enum for CloudControl
public struct CloudControlErrorType: AWSErrorType {
    enum Code: String {
        case alreadyExistsException = "AlreadyExistsException"
        case clientTokenConflictException = "ClientTokenConflictException"
        case concurrentModificationException = "ConcurrentModificationException"
        case concurrentOperationException = "ConcurrentOperationException"
        case generalServiceException = "GeneralServiceException"
        case handlerFailureException = "HandlerFailureException"
        case handlerInternalFailureException = "HandlerInternalFailureException"
        case invalidCredentialsException = "InvalidCredentialsException"
        case invalidRequestException = "InvalidRequestException"
        case networkFailureException = "NetworkFailureException"
        case notStabilizedException = "NotStabilizedException"
        case notUpdatableException = "NotUpdatableException"
        case privateTypeException = "PrivateTypeException"
        case requestTokenNotFoundException = "RequestTokenNotFoundException"
        case resourceConflictException = "ResourceConflictException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceInternalErrorException = "ServiceInternalErrorException"
        case serviceLimitExceededException = "ServiceLimitExceededException"
        case throttlingException = "ThrottlingException"
        case typeNotFoundException = "TypeNotFoundException"
        case unsupportedActionException = "UnsupportedActionException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize CloudControl
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

    /// The resource with the name requested already exists.
    public static var alreadyExistsException: Self { .init(.alreadyExistsException) }
    /// The specified client token has already been used in another resource request. It's best practice for client tokens to be unique for each resource operation request. However, client token expire after 36 hours.
    public static var clientTokenConflictException: Self { .init(.clientTokenConflictException) }
    /// The resource is currently being modified by another operation.
    public static var concurrentModificationException: Self { .init(.concurrentModificationException) }
    /// Another resource operation is currently being performed on this resource.
    public static var concurrentOperationException: Self { .init(.concurrentOperationException) }
    /// The resource handler has returned that the downstream service generated an error that doesn't map to any other handler error code.
    public static var generalServiceException: Self { .init(.generalServiceException) }
    /// The resource handler has failed without a returning a more specific error code. This can include timeouts.
    public static var handlerFailureException: Self { .init(.handlerFailureException) }
    /// The resource handler has returned that an unexpected error occurred within the resource handler.
    public static var handlerInternalFailureException: Self { .init(.handlerInternalFailureException) }
    /// The resource handler has returned that the credentials provided by the user are invalid.
    public static var invalidCredentialsException: Self { .init(.invalidCredentialsException) }
    /// The resource handler has returned that invalid input from the user has generated a generic exception.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// The resource handler has returned that the request couldn't be completed due to networking issues, such as a failure to receive a response from the server.
    public static var networkFailureException: Self { .init(.networkFailureException) }
    /// The resource handler has returned that the downstream resource failed to complete all of its ready-state checks.
    public static var notStabilizedException: Self { .init(.notStabilizedException) }
    /// One or more properties included in this resource operation are defined as create-only, and therefore can't be updated.
    public static var notUpdatableException: Self { .init(.notUpdatableException) }
    /// Cloud Control API hasn't received a valid response from the resource handler, due to a configuration error. This includes issues such as the resource handler returning an invalid response, or timing out.
    public static var privateTypeException: Self { .init(.privateTypeException) }
    /// A resource operation with the specified request token can't be found.
    public static var requestTokenNotFoundException: Self { .init(.requestTokenNotFoundException) }
    /// The resource is temporarily unavailable to be acted upon. For example, if the resource is currently undergoing an operation and can't be acted upon until that operation is finished.
    public static var resourceConflictException: Self { .init(.resourceConflictException) }
    /// A resource with the specified identifier can't be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The resource handler has returned that the downstream service returned an internal error, typically with a 5XX HTTP status code.
    public static var serviceInternalErrorException: Self { .init(.serviceInternalErrorException) }
    /// The resource handler has returned that a non-transient resource limit was reached on the service side.
    public static var serviceLimitExceededException: Self { .init(.serviceLimitExceededException) }
    /// The request was denied due to request throttling.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The specified extension doesn't exist in the CloudFormation registry.
    public static var typeNotFoundException: Self { .init(.typeNotFoundException) }
    /// The specified resource doesn't support this resource operation.
    public static var unsupportedActionException: Self { .init(.unsupportedActionException) }
}

extension CloudControlErrorType: Equatable {
    public static func == (lhs: CloudControlErrorType, rhs: CloudControlErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CloudControlErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
