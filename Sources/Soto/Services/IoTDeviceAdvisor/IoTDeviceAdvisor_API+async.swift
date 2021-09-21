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
extension IoTDeviceAdvisor {
    // MARK: Async API Calls

    /// Creates a Device Advisor test suite.
    public func createSuiteDefinition(_ input: CreateSuiteDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSuiteDefinitionResponse {
        return try await self.client.execute(operation: "CreateSuiteDefinition", path: "/suiteDefinitions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Device Advisor test suite.
    public func deleteSuiteDefinition(_ input: DeleteSuiteDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSuiteDefinitionResponse {
        return try await self.client.execute(operation: "DeleteSuiteDefinition", path: "/suiteDefinitions/{suiteDefinitionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a Device Advisor test suite.
    public func getSuiteDefinition(_ input: GetSuiteDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSuiteDefinitionResponse {
        return try await self.client.execute(operation: "GetSuiteDefinition", path: "/suiteDefinitions/{suiteDefinitionId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a Device Advisor test suite run.
    public func getSuiteRun(_ input: GetSuiteRunRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSuiteRunResponse {
        return try await self.client.execute(operation: "GetSuiteRun", path: "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a report download link for a successful Device Advisor qualifying test suite run.
    public func getSuiteRunReport(_ input: GetSuiteRunReportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSuiteRunReportResponse {
        return try await self.client.execute(operation: "GetSuiteRunReport", path: "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}/report", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the Device Advisor test suites you have created.
    public func listSuiteDefinitions(_ input: ListSuiteDefinitionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSuiteDefinitionsResponse {
        return try await self.client.execute(operation: "ListSuiteDefinitions", path: "/suiteDefinitions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the runs of the specified Device Advisor test suite. You can list all runs of the test suite, or the runs of a specific version of the test suite.
    public func listSuiteRuns(_ input: ListSuiteRunsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSuiteRunsResponse {
        return try await self.client.execute(operation: "ListSuiteRuns", path: "/suiteRuns", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags attached to an IoT Device Advisor resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a Device Advisor test suite run.
    public func startSuiteRun(_ input: StartSuiteRunRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartSuiteRunResponse {
        return try await self.client.execute(operation: "StartSuiteRun", path: "/suiteDefinitions/{suiteDefinitionId}/suiteRuns", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops a Device Advisor test suite run that is currently running.
    public func stopSuiteRun(_ input: StopSuiteRunRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopSuiteRunResponse {
        return try await self.client.execute(operation: "StopSuiteRun", path: "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds to and modifies existing tags of an IoT Device Advisor resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from an IoT Device Advisor resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a Device Advisor test suite.
    public func updateSuiteDefinition(_ input: UpdateSuiteDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSuiteDefinitionResponse {
        return try await self.client.execute(operation: "UpdateSuiteDefinition", path: "/suiteDefinitions/{suiteDefinitionId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5)
