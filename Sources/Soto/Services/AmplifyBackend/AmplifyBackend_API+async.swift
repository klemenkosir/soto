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

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension AmplifyBackend {
    // MARK: Async API Calls

    /// This operation clones an existing backend.
    public func cloneBackend(_ input: CloneBackendRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloneBackendResponse {
        return try await self.client.execute(operation: "CloneBackend", path: "/backend/{AppId}/environments/{BackendEnvironmentName}/clone", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation creates a backend for an Amplify app. Backends are automatically created at the time of app creation.
    public func createBackend(_ input: CreateBackendRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackendResponse {
        return try await self.client.execute(operation: "CreateBackend", path: "/backend", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new backend API resource.
    public func createBackendAPI(_ input: CreateBackendAPIRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackendAPIResponse {
        return try await self.client.execute(operation: "CreateBackendAPI", path: "/backend/{AppId}/api", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new backend authentication resource.
    public func createBackendAuth(_ input: CreateBackendAuthRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackendAuthResponse {
        return try await self.client.execute(operation: "CreateBackendAuth", path: "/backend/{AppId}/auth", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a config object for a backend.
    public func createBackendConfig(_ input: CreateBackendConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackendConfigResponse {
        return try await self.client.execute(operation: "CreateBackendConfig", path: "/backend/{AppId}/config", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a backend storage resource.
    public func createBackendStorage(_ input: CreateBackendStorageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackendStorageResponse {
        return try await self.client.execute(operation: "CreateBackendStorage", path: "/backend/{AppId}/storage", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Generates a one-time challenge code to authenticate a user into your Amplify Admin UI.
    public func createToken(_ input: CreateTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTokenResponse {
        return try await self.client.execute(operation: "CreateToken", path: "/backend/{AppId}/challenge", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes an existing environment from your Amplify project.
    public func deleteBackend(_ input: DeleteBackendRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBackendResponse {
        return try await self.client.execute(operation: "DeleteBackend", path: "/backend/{AppId}/environments/{BackendEnvironmentName}/remove", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing backend API resource.
    public func deleteBackendAPI(_ input: DeleteBackendAPIRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBackendAPIResponse {
        return try await self.client.execute(operation: "DeleteBackendAPI", path: "/backend/{AppId}/api/{BackendEnvironmentName}/remove", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing backend authentication resource.
    public func deleteBackendAuth(_ input: DeleteBackendAuthRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBackendAuthResponse {
        return try await self.client.execute(operation: "DeleteBackendAuth", path: "/backend/{AppId}/auth/{BackendEnvironmentName}/remove", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified backend storage resource.
    public func deleteBackendStorage(_ input: DeleteBackendStorageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBackendStorageResponse {
        return try await self.client.execute(operation: "DeleteBackendStorage", path: "/backend/{AppId}/storage/{BackendEnvironmentName}/remove", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the challenge token based on the given appId and sessionId.
    public func deleteToken(_ input: DeleteTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTokenResponse {
        return try await self.client.execute(operation: "DeleteToken", path: "/backend/{AppId}/challenge/{SessionId}/remove", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Generates a model schema for an existing backend API resource.
    public func generateBackendAPIModels(_ input: GenerateBackendAPIModelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenerateBackendAPIModelsResponse {
        return try await self.client.execute(operation: "GenerateBackendAPIModels", path: "/backend/{AppId}/api/{BackendEnvironmentName}/generateModels", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides project-level details for your Amplify UI project.
    public func getBackend(_ input: GetBackendRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBackendResponse {
        return try await self.client.execute(operation: "GetBackend", path: "/backend/{AppId}/details", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the details for a backend API.
    public func getBackendAPI(_ input: GetBackendAPIRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBackendAPIResponse {
        return try await self.client.execute(operation: "GetBackendAPI", path: "/backend/{AppId}/api/{BackendEnvironmentName}/details", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Generates a model schema for existing backend API resource.
    public func getBackendAPIModels(_ input: GetBackendAPIModelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBackendAPIModelsResponse {
        return try await self.client.execute(operation: "GetBackendAPIModels", path: "/backend/{AppId}/api/{BackendEnvironmentName}/getModels", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a backend auth details.
    public func getBackendAuth(_ input: GetBackendAuthRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBackendAuthResponse {
        return try await self.client.execute(operation: "GetBackendAuth", path: "/backend/{AppId}/auth/{BackendEnvironmentName}/details", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a specific job.
    public func getBackendJob(_ input: GetBackendJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBackendJobResponse {
        return try await self.client.execute(operation: "GetBackendJob", path: "/backend/{AppId}/job/{BackendEnvironmentName}/{JobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details for a backend storage resource.
    public func getBackendStorage(_ input: GetBackendStorageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBackendStorageResponse {
        return try await self.client.execute(operation: "GetBackendStorage", path: "/backend/{AppId}/storage/{BackendEnvironmentName}/details", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the challenge token based on the given appId and sessionId.
    public func getToken(_ input: GetTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTokenResponse {
        return try await self.client.execute(operation: "GetToken", path: "/backend/{AppId}/challenge/{SessionId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Imports an existing backend authentication resource.
    public func importBackendAuth(_ input: ImportBackendAuthRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportBackendAuthResponse {
        return try await self.client.execute(operation: "ImportBackendAuth", path: "/backend/{AppId}/auth/{BackendEnvironmentName}/import", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Imports an existing backend storage resource.
    public func importBackendStorage(_ input: ImportBackendStorageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportBackendStorageResponse {
        return try await self.client.execute(operation: "ImportBackendStorage", path: "/backend/{AppId}/storage/{BackendEnvironmentName}/import", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the jobs for the backend of an Amplify app.
    public func listBackendJobs(_ input: ListBackendJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListBackendJobsResponse {
        return try await self.client.execute(operation: "ListBackendJobs", path: "/backend/{AppId}/job/{BackendEnvironmentName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The list of S3 buckets in your account.
    public func listS3Buckets(_ input: ListS3BucketsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListS3BucketsResponse {
        return try await self.client.execute(operation: "ListS3Buckets", path: "/s3Buckets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes all backend environments from your Amplify project.
    public func removeAllBackends(_ input: RemoveAllBackendsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveAllBackendsResponse {
        return try await self.client.execute(operation: "RemoveAllBackends", path: "/backend/{AppId}/remove", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the AWS resources required to access the Amplify Admin UI.
    public func removeBackendConfig(_ input: RemoveBackendConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveBackendConfigResponse {
        return try await self.client.execute(operation: "RemoveBackendConfig", path: "/backend/{AppId}/config/remove", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing backend API resource.
    public func updateBackendAPI(_ input: UpdateBackendAPIRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBackendAPIResponse {
        return try await self.client.execute(operation: "UpdateBackendAPI", path: "/backend/{AppId}/api/{BackendEnvironmentName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing backend authentication resource.
    public func updateBackendAuth(_ input: UpdateBackendAuthRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBackendAuthResponse {
        return try await self.client.execute(operation: "UpdateBackendAuth", path: "/backend/{AppId}/auth/{BackendEnvironmentName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the AWS resources required to access the Amplify Admin UI.
    public func updateBackendConfig(_ input: UpdateBackendConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBackendConfigResponse {
        return try await self.client.execute(operation: "UpdateBackendConfig", path: "/backend/{AppId}/config/update", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a specific job.
    public func updateBackendJob(_ input: UpdateBackendJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBackendJobResponse {
        return try await self.client.execute(operation: "UpdateBackendJob", path: "/backend/{AppId}/job/{BackendEnvironmentName}/{JobId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing backend storage resource.
    public func updateBackendStorage(_ input: UpdateBackendStorageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBackendStorageResponse {
        return try await self.client.execute(operation: "UpdateBackendStorage", path: "/backend/{AppId}/storage/{BackendEnvironmentName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
