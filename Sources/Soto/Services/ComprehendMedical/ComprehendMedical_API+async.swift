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
extension ComprehendMedical {
    // MARK: Async API Calls

    /// Gets the properties associated with a medical entities detection job. Use this operation to get the status of a detection job.
    public func describeEntitiesDetectionV2Job(_ input: DescribeEntitiesDetectionV2JobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEntitiesDetectionV2JobResponse {
        return try await self.client.execute(operation: "DescribeEntitiesDetectionV2Job", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the properties associated with an InferICD10CM job. Use this operation to get the status of an inference job.
    public func describeICD10CMInferenceJob(_ input: DescribeICD10CMInferenceJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeICD10CMInferenceJobResponse {
        return try await self.client.execute(operation: "DescribeICD10CMInferenceJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the properties associated with a protected health information (PHI) detection job. Use this operation to get the status of a detection job.
    public func describePHIDetectionJob(_ input: DescribePHIDetectionJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePHIDetectionJobResponse {
        return try await self.client.execute(operation: "DescribePHIDetectionJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the properties associated with an InferRxNorm job. Use this operation to get the status of an inference job.
    public func describeRxNormInferenceJob(_ input: DescribeRxNormInferenceJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRxNormInferenceJobResponse {
        return try await self.client.execute(operation: "DescribeRxNormInferenceJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets the properties associated with an InferSNOMEDCT job. Use this operation to get the status of an inference job.
    public func describeSNOMEDCTInferenceJob(_ input: DescribeSNOMEDCTInferenceJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSNOMEDCTInferenceJobResponse {
        return try await self.client.execute(operation: "DescribeSNOMEDCTInferenceJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The DetectEntities operation is deprecated. You should use the DetectEntitiesV2 operation instead. Inspects the clinical text for a variety of medical entities and returns specific information about them such as entity category, location, and confidence score on that information .
    @available(*, deprecated, message: "This operation is deprecated, use DetectEntitiesV2 instead.")
    public func detectEntities(_ input: DetectEntitiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectEntitiesResponse {
        return try await self.client.execute(operation: "DetectEntities", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Inspects the clinical text for a variety of medical entities and returns specific information about them such as entity category, location, and confidence score on that information. Amazon Comprehend Medical only detects medical entities in English language texts. The DetectEntitiesV2 operation replaces the DetectEntities operation. This new action uses a different model for determining the entities in your medical text and changes the way that some entities are returned in the output. You should use the DetectEntitiesV2 operation in all new applications. The DetectEntitiesV2 operation returns the Acuity and Direction entities as attributes instead of types.
    public func detectEntitiesV2(_ input: DetectEntitiesV2Request, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectEntitiesV2Response {
        return try await self.client.execute(operation: "DetectEntitiesV2", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Inspects the clinical text for protected health information (PHI) entities and returns the entity category, location, and confidence score for each entity. Amazon Comprehend Medical only detects entities in English language texts.
    public func detectPHI(_ input: DetectPHIRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectPHIResponse {
        return try await self.client.execute(operation: "DetectPHI", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// InferICD10CM detects medical conditions as entities listed in a patient record and links those entities to normalized concept identifiers in the ICD-10-CM knowledge base from the Centers for Disease Control. Amazon Comprehend Medical only detects medical entities in English language texts.
    public func inferICD10CM(_ input: InferICD10CMRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InferICD10CMResponse {
        return try await self.client.execute(operation: "InferICD10CM", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// InferRxNorm detects medications as entities listed in a patient record and links to the normalized concept identifiers in the RxNorm database from the National Library of Medicine. Amazon Comprehend Medical only detects medical entities in English language texts.
    public func inferRxNorm(_ input: InferRxNormRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InferRxNormResponse {
        return try await self.client.execute(operation: "InferRxNorm", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  InferSNOMEDCT detects possible medical concepts as entities and links them to codes from the Systematized Nomenclature of Medicine, Clinical Terms (SNOMED-CT) ontology
    public func inferSNOMEDCT(_ input: InferSNOMEDCTRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InferSNOMEDCTResponse {
        return try await self.client.execute(operation: "InferSNOMEDCT", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of medical entity detection jobs that you have submitted.
    public func listEntitiesDetectionV2Jobs(_ input: ListEntitiesDetectionV2JobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEntitiesDetectionV2JobsResponse {
        return try await self.client.execute(operation: "ListEntitiesDetectionV2Jobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of InferICD10CM jobs that you have submitted.
    public func listICD10CMInferenceJobs(_ input: ListICD10CMInferenceJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListICD10CMInferenceJobsResponse {
        return try await self.client.execute(operation: "ListICD10CMInferenceJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of protected health information (PHI) detection jobs that you have submitted.
    public func listPHIDetectionJobs(_ input: ListPHIDetectionJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPHIDetectionJobsResponse {
        return try await self.client.execute(operation: "ListPHIDetectionJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of InferRxNorm jobs that you have submitted.
    public func listRxNormInferenceJobs(_ input: ListRxNormInferenceJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRxNormInferenceJobsResponse {
        return try await self.client.execute(operation: "ListRxNormInferenceJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets a list of InferSNOMEDCT jobs a user has submitted.
    public func listSNOMEDCTInferenceJobs(_ input: ListSNOMEDCTInferenceJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSNOMEDCTInferenceJobsResponse {
        return try await self.client.execute(operation: "ListSNOMEDCTInferenceJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an asynchronous medical entity detection job for a collection of documents. Use the DescribeEntitiesDetectionV2Job operation to track the status of a job.
    public func startEntitiesDetectionV2Job(_ input: StartEntitiesDetectionV2JobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartEntitiesDetectionV2JobResponse {
        return try await self.client.execute(operation: "StartEntitiesDetectionV2Job", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an asynchronous job to detect medical conditions and link them to the ICD-10-CM ontology. Use the DescribeICD10CMInferenceJob operation to track the status of a job.
    public func startICD10CMInferenceJob(_ input: StartICD10CMInferenceJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartICD10CMInferenceJobResponse {
        return try await self.client.execute(operation: "StartICD10CMInferenceJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an asynchronous job to detect protected health information (PHI). Use the DescribePHIDetectionJob operation to track the status of a job.
    public func startPHIDetectionJob(_ input: StartPHIDetectionJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartPHIDetectionJobResponse {
        return try await self.client.execute(operation: "StartPHIDetectionJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an asynchronous job to detect medication entities and link them to the RxNorm ontology. Use the DescribeRxNormInferenceJob operation to track the status of a job.
    public func startRxNormInferenceJob(_ input: StartRxNormInferenceJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartRxNormInferenceJobResponse {
        return try await self.client.execute(operation: "StartRxNormInferenceJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Starts an asynchronous job to detect medical concepts and link them to the SNOMED-CT ontology. Use the DescribeSNOMEDCTInferenceJob operation to track the status of a job.
    public func startSNOMEDCTInferenceJob(_ input: StartSNOMEDCTInferenceJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartSNOMEDCTInferenceJobResponse {
        return try await self.client.execute(operation: "StartSNOMEDCTInferenceJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops a medical entities detection job in progress.
    public func stopEntitiesDetectionV2Job(_ input: StopEntitiesDetectionV2JobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopEntitiesDetectionV2JobResponse {
        return try await self.client.execute(operation: "StopEntitiesDetectionV2Job", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops an InferICD10CM inference job in progress.
    public func stopICD10CMInferenceJob(_ input: StopICD10CMInferenceJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopICD10CMInferenceJobResponse {
        return try await self.client.execute(operation: "StopICD10CMInferenceJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops a protected health information (PHI) detection job in progress.
    public func stopPHIDetectionJob(_ input: StopPHIDetectionJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopPHIDetectionJobResponse {
        return try await self.client.execute(operation: "StopPHIDetectionJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops an InferRxNorm inference job in progress.
    public func stopRxNormInferenceJob(_ input: StopRxNormInferenceJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopRxNormInferenceJobResponse {
        return try await self.client.execute(operation: "StopRxNormInferenceJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Stops an InferSNOMEDCT inference job in progress.
    public func stopSNOMEDCTInferenceJob(_ input: StopSNOMEDCTInferenceJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopSNOMEDCTInferenceJobResponse {
        return try await self.client.execute(operation: "StopSNOMEDCTInferenceJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
