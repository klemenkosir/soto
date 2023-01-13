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

import Foundation
import SotoCore

extension Account {
    // MARK: Enums

    public enum AlternateContactType: String, CustomStringConvertible, Codable, _SotoSendable {
        case billing = "BILLING"
        case operations = "OPERATIONS"
        case security = "SECURITY"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct AlternateContact: AWSDecodableShape {
        /// The type of alternate contact.
        public let alternateContactType: AlternateContactType?
        /// The email address associated with this alternate contact.
        public let emailAddress: String?
        /// The name associated with this alternate contact.
        public let name: String?
        /// The phone number associated with this alternate contact.
        public let phoneNumber: String?
        /// The title associated with this alternate contact.
        public let title: String?

        public init(alternateContactType: AlternateContactType? = nil, emailAddress: String? = nil, name: String? = nil, phoneNumber: String? = nil, title: String? = nil) {
            self.alternateContactType = alternateContactType
            self.emailAddress = emailAddress
            self.name = name
            self.phoneNumber = phoneNumber
            self.title = title
        }

        private enum CodingKeys: String, CodingKey {
            case alternateContactType = "AlternateContactType"
            case emailAddress = "EmailAddress"
            case name = "Name"
            case phoneNumber = "PhoneNumber"
            case title = "Title"
        }
    }

    public struct ContactInformation: AWSEncodableShape & AWSDecodableShape {
        /// The first line of the primary contact address.
        public let addressLine1: String
        /// The second line of the primary contact address, if any.
        public let addressLine2: String?
        /// The third line of the primary contact address, if any.
        public let addressLine3: String?
        /// The city of the primary contact address.
        public let city: String
        /// The name of the company associated with the primary contact information, if any.
        public let companyName: String?
        /// The ISO-3166 two-letter country code for the primary contact address.
        public let countryCode: String
        /// The district or county of the primary contact address, if any.
        public let districtOrCounty: String?
        /// The full name of the primary contact address.
        public let fullName: String
        /// The phone number of the primary contact information. The number will be validated and, in some countries, checked for activation.
        public let phoneNumber: String
        /// The postal code of the primary contact address.
        public let postalCode: String
        /// The state or region of the primary contact address. This field is required in selected countries.
        public let stateOrRegion: String?
        /// The URL of the website associated with the primary contact information, if any.
        public let websiteUrl: String?

        public init(addressLine1: String, addressLine2: String? = nil, addressLine3: String? = nil, city: String, companyName: String? = nil, countryCode: String, districtOrCounty: String? = nil, fullName: String, phoneNumber: String, postalCode: String, stateOrRegion: String? = nil, websiteUrl: String? = nil) {
            self.addressLine1 = addressLine1
            self.addressLine2 = addressLine2
            self.addressLine3 = addressLine3
            self.city = city
            self.companyName = companyName
            self.countryCode = countryCode
            self.districtOrCounty = districtOrCounty
            self.fullName = fullName
            self.phoneNumber = phoneNumber
            self.postalCode = postalCode
            self.stateOrRegion = stateOrRegion
            self.websiteUrl = websiteUrl
        }

        public func validate(name: String) throws {
            try self.validate(self.addressLine1, name: "addressLine1", parent: name, max: 60)
            try self.validate(self.addressLine1, name: "addressLine1", parent: name, min: 1)
            try self.validate(self.addressLine2, name: "addressLine2", parent: name, max: 60)
            try self.validate(self.addressLine2, name: "addressLine2", parent: name, min: 1)
            try self.validate(self.addressLine3, name: "addressLine3", parent: name, max: 60)
            try self.validate(self.addressLine3, name: "addressLine3", parent: name, min: 1)
            try self.validate(self.city, name: "city", parent: name, max: 50)
            try self.validate(self.city, name: "city", parent: name, min: 1)
            try self.validate(self.companyName, name: "companyName", parent: name, max: 50)
            try self.validate(self.companyName, name: "companyName", parent: name, min: 1)
            try self.validate(self.countryCode, name: "countryCode", parent: name, max: 2)
            try self.validate(self.countryCode, name: "countryCode", parent: name, min: 2)
            try self.validate(self.districtOrCounty, name: "districtOrCounty", parent: name, max: 50)
            try self.validate(self.districtOrCounty, name: "districtOrCounty", parent: name, min: 1)
            try self.validate(self.fullName, name: "fullName", parent: name, max: 50)
            try self.validate(self.fullName, name: "fullName", parent: name, min: 1)
            try self.validate(self.phoneNumber, name: "phoneNumber", parent: name, max: 20)
            try self.validate(self.phoneNumber, name: "phoneNumber", parent: name, min: 1)
            try self.validate(self.phoneNumber, name: "phoneNumber", parent: name, pattern: "^[+][\\s0-9()-]+$")
            try self.validate(self.postalCode, name: "postalCode", parent: name, max: 20)
            try self.validate(self.postalCode, name: "postalCode", parent: name, min: 1)
            try self.validate(self.stateOrRegion, name: "stateOrRegion", parent: name, max: 50)
            try self.validate(self.stateOrRegion, name: "stateOrRegion", parent: name, min: 1)
            try self.validate(self.websiteUrl, name: "websiteUrl", parent: name, max: 256)
            try self.validate(self.websiteUrl, name: "websiteUrl", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case addressLine1 = "AddressLine1"
            case addressLine2 = "AddressLine2"
            case addressLine3 = "AddressLine3"
            case city = "City"
            case companyName = "CompanyName"
            case countryCode = "CountryCode"
            case districtOrCounty = "DistrictOrCounty"
            case fullName = "FullName"
            case phoneNumber = "PhoneNumber"
            case postalCode = "PostalCode"
            case stateOrRegion = "StateOrRegion"
            case websiteUrl = "WebsiteUrl"
        }
    }

