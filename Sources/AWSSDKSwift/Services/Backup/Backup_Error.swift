// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Backup
public enum BackupErrorType: AWSErrorType {
    case alreadyExistsException(message: String?)
    case dependencyFailureException(message: String?)
    case invalidParameterValueException(message: String?)
    case invalidRequestException(message: String?)
    case limitExceededException(message: String?)
    case missingParameterValueException(message: String?)
    case resourceNotFoundException(message: String?)
    case serviceUnavailableException(message: String?)
}

extension BackupErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AlreadyExistsException":
            self = .alreadyExistsException(message: message)
        case "DependencyFailureException":
            self = .dependencyFailureException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "MissingParameterValueException":
            self = .missingParameterValueException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        default:
            return nil
        }
    }
}

extension BackupErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .alreadyExistsException(let message):
            return "AlreadyExistsException: \(message ?? "")"
        case .dependencyFailureException(let message):
            return "DependencyFailureException: \(message ?? "")"
        case .invalidParameterValueException(let message):
            return "InvalidParameterValueException: \(message ?? "")"
        case .invalidRequestException(let message):
            return "InvalidRequestException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .missingParameterValueException(let message):
            return "MissingParameterValueException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .serviceUnavailableException(let message):
            return "ServiceUnavailableException: \(message ?? "")"
        }
    }
}