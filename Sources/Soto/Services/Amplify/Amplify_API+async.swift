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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

#if compiler(>=5.5)

import SotoCore

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension Amplify {
    // MARK: Async API Calls

    ///  Creates a new Amplify app.
    public func createApp(_ input: CreateAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAppResult {
        return try await self.client.execute(operation: "CreateApp", path: "/apps", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new backend environment for an Amplify app.
    public func createBackendEnvironment(_ input: CreateBackendEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackendEnvironmentResult {
        return try await self.client.execute(operation: "CreateBackendEnvironment", path: "/apps/{appId}/backendenvironments", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new branch for an Amplify app.
    public func createBranch(_ input: CreateBranchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBranchResult {
        return try await self.client.execute(operation: "CreateBranch", path: "/apps/{appId}/branches", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a deployment for a manually deployed Amplify app. Manually deployed apps are not connected to a repository.
    public func createDeployment(_ input: CreateDeploymentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDeploymentResult {
        return try await self.client.execute(operation: "CreateDeployment", path: "/apps/{appId}/branches/{branchName}/deployments", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new domain association for an Amplify app. This action associates a custom domain with the Amplify app
    public func createDomainAssociation(_ input: CreateDomainAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainAssociationResult {
        return try await self.client.execute(operation: "CreateDomainAssociation", path: "/apps/{appId}/domains", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new webhook on an Amplify app.
    public func createWebhook(_ input: CreateWebhookRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWebhookResult {
        return try await self.client.execute(operation: "CreateWebhook", path: "/apps/{appId}/webhooks", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes an existing Amplify app specified by an app ID.
    public func deleteApp(_ input: DeleteAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAppResult {
        return try await self.client.execute(operation: "DeleteApp", path: "/apps/{appId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a backend environment for an Amplify app.
    public func deleteBackendEnvironment(_ input: DeleteBackendEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBackendEnvironmentResult {
        return try await self.client.execute(operation: "DeleteBackendEnvironment", path: "/apps/{appId}/backendenvironments/{environmentName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a branch for an Amplify app.
    public func deleteBranch(_ input: DeleteBranchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBranchResult {
        return try await self.client.execute(operation: "DeleteBranch", path: "/apps/{appId}/branches/{branchName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a domain association for an Amplify app.
    public func deleteDomainAssociation(_ input: DeleteDomainAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainAssociationResult {
        return try await self.client.execute(operation: "DeleteDomainAssociation", path: "/apps/{appId}/domains/{domainName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a job for a branch of an Amplify app.
    public func deleteJob(_ input: DeleteJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteJobResult {
        return try await self.client.execute(operation: "DeleteJob", path: "/apps/{appId}/branches/{branchName}/jobs/{jobId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a webhook.
    public func deleteWebhook(_ input: DeleteWebhookRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWebhookResult {
        return try await self.client.execute(operation: "DeleteWebhook", path: "/webhooks/{webhookId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the website access logs for a specific time range using a presigned URL.
    public func generateAccessLogs(_ input: GenerateAccessLogsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenerateAccessLogsResult {
        return try await self.client.execute(operation: "GenerateAccessLogs", path: "/apps/{appId}/accesslogs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns an existing Amplify app by appID.
    public func getApp(_ input: GetAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAppResult {
        return try await self.client.execute(operation: "GetApp", path: "/apps/{appId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the artifact info that corresponds to an artifact id.
    public func getArtifactUrl(_ input: GetArtifactUrlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetArtifactUrlResult {
        return try await self.client.execute(operation: "GetArtifactUrl", path: "/artifacts/{artifactId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a backend environment for an Amplify app.
    public func getBackendEnvironment(_ input: GetBackendEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBackendEnvironmentResult {
        return try await self.client.execute(operation: "GetBackendEnvironment", path: "/apps/{appId}/backendenvironments/{environmentName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a branch for an Amplify app.
    public func getBranch(_ input: GetBranchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBranchResult {
        return try await self.client.execute(operation: "GetBranch", path: "/apps/{appId}/branches/{branchName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the domain information for an Amplify app.
    public func getDomainAssociation(_ input: GetDomainAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDomainAssociationResult {
        return try await self.client.execute(operation: "GetDomainAssociation", path: "/apps/{appId}/domains/{domainName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a job for a branch of an Amplify app.
    public func getJob(_ input: GetJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetJobResult {
        return try await self.client.execute(operation: "GetJob", path: "/apps/{appId}/branches/{branchName}/jobs/{jobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the webhook information that corresponds to a specified webhook ID.
    public func getWebhook(_ input: GetWebhookRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetWebhookResult {
        return try await self.client.execute(operation: "GetWebhook", path: "/webhooks/{webhookId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of the existing Amplify apps.
    public func listApps(_ input: ListAppsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAppsResult {
        return try await self.client.execute(operation: "ListApps", path: "/apps", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of artifacts for a specified app, branch, and job.
    public func listArtifacts(_ input: ListArtifactsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListArtifactsResult {
        return try await self.client.execute(operation: "ListArtifacts", path: "/apps/{appId}/branches/{branchName}/jobs/{jobId}/artifacts", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Lists the backend environments for an Amplify app.
    public func listBackendEnvironments(_ input: ListBackendEnvironmentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListBackendEnvironmentsResult {
        return try await self.client.execute(operation: "ListBackendEnvironments", path: "/apps/{appId}/backendenvironments", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Lists the branches of an Amplify app.
    public func listBranches(_ input: ListBranchesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListBranchesResult {
        return try await self.client.execute(operation: "ListBranches", path: "/apps/{appId}/branches", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the domain associations for an Amplify app.
    public func listDomainAssociations(_ input: ListDomainAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDomainAssociationsResult {
        return try await self.client.execute(operation: "ListDomainAssociations", path: "/apps/{appId}/domains", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Lists the jobs for a branch of an Amplify app.
    public func listJobs(_ input: ListJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListJobsResult {
        return try await self.client.execute(operation: "ListJobs", path: "/apps/{appId}/branches/{branchName}/jobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of tags for a specified Amazon Resource Name (ARN).
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of webhooks for an Amplify app.
    public func listWebhooks(_ input: ListWebhooksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWebhooksResult {
        return try await self.client.execute(operation: "ListWebhooks", path: "/apps/{appId}/webhooks", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Starts a deployment for a manually deployed app. Manually deployed apps are not connected to a repository.
    public func startDeployment(_ input: StartDeploymentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartDeploymentResult {
        return try await self.client.execute(operation: "StartDeployment", path: "/apps/{appId}/branches/{branchName}/deployments/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Starts a new job for a branch of an Amplify app.
    public func startJob(_ input: StartJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartJobResult {
        return try await self.client.execute(operation: "StartJob", path: "/apps/{appId}/branches/{branchName}/jobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Stops a job that is in progress for a branch of an Amplify app.
    public func stopJob(_ input: StopJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopJobResult {
        return try await self.client.execute(operation: "StopJob", path: "/apps/{appId}/branches/{branchName}/jobs/{jobId}/stop", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Tags the resource with a tag key and value.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Untags a resource with a specified Amazon Resource Name (ARN).
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates an existing Amplify app.
    public func updateApp(_ input: UpdateAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAppResult {
        return try await self.client.execute(operation: "UpdateApp", path: "/apps/{appId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates a branch for an Amplify app.
    public func updateBranch(_ input: UpdateBranchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBranchResult {
        return try await self.client.execute(operation: "UpdateBranch", path: "/apps/{appId}/branches/{branchName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new domain association for an Amplify app.
    public func updateDomainAssociation(_ input: UpdateDomainAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDomainAssociationResult {
        return try await self.client.execute(operation: "UpdateDomainAssociation", path: "/apps/{appId}/domains/{domainName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates a webhook.
    public func updateWebhook(_ input: UpdateWebhookRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateWebhookResult {
        return try await self.client.execute(operation: "UpdateWebhook", path: "/webhooks/{webhookId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5)