    public struct DeleteAlternateContactRequest: AWSEncodableShape {
        /// Specifies the 12 digit account ID number of the Amazon Web Services account that  you want to access or modify with this operation. If you do not specify this parameter, it defaults to the Amazon Web Services account of the  identity used to call the operation. To use this parameter, the caller must be an identity in the organization's management account or a delegated administrator account, and  the specified account ID must be a member account in the same organization. The organization must have all features  enabled, and the organization must have trusted access enabled for the  Account Management service, and optionally a delegated admin account  assigned.  The management account can't specify its own AccountId; it must call the operation in standalone context by not including the AccountId  parameter.  To call this operation on an account that is not a member of an organization, then  don't specify this parameter, and call the operation using an identity belonging to the account whose contacts you wish to retrieve or modify.
        public let accountId: String?
        /// Specifies which of the alternate contacts to delete.
        public let alternateContactType: AlternateContactType

        public init(accountId: String? = nil, alternateContactType: AlternateContactType) {
            self.accountId = accountId
            self.alternateContactType = alternateContactType
        }

        public func validate(name: String) throws {
            try self.validate(self.accountId, name: "accountId", parent: name, pattern: "^\\d{12}$")
        }

        private enum CodingKeys: String, CodingKey {
            case accountId = "AccountId"
            case alternateContactType = "AlternateContactType"
        }
    }

    public struct GetAlternateContactRequest: AWSEncodableShape {
        /// Specifies the 12 digit account ID number of the Amazon Web Services account that  you want to access or modify with this operation. If you do not specify this parameter, it defaults to the Amazon Web Services account of the  identity used to call the operation. To use this parameter, the caller must be an identity in the organization's management account or a delegated administrator account, and  the specified account ID must be a member account in the same organization. The organization must have all features  enabled, and the organization must have trusted access enabled for the  Account Management service, and optionally a delegated admin account  assigned.  The management account can't specify its own AccountId; it must call the operation in standalone context by not including the AccountId  parameter.  To call this operation on an account that is not a member of an organization, then  don't specify this parameter, and call the operation using an identity belonging to the account whose contacts you wish to retrieve or modify.
        public let accountId: String?
        /// Specifies which alternate contact you want to retrieve.
        public let alternateContactType: AlternateContactType

        public init(accountId: String? = nil, alternateContactType: AlternateContactType) {
            self.accountId = accountId
            self.alternateContactType = alternateContactType
        }

        public func validate(name: String) throws {
            try self.validate(self.accountId, name: "accountId", parent: name, pattern: "^\\d{12}$")
        }

        private enum CodingKeys: String, CodingKey {
            case accountId = "AccountId"
            case alternateContactType = "AlternateContactType"
        }
    }

    public struct GetAlternateContactResponse: AWSDecodableShape {
        /// A structure that contains the details for the specified alternate contact.
        public let alternateContact: AlternateContact?

        public init(alternateContact: AlternateContact? = nil) {
            self.alternateContact = alternateContact
        }

        private enum CodingKeys: String, CodingKey {
            case alternateContact = "AlternateContact"
        }
    }

    public struct GetContactInformationRequest: AWSEncodableShape {
        /// Specifies the 12-digit account ID number of the Amazon Web Services account that you want to access or modify with this operation. If you don't specify this parameter, it defaults to the Amazon Web Services account of the identity used to call the operation. To use this parameter, the caller must be an identity in the organization's management account or a delegated administrator account. The specified account ID must also be a member account in the same organization. The organization must have all features enabled, and the organization must have trusted access enabled for the Account Management service, and optionally a delegated admin account assigned.  The management account can't specify its own AccountId. It must call the operation in standalone context by not including the AccountId parameter.  To call this operation on an account that is not a member of an organization, don't specify this parameter. Instead, call the operation using an identity belonging to the account whose contacts you wish to retrieve or modify.
        public let accountId: String?

        public init(accountId: String? = nil) {
            self.accountId = accountId
        }

        public func validate(name: String) throws {
            try self.validate(self.accountId, name: "accountId", parent: name, pattern: "^\\d{12}$")
        }

        private enum CodingKeys: String, CodingKey {
            case accountId = "AccountId"
        }
    }

    public struct GetContactInformationResponse: AWSDecodableShape {
        /// Contains the details of the primary contact information associated with an Amazon Web Services account.
        public let contactInformation: ContactInformation?

