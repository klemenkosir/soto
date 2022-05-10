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

extension AppConfigData {
    // MARK: Enums

    // MARK: Shapes

    public struct GetLatestConfigurationRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "configurationToken", location: .querystring("configuration_token"))
        ]

        /// Token describing the current state of the configuration session. To obtain a token, first call the StartConfigurationSession API. Note that every call to GetLatestConfiguration will return a new ConfigurationToken (NextPollConfigurationToken in the response) and MUST be provided to subsequent GetLatestConfiguration API calls.
        public let configurationToken: String

        public init(configurationToken: String) {
            self.configurationToken = configurationToken
        }

        public func validate(name: String) throws {
            try self.validate(self.configurationToken, name: "configurationToken", parent: name, pattern: "^\\S{1,8192}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetLatestConfigurationResponse: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "configuration"
        public static let _options: AWSShapeOptions = [.rawPayload]
        public static var _encoding = [
            AWSMemberEncoding(label: "configuration", location: .body("Configuration")),
            AWSMemberEncoding(label: "contentType", location: .header("Content-Type")),
            AWSMemberEncoding(label: "nextPollConfigurationToken", location: .header("Next-Poll-Configuration-Token")),
            AWSMemberEncoding(label: "nextPollIntervalInSeconds", location: .header("Next-Poll-Interval-In-Seconds"))
        ]

        /// The data of the configuration. This may be empty if the client already has the latest version of configuration.
        public let configuration: AWSPayload?
        /// A standard MIME type describing the format of the configuration content.
        public let contentType: String?
        /// The latest token describing the current state of the configuration session. This MUST be provided to the next call to GetLatestConfiguration.
        public let nextPollConfigurationToken: String?
        /// The amount of time the client should wait before polling for configuration updates again. Use RequiredMinimumPollIntervalInSeconds to set the desired poll interval.
        public let nextPollIntervalInSeconds: Int?

        public init(configuration: AWSPayload? = nil, contentType: String? = nil, nextPollConfigurationToken: String? = nil, nextPollIntervalInSeconds: Int? = nil) {
            self.configuration = configuration
            self.contentType = contentType
            self.nextPollConfigurationToken = nextPollConfigurationToken
            self.nextPollIntervalInSeconds = nextPollIntervalInSeconds
        }

        private enum CodingKeys: String, CodingKey {
            case configuration = "Configuration"
            case contentType = "Content-Type"
            case nextPollConfigurationToken = "Next-Poll-Configuration-Token"
            case nextPollIntervalInSeconds = "Next-Poll-Interval-In-Seconds"
        }
    }

    public struct StartConfigurationSessionRequest: AWSEncodableShape {
        /// The application ID or the application name.
        public let applicationIdentifier: String
        /// The configuration profile ID or the configuration profile name.
        public let configurationProfileIdentifier: String
        /// The environment ID or the environment name.
        public let environmentIdentifier: String
        /// Sets a constraint on a session. If you specify a value of, for example, 60 seconds, then the client that established the session can't call GetLatestConfiguration more frequently then every 60 seconds.
        public let requiredMinimumPollIntervalInSeconds: Int?

        public init(applicationIdentifier: String, configurationProfileIdentifier: String, environmentIdentifier: String, requiredMinimumPollIntervalInSeconds: Int? = nil) {
            self.applicationIdentifier = applicationIdentifier
            self.configurationProfileIdentifier = configurationProfileIdentifier
            self.environmentIdentifier = environmentIdentifier
            self.requiredMinimumPollIntervalInSeconds = requiredMinimumPollIntervalInSeconds
        }

        public func validate(name: String) throws {
            try self.validate(self.applicationIdentifier, name: "applicationIdentifier", parent: name, max: 64)
            try self.validate(self.applicationIdentifier, name: "applicationIdentifier", parent: name, min: 1)
            try self.validate(self.configurationProfileIdentifier, name: "configurationProfileIdentifier", parent: name, max: 64)
            try self.validate(self.configurationProfileIdentifier, name: "configurationProfileIdentifier", parent: name, min: 1)
            try self.validate(self.environmentIdentifier, name: "environmentIdentifier", parent: name, max: 64)
            try self.validate(self.environmentIdentifier, name: "environmentIdentifier", parent: name, min: 1)
            try self.validate(self.requiredMinimumPollIntervalInSeconds, name: "requiredMinimumPollIntervalInSeconds", parent: name, max: 86400)
            try self.validate(self.requiredMinimumPollIntervalInSeconds, name: "requiredMinimumPollIntervalInSeconds", parent: name, min: 15)
        }

        private enum CodingKeys: String, CodingKey {
            case applicationIdentifier = "ApplicationIdentifier"
            case configurationProfileIdentifier = "ConfigurationProfileIdentifier"
            case environmentIdentifier = "EnvironmentIdentifier"
            case requiredMinimumPollIntervalInSeconds = "RequiredMinimumPollIntervalInSeconds"
        }
    }

    public struct StartConfigurationSessionResponse: AWSDecodableShape {
        /// Token encapsulating state about the configuration session. Provide this token to the GetLatestConfiguration API to retrieve configuration data.  This token should only be used once in your first call to GetLatestConfiguration. You MUST use the new token in the GetLatestConfiguration response (NextPollConfigurationToken) in each subsequent call to GetLatestConfiguration.
        public let initialConfigurationToken: String?

        public init(initialConfigurationToken: String? = nil) {
            self.initialConfigurationToken = initialConfigurationToken
        }

        private enum CodingKeys: String, CodingKey {
            case initialConfigurationToken = "InitialConfigurationToken"
        }
    }
}
