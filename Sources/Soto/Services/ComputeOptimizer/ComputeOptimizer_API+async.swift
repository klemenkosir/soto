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
extension ComputeOptimizer {
    // MARK: Async API Calls

    /// Deletes a recommendation preference, such as enhanced infrastructure metrics. For more information, see Activating enhanced infrastructure metrics in the Compute Optimizer User Guide.
    public func deleteRecommendationPreferences(_ input: DeleteRecommendationPreferencesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRecommendationPreferencesResponse {
        return try await self.client.execute(operation: "DeleteRecommendationPreferences", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes recommendation export jobs created in the last seven days. Use the ExportAutoScalingGroupRecommendations or ExportEC2InstanceRecommendations actions to request an export of your recommendations. Then use the DescribeRecommendationExportJobs action to view your export jobs.
    public func describeRecommendationExportJobs(_ input: DescribeRecommendationExportJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecommendationExportJobsResponse {
        return try await self.client.execute(operation: "DescribeRecommendationExportJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Exports optimization recommendations for Auto Scaling groups. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see Exporting Recommendations in the Compute Optimizer User Guide. You can have only one Auto Scaling group export job in progress per Amazon Web Services Region.
    public func exportAutoScalingGroupRecommendations(_ input: ExportAutoScalingGroupRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportAutoScalingGroupRecommendationsResponse {
        return try await self.client.execute(operation: "ExportAutoScalingGroupRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Exports optimization recommendations for Amazon EBS volumes. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see Exporting Recommendations in the Compute Optimizer User Guide. You can have only one Amazon EBS volume export job in progress per Amazon Web Services Region.
    public func exportEBSVolumeRecommendations(_ input: ExportEBSVolumeRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportEBSVolumeRecommendationsResponse {
        return try await self.client.execute(operation: "ExportEBSVolumeRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Exports optimization recommendations for Amazon EC2 instances. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see Exporting Recommendations in the Compute Optimizer User Guide. You can have only one Amazon EC2 instance export job in progress per Amazon Web Services Region.
    public func exportEC2InstanceRecommendations(_ input: ExportEC2InstanceRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportEC2InstanceRecommendationsResponse {
        return try await self.client.execute(operation: "ExportEC2InstanceRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Exports optimization recommendations for Lambda functions. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see Exporting Recommendations in the Compute Optimizer User Guide. You can have only one Lambda function export job in progress per Amazon Web Services Region.
    public func exportLambdaFunctionRecommendations(_ input: ExportLambdaFunctionRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportLambdaFunctionRecommendationsResponse {
        return try await self.client.execute(operation: "ExportLambdaFunctionRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns Auto Scaling group recommendations. Compute Optimizer generates recommendations for Amazon EC2 Auto Scaling groups that meet a specific set of requirements. For more information, see the Supported resources and requirements in the Compute Optimizer User Guide.
    public func getAutoScalingGroupRecommendations(_ input: GetAutoScalingGroupRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAutoScalingGroupRecommendationsResponse {
        return try await self.client.execute(operation: "GetAutoScalingGroupRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns Amazon Elastic Block Store (Amazon EBS) volume recommendations. Compute Optimizer generates recommendations for Amazon EBS volumes that meet a specific set of requirements. For more information, see the Supported resources and requirements in the Compute Optimizer User Guide.
    public func getEBSVolumeRecommendations(_ input: GetEBSVolumeRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEBSVolumeRecommendationsResponse {
        return try await self.client.execute(operation: "GetEBSVolumeRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns Amazon EC2 instance recommendations. Compute Optimizer generates recommendations for Amazon Elastic Compute Cloud (Amazon EC2) instances that meet a specific set of requirements. For more information, see the Supported resources and requirements in the Compute Optimizer User Guide.
    public func getEC2InstanceRecommendations(_ input: GetEC2InstanceRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEC2InstanceRecommendationsResponse {
        return try await self.client.execute(operation: "GetEC2InstanceRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the projected utilization metrics of Amazon EC2 instance recommendations.  The Cpu and Memory metrics are the only projected utilization metrics returned when you run this action. Additionally, the Memory metric is returned only for resources that have the unified CloudWatch agent installed on them. For more information, see Enabling Memory Utilization with the CloudWatch Agent.
    public func getEC2RecommendationProjectedMetrics(_ input: GetEC2RecommendationProjectedMetricsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEC2RecommendationProjectedMetricsResponse {
        return try await self.client.execute(operation: "GetEC2RecommendationProjectedMetrics", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the recommendation preferences that are in effect for a given resource, such as enhanced infrastructure metrics. Considers all applicable preferences that you might have set at the resource, account, and organization level. When you create a recommendation preference, you can set its status to Active or Inactive. Use this action to view the recommendation preferences that are in effect, or Active.
    public func getEffectiveRecommendationPreferences(_ input: GetEffectiveRecommendationPreferencesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEffectiveRecommendationPreferencesResponse {
        return try await self.client.execute(operation: "GetEffectiveRecommendationPreferences", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the enrollment (opt in) status of an account to the Compute Optimizer service. If the account is the management account of an organization, this action also confirms the enrollment status of member accounts of the organization. Use the GetEnrollmentStatusesForOrganization action to get detailed information about the enrollment status of member accounts of an organization.
    public func getEnrollmentStatus(_ input: GetEnrollmentStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEnrollmentStatusResponse {
        return try await self.client.execute(operation: "GetEnrollmentStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the Compute Optimizer enrollment (opt-in) status of organization member accounts, if your account is an organization management account. To get the enrollment status of standalone accounts, use the GetEnrollmentStatus action.
    public func getEnrollmentStatusesForOrganization(_ input: GetEnrollmentStatusesForOrganizationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEnrollmentStatusesForOrganizationResponse {
        return try await self.client.execute(operation: "GetEnrollmentStatusesForOrganization", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns Lambda function recommendations. Compute Optimizer generates recommendations for functions that meet a specific set of requirements. For more information, see the Supported resources and requirements in the Compute Optimizer User Guide.
    public func getLambdaFunctionRecommendations(_ input: GetLambdaFunctionRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLambdaFunctionRecommendationsResponse {
        return try await self.client.execute(operation: "GetLambdaFunctionRecommendations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns existing recommendation preferences, such as enhanced infrastructure metrics. Use the scope parameter to specify which preferences to return. You can specify to return preferences for an organization, a specific account ID, or a specific EC2 instance or Auto Scaling group Amazon Resource Name (ARN). For more information, see Activating enhanced infrastructure metrics in the Compute Optimizer User Guide.
    public func getRecommendationPreferences(_ input: GetRecommendationPreferencesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRecommendationPreferencesResponse {
        return try await self.client.execute(operation: "GetRecommendationPreferences", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the optimization findings for an account. It returns the number of:   Amazon EC2 instances in an account that are Underprovisioned, Overprovisioned, or Optimized.   Auto Scaling groups in an account that are NotOptimized, or Optimized.   Amazon EBS volumes in an account that are NotOptimized, or Optimized.   Lambda functions in an account that are NotOptimized, or Optimized.
    public func getRecommendationSummaries(_ input: GetRecommendationSummariesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRecommendationSummariesResponse {
        return try await self.client.execute(operation: "GetRecommendationSummaries", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new recommendation preference or updates an existing recommendation preference, such as enhanced infrastructure metrics. For more information, see Activating enhanced infrastructure metrics in the Compute Optimizer User Guide.
    public func putRecommendationPreferences(_ input: PutRecommendationPreferencesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutRecommendationPreferencesResponse {
        return try await self.client.execute(operation: "PutRecommendationPreferences", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the enrollment (opt in and opt out) status of an account to the Compute Optimizer service. If the account is a management account of an organization, this action can also be used to enroll member accounts of the organization. You must have the appropriate permissions to opt in to Compute Optimizer, to view its recommendations, and to opt out. For more information, see Controlling access with Amazon Web Services Identity and Access Management in the Compute Optimizer User Guide. When you opt in, Compute Optimizer automatically creates a service-linked role in your account to access its data. For more information, see Using Service-Linked Roles for Compute Optimizer in the Compute Optimizer User Guide.
    public func updateEnrollmentStatus(_ input: UpdateEnrollmentStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEnrollmentStatusResponse {
        return try await self.client.execute(operation: "UpdateEnrollmentStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
