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
extension SSMIncidents {
    // MARK: Async API Calls

    /// A replication set replicates and encrypts your data to the provided Regions with the provided KMS key.
    public func createReplicationSet(_ input: CreateReplicationSetInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateReplicationSetOutput {
        return try await self.client.execute(operation: "CreateReplicationSet", path: "/createReplicationSet", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a response plan that automates the initial response to incidents. A response plan engages contacts, starts chat channel collaboration, and initiates runbooks at the beginning of an incident.
    public func createResponsePlan(_ input: CreateResponsePlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateResponsePlanOutput {
        return try await self.client.execute(operation: "CreateResponsePlan", path: "/createResponsePlan", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a custom timeline event on the incident details page of an incident record. Timeline events are automatically created by Incident Manager, marking key moment during an incident. You can create custom timeline events to mark important events that are automatically detected by Incident Manager.
    public func createTimelineEvent(_ input: CreateTimelineEventInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTimelineEventOutput {
        return try await self.client.execute(operation: "CreateTimelineEvent", path: "/createTimelineEvent", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete an incident record from Incident Manager.
    public func deleteIncidentRecord(_ input: DeleteIncidentRecordInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIncidentRecordOutput {
        return try await self.client.execute(operation: "DeleteIncidentRecord", path: "/deleteIncidentRecord", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes all Regions in your replication set. Deleting the replication set deletes all Incident Manager data.
    public func deleteReplicationSet(_ input: DeleteReplicationSetInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReplicationSetOutput {
        return try await self.client.execute(operation: "DeleteReplicationSet", path: "/deleteReplicationSet", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the resource policy that Resource Access Manager uses to share your Incident Manager resource.
    public func deleteResourcePolicy(_ input: DeleteResourcePolicyInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteResourcePolicyOutput {
        return try await self.client.execute(operation: "DeleteResourcePolicy", path: "/deleteResourcePolicy", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified response plan. Deleting a response plan stops all linked CloudWatch alarms and EventBridge events from creating an incident with this response plan.
    public func deleteResponsePlan(_ input: DeleteResponsePlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteResponsePlanOutput {
        return try await self.client.execute(operation: "DeleteResponsePlan", path: "/deleteResponsePlan", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a timeline event from an incident.
    public func deleteTimelineEvent(_ input: DeleteTimelineEventInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTimelineEventOutput {
        return try await self.client.execute(operation: "DeleteTimelineEvent", path: "/deleteTimelineEvent", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the details for the specified incident record.
    public func getIncidentRecord(_ input: GetIncidentRecordInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetIncidentRecordOutput {
        return try await self.client.execute(operation: "GetIncidentRecord", path: "/getIncidentRecord", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieve your Incident Manager replication set.
    public func getReplicationSet(_ input: GetReplicationSetInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetReplicationSetOutput {
        return try await self.client.execute(operation: "GetReplicationSet", path: "/getReplicationSet", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the resource policies attached to the specified response plan.
    public func getResourcePolicies(_ input: GetResourcePoliciesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResourcePoliciesOutput {
        return try await self.client.execute(operation: "GetResourcePolicies", path: "/getResourcePolicies", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the details of the specified response plan.
    public func getResponsePlan(_ input: GetResponsePlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResponsePlanOutput {
        return try await self.client.execute(operation: "GetResponsePlan", path: "/getResponsePlan", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a timeline event based on its ID and incident record.
    public func getTimelineEvent(_ input: GetTimelineEventInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTimelineEventOutput {
        return try await self.client.execute(operation: "GetTimelineEvent", path: "/getTimelineEvent", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all incident records in your account. Use this command to retrieve the Amazon Resource Name (ARN) of the incident record you want to update.
    public func listIncidentRecords(_ input: ListIncidentRecordsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListIncidentRecordsOutput {
        return try await self.client.execute(operation: "ListIncidentRecords", path: "/listIncidentRecords", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all related items for an incident record.
    public func listRelatedItems(_ input: ListRelatedItemsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRelatedItemsOutput {
        return try await self.client.execute(operation: "ListRelatedItems", path: "/listRelatedItems", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists details about the replication set configured in your account.
    public func listReplicationSets(_ input: ListReplicationSetsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListReplicationSetsOutput {
        return try await self.client.execute(operation: "ListReplicationSets", path: "/listReplicationSets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all response plans in your account.
    public func listResponsePlans(_ input: ListResponsePlansInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResponsePlansOutput {
        return try await self.client.execute(operation: "ListResponsePlans", path: "/listResponsePlans", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags that are attached to the specified response plan.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists timeline events for the specified incident record.
    public func listTimelineEvents(_ input: ListTimelineEventsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTimelineEventsOutput {
        return try await self.client.execute(operation: "ListTimelineEvents", path: "/listTimelineEvents", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a resource policy to the specified response plan.
    public func putResourcePolicy(_ input: PutResourcePolicyInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutResourcePolicyOutput {
        return try await self.client.execute(operation: "PutResourcePolicy", path: "/putResourcePolicy", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Used to start an incident from CloudWatch alarms, EventBridge events, or manually.
    public func startIncident(_ input: StartIncidentInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartIncidentOutput {
        return try await self.client.execute(operation: "StartIncident", path: "/startIncident", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a tag to a response plan.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a tag from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update deletion protection to either allow or deny deletion of the final Region in a replication set.
    public func updateDeletionProtection(_ input: UpdateDeletionProtectionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDeletionProtectionOutput {
        return try await self.client.execute(operation: "UpdateDeletionProtection", path: "/updateDeletionProtection", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update the details of an incident record. You can use this operation to update an incident record from the defined chat channel. For more information about using actions in chat channels, see Interacting through chat.
    public func updateIncidentRecord(_ input: UpdateIncidentRecordInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateIncidentRecordOutput {
        return try await self.client.execute(operation: "UpdateIncidentRecord", path: "/updateIncidentRecord", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Add or remove related items from the related items tab of an incident record.
    public func updateRelatedItems(_ input: UpdateRelatedItemsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRelatedItemsOutput {
        return try await self.client.execute(operation: "UpdateRelatedItems", path: "/updateRelatedItems", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Add or delete Regions from your replication set.
    public func updateReplicationSet(_ input: UpdateReplicationSetInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateReplicationSetOutput {
        return try await self.client.execute(operation: "UpdateReplicationSet", path: "/updateReplicationSet", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified response plan.
    public func updateResponsePlan(_ input: UpdateResponsePlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateResponsePlanOutput {
        return try await self.client.execute(operation: "UpdateResponsePlan", path: "/updateResponsePlan", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a timeline event. You can update events of type Custom Event.
    public func updateTimelineEvent(_ input: UpdateTimelineEventInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateTimelineEventOutput {
        return try await self.client.execute(operation: "UpdateTimelineEvent", path: "/updateTimelineEvent", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
