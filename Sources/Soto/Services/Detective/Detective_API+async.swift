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
extension Detective {
    // MARK: Async API Calls

    /// Accepts an invitation for the member account to contribute data to a behavior graph. This operation can only be called by an invited member account.  The request provides the ARN of behavior graph. The member account status in the graph must be INVITED.
    public func acceptInvitation(_ input: AcceptInvitationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "AcceptInvitation", path: "/invitation", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new behavior graph for the calling account, and sets that account as the administrator account. This operation is called by the account that is enabling Detective. Before you try to enable Detective, make sure that your account has been enrolled in Amazon GuardDuty for at least 48 hours. If you do not meet this requirement, you cannot enable Detective. If you do meet the GuardDuty prerequisite, then when you make the request to enable Detective, it checks whether your data volume is within the Detective quota. If it exceeds the quota, then you cannot enable Detective.  The operation also enables Detective for the calling account in the currently selected Region. It returns the ARN of the new behavior graph.  CreateGraph triggers a process to create the corresponding data tables for the new behavior graph. An account can only be the administrator account for one behavior graph within a Region. If the same account calls CreateGraph with the same administrator account, it always returns the same behavior graph ARN. It does not create a new behavior graph.
    public func createGraph(_ input: CreateGraphRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGraphResponse {
        return try await self.client.execute(operation: "CreateGraph", path: "/graph", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sends a request to invite the specified AWS accounts to be member accounts in the behavior graph. This operation can only be called by the administrator account for a behavior graph.   CreateMembers verifies the accounts and then invites the verified accounts. The administrator can optionally specify to not send invitation emails to the member accounts. This would be used when the administrator manages their member accounts centrally. The request provides the behavior graph ARN and the list of accounts to invite. The response separates the requested accounts into two lists:   The accounts that CreateMembers was able to start the verification for. This list includes member accounts that are being verified, that have passed verification and are to be invited, and that have failed verification.   The accounts that CreateMembers was unable to process. This list includes accounts that were already invited to be member accounts in the behavior graph.
    public func createMembers(_ input: CreateMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMembersResponse {
        return try await self.client.execute(operation: "CreateMembers", path: "/graph/members", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables the specified behavior graph and queues it to be deleted. This operation removes the graph from each member account's list of behavior graphs.  DeleteGraph can only be called by the administrator account for a behavior graph.
    public func deleteGraph(_ input: DeleteGraphRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteGraph", path: "/graph/removal", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes one or more member accounts from the administrator account's behavior graph. This operation can only be called by a Detective administrator account. That account cannot use DeleteMembers to delete their own account from the behavior graph. To disable a behavior graph, the administrator account uses the DeleteGraph API method.
    public func deleteMembers(_ input: DeleteMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMembersResponse {
        return try await self.client.execute(operation: "DeleteMembers", path: "/graph/members/removal", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the member account from the specified behavior graph. This operation can only be called by a member account that has the ENABLED status.
    public func disassociateMembership(_ input: DisassociateMembershipRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DisassociateMembership", path: "/membership/removal", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the membership details for specified member accounts for a behavior graph.
    public func getMembers(_ input: GetMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMembersResponse {
        return try await self.client.execute(operation: "GetMembers", path: "/graph/members/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the list of behavior graphs that the calling account is an administrator account of. This operation can only be called by an administrator account. Because an account can currently only be the administrator of one behavior graph within a Region, the results always contain a single behavior graph.
    public func listGraphs(_ input: ListGraphsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListGraphsResponse {
        return try await self.client.execute(operation: "ListGraphs", path: "/graphs/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the list of open and accepted behavior graph invitations for the member account. This operation can only be called by a member account. Open invitations are invitations that the member account has not responded to. The results do not include behavior graphs for which the member account declined the invitation. The results also do not include behavior graphs that the member account resigned from or was removed from.
    public func listInvitations(_ input: ListInvitationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInvitationsResponse {
        return try await self.client.execute(operation: "ListInvitations", path: "/invitations/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the list of member accounts for a behavior graph. Does not return member accounts that were removed from the behavior graph.
    public func listMembers(_ input: ListMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMembersResponse {
        return try await self.client.execute(operation: "ListMembers", path: "/graph/members/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the tag values that are assigned to a behavior graph.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Rejects an invitation to contribute the account data to a behavior graph. This operation must be called by a member account that has the INVITED status.
    public func rejectInvitation(_ input: RejectInvitationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "RejectInvitation", path: "/invitation/removal", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sends a request to enable data ingest for a member account that has a status of ACCEPTED_BUT_DISABLED. For valid member accounts, the status is updated as follows.   If Detective enabled the member account, then the new status is ENABLED.   If Detective cannot enable the member account, the status remains ACCEPTED_BUT_DISABLED.
    public func startMonitoringMember(_ input: StartMonitoringMemberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "StartMonitoringMember", path: "/graph/member/monitoringstate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Applies tag values to a behavior graph.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from a behavior graph.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5)
