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
extension ApplicationInsights {
    // MARK: Async API Calls

    /// Adds an application that is created from a resource group.
    public func createApplication(_ input: CreateApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApplicationResponse {
        return try await self.client.execute(operation: "CreateApplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a custom component by grouping similar standalone instances to monitor.
    public func createComponent(_ input: CreateComponentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateComponentResponse {
        return try await self.client.execute(operation: "CreateComponent", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds an log pattern to a LogPatternSet.
    public func createLogPattern(_ input: CreateLogPatternRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLogPatternResponse {
        return try await self.client.execute(operation: "CreateLogPattern", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified application from monitoring. Does not delete the application.
    public func deleteApplication(_ input: DeleteApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApplicationResponse {
        return try await self.client.execute(operation: "DeleteApplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Ungroups a custom component. When you ungroup custom components, all applicable monitors that are set up for the component are removed and the instances revert to their standalone status.
    public func deleteComponent(_ input: DeleteComponentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteComponentResponse {
        return try await self.client.execute(operation: "DeleteComponent", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified log pattern from a LogPatternSet.
    public func deleteLogPattern(_ input: DeleteLogPatternRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLogPatternResponse {
        return try await self.client.execute(operation: "DeleteLogPattern", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the application.
    public func describeApplication(_ input: DescribeApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationResponse {
        return try await self.client.execute(operation: "DescribeApplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a component and lists the resources that are grouped together in a component.
    public func describeComponent(_ input: DescribeComponentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComponentResponse {
        return try await self.client.execute(operation: "DescribeComponent", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the monitoring configuration of the component.
    public func describeComponentConfiguration(_ input: DescribeComponentConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComponentConfigurationResponse {
        return try await self.client.execute(operation: "DescribeComponentConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the recommended monitoring configuration of the component.
    public func describeComponentConfigurationRecommendation(_ input: DescribeComponentConfigurationRecommendationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComponentConfigurationRecommendationResponse {
        return try await self.client.execute(operation: "DescribeComponentConfigurationRecommendation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describe a specific log pattern from a LogPatternSet.
    public func describeLogPattern(_ input: DescribeLogPatternRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogPatternResponse {
        return try await self.client.execute(operation: "DescribeLogPattern", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an anomaly or error with the application.
    public func describeObservation(_ input: DescribeObservationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeObservationResponse {
        return try await self.client.execute(operation: "DescribeObservation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an application problem.
    public func describeProblem(_ input: DescribeProblemRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProblemResponse {
        return try await self.client.execute(operation: "DescribeProblem", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the anomalies or errors associated with the problem.
    public func describeProblemObservations(_ input: DescribeProblemObservationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProblemObservationsResponse {
        return try await self.client.execute(operation: "DescribeProblemObservations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the IDs of the applications that you are monitoring.
    public func listApplications(_ input: ListApplicationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListApplicationsResponse {
        return try await self.client.execute(operation: "ListApplications", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the auto-grouped, standalone, and custom components of the application.
    public func listComponents(_ input: ListComponentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListComponentsResponse {
        return try await self.client.execute(operation: "ListComponents", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Lists the INFO, WARN, and ERROR events for periodic configuration updates performed by Application Insights. Examples of events represented are:    INFO: creating a new alarm or updating an alarm threshold.   WARN: alarm not created due to insufficient data points used to predict thresholds.   ERROR: alarm not created due to permission errors or exceeding quotas.
    public func listConfigurationHistory(_ input: ListConfigurationHistoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListConfigurationHistoryResponse {
        return try await self.client.execute(operation: "ListConfigurationHistory", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the log pattern sets in the specific application.
    public func listLogPatternSets(_ input: ListLogPatternSetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLogPatternSetsResponse {
        return try await self.client.execute(operation: "ListLogPatternSets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the log patterns in the specific log LogPatternSet.
    public func listLogPatterns(_ input: ListLogPatternsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLogPatternsResponse {
        return try await self.client.execute(operation: "ListLogPatterns", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the problems with your application.
    public func listProblems(_ input: ListProblemsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListProblemsResponse {
        return try await self.client.execute(operation: "ListProblems", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieve a list of the tags (keys and values) that are associated with a specified application. A tag is a label that you optionally define and associate with an application. Each tag consists of a required tag key and an optional associated tag value. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Add one or more tags (keys and values) to a specified application. A tag is a label that you optionally define and associate with an application. Tags can help you categorize and manage application in different ways, such as by purpose, owner, environment, or other criteria.  Each tag consists of a required tag key and an associated tag value, both of which you define. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Remove one or more tags (keys and values) from a specified application.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the application.
    public func updateApplication(_ input: UpdateApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateApplicationResponse {
        return try await self.client.execute(operation: "UpdateApplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the custom component name and/or the list of resources that make up the component.
    public func updateComponent(_ input: UpdateComponentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateComponentResponse {
        return try await self.client.execute(operation: "UpdateComponent", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the monitoring configurations for the component. The configuration input parameter is an escaped JSON of the configuration and should match the schema of what is returned by DescribeComponentConfigurationRecommendation.
    public func updateComponentConfiguration(_ input: UpdateComponentConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateComponentConfigurationResponse {
        return try await self.client.execute(operation: "UpdateComponentConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a log pattern to a LogPatternSet.
    public func updateLogPattern(_ input: UpdateLogPatternRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLogPatternResponse {
        return try await self.client.execute(operation: "UpdateLogPattern", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