        public init(contactInformation: ContactInformation? = nil) {
            self.contactInformation = contactInformation
        }

        private enum CodingKeys: String, CodingKey {
            case contactInformation = "ContactInformation"
        }
    }

    public struct PutAlternateContactRequest: AWSEncodableShape {
        /// Specifies the 12 digit account ID number of the Amazon Web Services account that  you want to access or modify with this operation. If you do not specify this parameter, it defaults to the Amazon Web Services account of the  identity used to call the operation. To use this parameter, the caller must be an identity in the organization's management account or a delegated administrator account, and  the specified account ID must be a member account in the same organization. The organization must have all features  enabled, and the organization must have trusted access enabled for the  Account Management service, and optionally a delegated admin account  assigned.  The management account can't specify its own AccountId; it must call the operation in standalone context by not including the AccountId  parameter.  To call this operation on an account that is not a member of an organization, then  don't specify this parameter, and call the operation using an identity belonging to the account whose contacts you wish to retrieve or modify.
        public let accountId: String?
        /// Specifies which alternate contact you want to create or update.
        public let alternateContactType: AlternateContactType
        /// Specifies an email address for the alternate contact.
        public let emailAddress: String
        /// Specifies a name for the alternate contact.
        public let name: String
        /// Specifies a phone number for the alternate contact.
        public let phoneNumber: String
        /// Specifies a title for the alternate contact.
        public let title: String

        public init(accountId: String? = nil, alternateContactType: AlternateContactType, emailAddress: String, name: String, phoneNumber: String, title: String) {
            self.accountId = accountId
            self.alternateContactType = alternateContactType
            self.emailAddress = emailAddress
            self.name = name
            self.phoneNumber = phoneNumber
            self.title = title
        }

        public func validate(name: String) throws {
            try self.validate(self.accountId, name: "accountId", parent: name, pattern: "^\\d{12}$")
            try self.validate(self.emailAddress, name: "emailAddress", parent: name, max: 64)
            try self.validate(self.emailAddress, name: "emailAddress", parent: name, min: 1)
            try self.validate(self.emailAddress, name: "emailAddress", parent: name, pattern: "^[\\s]*[\\w+=.#!&-]+@[\\w.-]+\\.[\\w]+[\\s]*$")
            try self.validate(self.name, name: "name", parent: name, max: 64)
            try self.validate(self.name, name: "name", parent: name, min: 1)
            try self.validate(self.phoneNumber, name: "phoneNumber", parent: name, max: 25)
            try self.validate(self.phoneNumber, name: "phoneNumber", parent: name, min: 1)
            try self.validate(self.phoneNumber, name: "phoneNumber", parent: name, pattern: "^[\\s0-9()+-]+$")
            try self.validate(self.title, name: "title", parent: name, max: 50)
            try self.validate(self.title, name: "title", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case accountId = "AccountId"
            case alternateContactType = "AlternateContactType"
            case emailAddress = "EmailAddress"
            case name = "Name"
            case phoneNumber = "PhoneNumber"
            case title = "Title"
        }
    }

    public struct PutContactInformationRequest: AWSEncodableShape {
        /// Specifies the 12-digit account ID number of the Amazon Web Services account that you want to access or modify with this operation. If you don't specify this parameter, it defaults to the Amazon Web Services account of the identity used to call the operation. To use this parameter, the caller must be an identity in the organization's management account or a delegated administrator account. The specified account ID must also be a member account in the same organization. The organization must have all features enabled, and the organization must have trusted access enabled for the Account Management service, and optionally a delegated admin account assigned.  The management account can't specify its own AccountId. It must call the operation in standalone context by not including the AccountId parameter.  To call this operation on an account that is not a member of an organization, don't specify this parameter. Instead, call the operation using an identity belonging to the account whose contacts you wish to retrieve or modify.
        public let accountId: String?
        /// Contains the details of the primary contact information associated with an Amazon Web Services account.
        public let contactInformation: ContactInformation

        public init(accountId: String? = nil, contactInformation: ContactInformation) {
            self.accountId = accountId
            self.contactInformation = contactInformation
        }

        public func validate(name: String) throws {
            try self.validate(self.accountId, name: "accountId", parent: name, pattern: "^\\d{12}$")
            try self.contactInformation.validate(name: "\(name).contactInformation")
        }

        private enum CodingKeys: String, CodingKey {
            case accountId = "AccountId"
            case contactInformation = "ContactInformation"
        }
    }
}

// MARK: - Errors

/// Error enum for Account
public struct AccountErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case tooManyRequestsException = "TooManyRequestsException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Account
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

    /// The operation failed because the calling identity doesn&#39;t have the minimum required permissions.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The operation failed because of an error internal to Amazon Web Services. Try your operation again later.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The operation failed because it specified a resource that can&#39;t be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The operation failed because it was called too frequently and exceeded a throttle limit.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
    /// The operation failed because one of the input parameters was invalid.
    public static var validationException: Self { .init(.validationException) }
}

extension AccountErrorType: Equatable {
    public static func == (lhs: AccountErrorType, rhs: AccountErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension AccountErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}