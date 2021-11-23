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
extension MigrationHubStrategy {
    // MARK: Async API Calls

    ///  Retrieves details about an application component.
    public func getApplicationComponentDetails(_ input: GetApplicationComponentDetailsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetApplicationComponentDetailsResponse {
        return try await self.client.execute(operation: "GetApplicationComponentDetails", path: "/get-applicationcomponent-details/{applicationComponentId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves a list of all the recommended strategies and tools for an application component running on a server.
    public func getApplicationComponentStrategies(_ input: GetApplicationComponentStrategiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetApplicationComponentStrategiesResponse {
        return try await self.client.execute(operation: "GetApplicationComponentStrategies", path: "/get-applicationcomponent-strategies/{applicationComponentId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves the status of an on-going assessment.
    public func getAssessment(_ input: GetAssessmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAssessmentResponse {
        return try await self.client.execute(operation: "GetAssessment", path: "/get-assessment/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves the details about a specific import task.
    public func getImportFileTask(_ input: GetImportFileTaskRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetImportFileTaskResponse {
        return try await self.client.execute(operation: "GetImportFileTask", path: "/get-import-file-task/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves your migration and modernization preferences.
    public func getPortfolioPreferences(_ input: GetPortfolioPreferencesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPortfolioPreferencesResponse {
        return try await self.client.execute(operation: "GetPortfolioPreferences", path: "/get-portfolio-preferences", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves overall summary including the number of servers to rehost and the overall number of anti-patterns.
    public func getPortfolioSummary(_ input: GetPortfolioSummaryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPortfolioSummaryResponse {
        return try await self.client.execute(operation: "GetPortfolioSummary", path: "/get-portfolio-summary", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves detailed information about the specified recommendation report.
    public func getRecommendationReportDetails(_ input: GetRecommendationReportDetailsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRecommendationReportDetailsResponse {
        return try await self.client.execute(operation: "GetRecommendationReportDetails", path: "/get-recommendation-report-details/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves detailed information about a specified server.
    public func getServerDetails(_ input: GetServerDetailsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetServerDetailsResponse {
        return try await self.client.execute(operation: "GetServerDetails", path: "/get-server-details/{serverId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves recommended strategies and tools for the specified server.
    public func getServerStrategies(_ input: GetServerStrategiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetServerStrategiesResponse {
        return try await self.client.execute(operation: "GetServerStrategies", path: "/get-server-strategies/{serverId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves a list of all the application components (processes).
    public func listApplicationComponents(_ input: ListApplicationComponentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListApplicationComponentsResponse {
        return try await self.client.execute(operation: "ListApplicationComponents", path: "/list-applicationcomponents", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves a list of all the installed collectors.
    public func listCollectors(_ input: ListCollectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCollectorsResponse {
        return try await self.client.execute(operation: "ListCollectors", path: "/list-collectors", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves a list of all the imports performed.
    public func listImportFileTask(_ input: ListImportFileTaskRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListImportFileTaskResponse {
        return try await self.client.execute(operation: "ListImportFileTask", path: "/list-import-file-task", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of all the servers.
    public func listServers(_ input: ListServersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListServersResponse {
        return try await self.client.execute(operation: "ListServers", path: "/list-servers", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Saves the specified migration and modernization preferences.
    public func putPortfolioPreferences(_ input: PutPortfolioPreferencesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutPortfolioPreferencesResponse {
        return try await self.client.execute(operation: "PutPortfolioPreferences", path: "/put-portfolio-preferences", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Starts the assessment of an on-premises environment.
    public func startAssessment(_ input: StartAssessmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartAssessmentResponse {
        return try await self.client.execute(operation: "StartAssessment", path: "/start-assessment", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Starts a file import.
    public func startImportFileTask(_ input: StartImportFileTaskRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartImportFileTaskResponse {
        return try await self.client.execute(operation: "StartImportFileTask", path: "/start-import-file-task", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Starts generating a recommendation report.
    public func startRecommendationReportGeneration(_ input: StartRecommendationReportGenerationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartRecommendationReportGenerationResponse {
        return try await self.client.execute(operation: "StartRecommendationReportGeneration", path: "/start-recommendation-report-generation", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Stops the assessment of an on-premises environment.
    public func stopAssessment(_ input: StopAssessmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopAssessmentResponse {
        return try await self.client.execute(operation: "StopAssessment", path: "/stop-assessment", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates the configuration of an application component.
    public func updateApplicationComponentConfig(_ input: UpdateApplicationComponentConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateApplicationComponentConfigResponse {
        return try await self.client.execute(operation: "UpdateApplicationComponentConfig", path: "/update-applicationcomponent-config/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates the configuration of the specified server.
    public func updateServerConfig(_ input: UpdateServerConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateServerConfigResponse {
        return try await self.client.execute(operation: "UpdateServerConfig", path: "/update-server-config/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
