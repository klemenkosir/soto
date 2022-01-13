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

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension AppConfigData {
    // MARK: Async API Calls

    /// Retrieves the latest deployed configuration. This API may return empty Configuration data if the client already has the latest version. See StartConfigurationSession to obtain an InitialConfigurationToken to call this API.  Each call to GetLatestConfiguration returns a new ConfigurationToken (NextPollConfigurationToken in the response). This new token MUST be provided to the next call to GetLatestConfiguration when polling for configuration updates. To avoid excess charges, we recommend that you include the ClientConfigurationVersion value with every call to GetConfiguration. This value must be saved on your client. Subsequent calls to GetConfiguration must pass this value by using the ClientConfigurationVersion parameter.
    public func getLatestConfiguration(_ input: GetLatestConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLatestConfigurationResponse {
        return try await self.client.execute(operation: "GetLatestConfiguration", path: "/configuration", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a configuration session used to retrieve a deployed configuration. See the GetLatestConfiguration API for more details.
    public func startConfigurationSession(_ input: StartConfigurationSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartConfigurationSessionResponse {
        return try await self.client.execute(operation: "StartConfigurationSession", path: "/configurationsessions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
