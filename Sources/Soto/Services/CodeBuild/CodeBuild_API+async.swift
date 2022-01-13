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
extension CodeBuild {
    // MARK: Async API Calls

    /// Deletes one or more builds.
    public func batchDeleteBuilds(_ input: BatchDeleteBuildsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeleteBuildsOutput {
        return try await self.client.execute(operation: "BatchDeleteBuilds", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about one or more batch builds.
    public func batchGetBuildBatches(_ input: BatchGetBuildBatchesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetBuildBatchesOutput {
        return try await self.client.execute(operation: "BatchGetBuildBatches", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about one or more builds.
    public func batchGetBuilds(_ input: BatchGetBuildsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetBuildsOutput {
        return try await self.client.execute(operation: "BatchGetBuilds", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about one or more build projects.
    public func batchGetProjects(_ input: BatchGetProjectsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetProjectsOutput {
        return try await self.client.execute(operation: "BatchGetProjects", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns an array of report groups.
    public func batchGetReportGroups(_ input: BatchGetReportGroupsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetReportGroupsOutput {
        return try await self.client.execute(operation: "BatchGetReportGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns an array of reports.
    public func batchGetReports(_ input: BatchGetReportsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetReportsOutput {
        return try await self.client.execute(operation: "BatchGetReports", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a build project.
    public func createProject(_ input: CreateProjectInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProjectOutput {
        return try await self.client.execute(operation: "CreateProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a report group. A report group contains a collection of reports.
    public func createReportGroup(_ input: CreateReportGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateReportGroupOutput {
        return try await self.client.execute(operation: "CreateReportGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// For an existing CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, enables CodeBuild to start rebuilding the source code every time a code change is pushed to the repository.  If you enable webhooks for an CodeBuild project, and the project is used as a build step in CodePipeline, then two identical builds are created for each commit. One build is triggered through webhooks, and one through CodePipeline. Because billing is on a per-build basis, you are billed for both builds. Therefore, if you are using CodePipeline, we recommend that you disable webhooks in CodeBuild. In the CodeBuild console, clear the Webhook box. For more information, see step 5 in Change a Build Project's Settings.
    public func createWebhook(_ input: CreateWebhookInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWebhookOutput {
        return try await self.client.execute(operation: "CreateWebhook", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a batch build.
    public func deleteBuildBatch(_ input: DeleteBuildBatchInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBuildBatchOutput {
        return try await self.client.execute(operation: "DeleteBuildBatch", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a build project. When you delete a project, its builds are not deleted.
    public func deleteProject(_ input: DeleteProjectInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProjectOutput {
        return try await self.client.execute(operation: "DeleteProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a report.
    public func deleteReport(_ input: DeleteReportInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReportOutput {
        return try await self.client.execute(operation: "DeleteReport", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a report group. Before you delete a report group, you must delete its reports.
    public func deleteReportGroup(_ input: DeleteReportGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReportGroupOutput {
        return try await self.client.execute(operation: "DeleteReportGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a resource policy that is identified by its resource ARN.
    public func deleteResourcePolicy(_ input: DeleteResourcePolicyInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteResourcePolicyOutput {
        return try await self.client.execute(operation: "DeleteResourcePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials.
    public func deleteSourceCredentials(_ input: DeleteSourceCredentialsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSourceCredentialsOutput {
        return try await self.client.execute(operation: "DeleteSourceCredentials", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// For an existing CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, stops CodeBuild from rebuilding the source code every time a code change is pushed to the repository.
    public func deleteWebhook(_ input: DeleteWebhookInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWebhookOutput {
        return try await self.client.execute(operation: "DeleteWebhook", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves one or more code coverage reports.
    public func describeCodeCoverages(_ input: DescribeCodeCoveragesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodeCoveragesOutput {
        return try await self.client.execute(operation: "DescribeCodeCoverages", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of details about test cases for a report.
    public func describeTestCases(_ input: DescribeTestCasesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTestCasesOutput {
        return try await self.client.execute(operation: "DescribeTestCases", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Analyzes and accumulates test report values for the specified test reports.
    public func getReportGroupTrend(_ input: GetReportGroupTrendInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetReportGroupTrendOutput {
        return try await self.client.execute(operation: "GetReportGroupTrend", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets a resource policy that is identified by its resource ARN.
    public func getResourcePolicy(_ input: GetResourcePolicyInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResourcePolicyOutput {
        return try await self.client.execute(operation: "GetResourcePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Imports the source repository credentials for an CodeBuild project that has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository.
    public func importSourceCredentials(_ input: ImportSourceCredentialsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportSourceCredentialsOutput {
        return try await self.client.execute(operation: "ImportSourceCredentials", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Resets the cache for a project.
    public func invalidateProjectCache(_ input: InvalidateProjectCacheInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InvalidateProjectCacheOutput {
        return try await self.client.execute(operation: "InvalidateProjectCache", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the identifiers of your build batches in the current region.
    public func listBuildBatches(_ input: ListBuildBatchesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListBuildBatchesOutput {
        return try await self.client.execute(operation: "ListBuildBatches", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the identifiers of the build batches for a specific project.
    public func listBuildBatchesForProject(_ input: ListBuildBatchesForProjectInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListBuildBatchesForProjectOutput {
        return try await self.client.execute(operation: "ListBuildBatchesForProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of build IDs, with each build ID representing a single build.
    public func listBuilds(_ input: ListBuildsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListBuildsOutput {
        return try await self.client.execute(operation: "ListBuilds", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of build identifiers for the specified build project, with each build identifier representing a single build.
    public func listBuildsForProject(_ input: ListBuildsForProjectInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListBuildsForProjectOutput {
        return try await self.client.execute(operation: "ListBuildsForProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about Docker images that are managed by CodeBuild.
    public func listCuratedEnvironmentImages(_ input: ListCuratedEnvironmentImagesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCuratedEnvironmentImagesOutput {
        return try await self.client.execute(operation: "ListCuratedEnvironmentImages", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of build project names, with each build project name representing a single build project.
    public func listProjects(_ input: ListProjectsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListProjectsOutput {
        return try await self.client.execute(operation: "ListProjects", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets a list ARNs for the report groups in the current Amazon Web Services account.
    public func listReportGroups(_ input: ListReportGroupsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListReportGroupsOutput {
        return try await self.client.execute(operation: "ListReportGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of ARNs for the reports in the current Amazon Web Services account.
    public func listReports(_ input: ListReportsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListReportsOutput {
        return try await self.client.execute(operation: "ListReports", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of ARNs for the reports that belong to a ReportGroup.
    public func listReportsForReportGroup(_ input: ListReportsForReportGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListReportsForReportGroupOutput {
        return try await self.client.execute(operation: "ListReportsForReportGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets a list of projects that are shared with other Amazon Web Services accounts or users.
    public func listSharedProjects(_ input: ListSharedProjectsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSharedProjectsOutput {
        return try await self.client.execute(operation: "ListSharedProjects", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets a list of report groups that are shared with other Amazon Web Services accounts or users.
    public func listSharedReportGroups(_ input: ListSharedReportGroupsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSharedReportGroupsOutput {
        return try await self.client.execute(operation: "ListSharedReportGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of SourceCredentialsInfo objects.
    public func listSourceCredentials(_ input: ListSourceCredentialsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSourceCredentialsOutput {
        return try await self.client.execute(operation: "ListSourceCredentials", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Stores a resource policy for the ARN of a Project or ReportGroup object.
    public func putResourcePolicy(_ input: PutResourcePolicyInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutResourcePolicyOutput {
        return try await self.client.execute(operation: "PutResourcePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Restarts a build.
    public func retryBuild(_ input: RetryBuildInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RetryBuildOutput {
        return try await self.client.execute(operation: "RetryBuild", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Restarts a failed batch build. Only batch builds that have failed can be retried.
    public func retryBuildBatch(_ input: RetryBuildBatchInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RetryBuildBatchOutput {
        return try await self.client.execute(operation: "RetryBuildBatch", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts running a build.
    public func startBuild(_ input: StartBuildInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartBuildOutput {
        return try await self.client.execute(operation: "StartBuild", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a batch build for a project.
    public func startBuildBatch(_ input: StartBuildBatchInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartBuildBatchOutput {
        return try await self.client.execute(operation: "StartBuildBatch", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attempts to stop running a build.
    public func stopBuild(_ input: StopBuildInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopBuildOutput {
        return try await self.client.execute(operation: "StopBuild", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops a running batch build.
    public func stopBuildBatch(_ input: StopBuildBatchInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopBuildBatchOutput {
        return try await self.client.execute(operation: "StopBuildBatch", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the settings of a build project.
    public func updateProject(_ input: UpdateProjectInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateProjectOutput {
        return try await self.client.execute(operation: "UpdateProject", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the public visibility for a project. The project's build results, logs, and artifacts are available to the general public.  For more information, see Public build projects in the CodeBuild User Guide.  The following should be kept in mind when making your projects public:   All of a project's build results, logs, and artifacts, including builds that were run when the project was private, are available to the general public.   All build logs and artifacts are available to the public. Environment variables, source code, and other sensitive information may have been output to the build logs and artifacts. You must be careful about what information is output to the build logs. Some best practice are:   Do not store sensitive values, especially Amazon Web Services access key IDs and secret access keys, in environment variables. We recommend that you use an Amazon EC2 Systems Manager Parameter Store or Secrets Manager to store sensitive values.   Follow Best practices for using webhooks in the CodeBuild User Guide to limit which entities can trigger a build, and do not store the buildspec in the project itself, to ensure that your webhooks are as secure as possible.     A malicious user can use public builds to distribute malicious artifacts. We recommend that you review all pull requests to verify that the pull request is a legitimate change. We also recommend that you validate any artifacts with their checksums to make sure that the correct artifacts are being downloaded.
    public func updateProjectVisibility(_ input: UpdateProjectVisibilityInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateProjectVisibilityOutput {
        return try await self.client.execute(operation: "UpdateProjectVisibility", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates a report group.
    public func updateReportGroup(_ input: UpdateReportGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateReportGroupOutput {
        return try await self.client.execute(operation: "UpdateReportGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates the webhook associated with an CodeBuild build project.   If you use Bitbucket for your repository, rotateSecret is ignored.
    public func updateWebhook(_ input: UpdateWebhookInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateWebhookOutput {
        return try await self.client.execute(operation: "UpdateWebhook", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
