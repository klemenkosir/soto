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
extension SFN {
    // MARK: Async API Calls

    /// Creates an activity. An activity is a task that you write in any programming language and host on any machine that has access to AWS Step Functions. Activities must poll Step Functions using the GetActivityTask API action and respond using SendTask* API actions. This function lets Step Functions know the existence of your activity and returns an identifier for use in a state machine and when polling from the activity.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.    CreateActivity is an idempotent API. Subsequent requests won’t create a duplicate resource if it was already created. CreateActivity's idempotency check is based on the activity name. If a following request has different tags values, Step Functions will ignore these differences and treat it as an idempotent request of the previous. In this case, tags will not be updated, even if they are different.
    public func createActivity(_ input: CreateActivityInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateActivityOutput {
        return try await self.client.execute(operation: "CreateActivity", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a state machine. A state machine consists of a collection of states that can do work (Task states), determine to which states to transition next (Choice states), stop an execution with an error (Fail states), and so on. State machines are specified using a JSON-based, structured language. For more information, see Amazon States Language in the AWS Step Functions User Guide.   This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.    CreateStateMachine is an idempotent API. Subsequent requests won’t create a duplicate resource if it was already created. CreateStateMachine's idempotency check is based on the state machine name, definition, type, LoggingConfiguration and TracingConfiguration. If a following request has a different roleArn or tags, Step Functions will ignore these differences and treat it as an idempotent request of the previous. In this case, roleArn and tags will not be updated, even if they are different.
    public func createStateMachine(_ input: CreateStateMachineInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStateMachineOutput {
        return try await self.client.execute(operation: "CreateStateMachine", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an activity.
    public func deleteActivity(_ input: DeleteActivityInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteActivityOutput {
        return try await self.client.execute(operation: "DeleteActivity", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a state machine. This is an asynchronous operation: It sets the state machine's status to DELETING and begins the deletion process.   For EXPRESSstate machines, the deletion will happen eventually (usually less than a minute). Running executions may emit logs after DeleteStateMachine API is called.
    public func deleteStateMachine(_ input: DeleteStateMachineInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStateMachineOutput {
        return try await self.client.execute(operation: "DeleteStateMachine", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an activity.   This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.
    public func describeActivity(_ input: DescribeActivityInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeActivityOutput {
        return try await self.client.execute(operation: "DescribeActivity", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an execution.   This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.  This API action is not supported by EXPRESS state machines.
    public func describeExecution(_ input: DescribeExecutionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExecutionOutput {
        return try await self.client.execute(operation: "DescribeExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a state machine.   This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.
    public func describeStateMachine(_ input: DescribeStateMachineInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStateMachineOutput {
        return try await self.client.execute(operation: "DescribeStateMachine", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the state machine associated with a specific execution.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.  This API action is not supported by EXPRESS state machines.
    public func describeStateMachineForExecution(_ input: DescribeStateMachineForExecutionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStateMachineForExecutionOutput {
        return try await self.client.execute(operation: "DescribeStateMachineForExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Used by workers to retrieve a task (with the specified activity ARN) which has been scheduled for execution by a running state machine. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available (i.e. an execution of a task of this type is needed.) The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns a taskToken with a null string.  Workers should set their client side socket timeout to at least 65 seconds (5 seconds higher than the maximum time the service may hold the poll request). Polling with GetActivityTask can cause latency in some implementations. See Avoid Latency When Polling for Activity Tasks in the Step Functions Developer Guide.
    public func getActivityTask(_ input: GetActivityTaskInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetActivityTaskOutput {
        return try await self.client.execute(operation: "GetActivityTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the history of the specified execution as a list of events. By default, the results are returned in ascending order of the timeStamp of the events. Use the reverseOrder parameter to get the latest events first.  If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This API action is not supported by EXPRESS state machines.
    public func getExecutionHistory(_ input: GetExecutionHistoryInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetExecutionHistoryOutput {
        return try await self.client.execute(operation: "GetExecutionHistory", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the existing activities.  If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.   This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.
    public func listActivities(_ input: ListActivitiesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListActivitiesOutput {
        return try await self.client.execute(operation: "ListActivities", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the executions of a state machine that meet the filtering criteria. Results are sorted by time, with the most recent execution first.  If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.  This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.  This API action is not supported by EXPRESS state machines.
    public func listExecutions(_ input: ListExecutionsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListExecutionsOutput {
        return try await self.client.execute(operation: "ListExecutions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the existing state machines.  If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.   This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.
    public func listStateMachines(_ input: ListStateMachinesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListStateMachinesOutput {
        return try await self.client.execute(operation: "ListStateMachines", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List tags for a given resource.  Tags may only contain Unicode letters, digits, white space, or these symbols: _ . : / = + - @.
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceOutput {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Used by activity workers and task states using the callback pattern to report that the task identified by the taskToken failed.
    public func sendTaskFailure(_ input: SendTaskFailureInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendTaskFailureOutput {
        return try await self.client.execute(operation: "SendTaskFailure", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Used by activity workers and task states using the callback pattern to report to Step Functions that the task represented by the specified taskToken is still making progress. This action resets the Heartbeat clock. The Heartbeat threshold is specified in the state machine's Amazon States Language definition (HeartbeatSeconds). This action does not in itself create an event in the execution history. However, if the task times out, the execution history contains an ActivityTimedOut entry for activities, or a TaskTimedOut entry for for tasks using the job run or callback pattern.  The Timeout of a task, defined in the state machine's Amazon States Language definition, is its maximum allowed duration, regardless of the number of SendTaskHeartbeat requests received. Use HeartbeatSeconds to configure the timeout interval for heartbeats.
    public func sendTaskHeartbeat(_ input: SendTaskHeartbeatInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendTaskHeartbeatOutput {
        return try await self.client.execute(operation: "SendTaskHeartbeat", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Used by activity workers and task states using the callback pattern to report that the task identified by the taskToken completed successfully.
    public func sendTaskSuccess(_ input: SendTaskSuccessInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendTaskSuccessOutput {
        return try await self.client.execute(operation: "SendTaskSuccess", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a state machine execution.   StartExecution is idempotent. If StartExecution is called with the same name and input as a running execution, the call will succeed and return the same response as the original request. If the execution is closed or if the input is different, it will return a 400 ExecutionAlreadyExists error. Names can be reused after 90 days.
    public func startExecution(_ input: StartExecutionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartExecutionOutput {
        return try await self.client.execute(operation: "StartExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a Synchronous Express state machine execution.
    public func startSyncExecution(_ input: StartSyncExecutionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartSyncExecutionOutput {
        return try await self.client.execute(operation: "StartSyncExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "sync-", logger: logger, on: eventLoop)
    }

    /// Stops an execution.  This API action is not supported by EXPRESS state machines.
    public func stopExecution(_ input: StopExecutionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopExecutionOutput {
        return try await self.client.execute(operation: "StopExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Add a tag to a Step Functions resource.  An array of key-value pairs. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide, and Controlling Access Using IAM Tags.  Tags may only contain Unicode letters, digits, white space, or these symbols: _ . : / = + - @.
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceOutput {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Remove a tag from a Step Functions resource
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceOutput {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing state machine by modifying its definition, roleArn, or loggingConfiguration. Running executions will continue to use the previous definition and roleArn. You must include at least one of definition or roleArn or you will receive a MissingRequiredParameter error.  All StartExecution calls within a few seconds will use the updated definition and roleArn. Executions started immediately after calling UpdateStateMachine may use the previous state machine definition and roleArn.
    public func updateStateMachine(_ input: UpdateStateMachineInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateStateMachineOutput {
        return try await self.client.execute(operation: "UpdateStateMachine", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
