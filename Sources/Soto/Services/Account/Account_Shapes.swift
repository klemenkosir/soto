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

#if compiler(>=5.6)
@preconcurrency import Foundation
#else
import Foundation
#endif
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
            try self.validate(self.emailAddress, name: "emailAddress", parent: name, pattern: "[\\w+=,.-]+@[\\w.-]+\\.[\\w]+")
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
}
