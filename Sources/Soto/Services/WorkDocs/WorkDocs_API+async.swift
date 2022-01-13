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
extension WorkDocs {
    // MARK: Async API Calls

    /// Aborts the upload of the specified document version that was previously initiated by InitiateDocumentVersionUpload. The client should make this call only when it no longer intends to upload the document version, or fails to do so.
    public func abortDocumentVersionUpload(_ input: AbortDocumentVersionUploadRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "AbortDocumentVersionUpload", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Activates the specified user. Only active users can access Amazon WorkDocs.
    public func activateUser(_ input: ActivateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ActivateUserResponse {
        return try await self.client.execute(operation: "ActivateUser", path: "/api/v1/users/{UserId}/activation", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a set of permissions for the specified folder or document. The resource permissions are overwritten if the principals already have different permissions.
    public func addResourcePermissions(_ input: AddResourcePermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddResourcePermissionsResponse {
        return try await self.client.execute(operation: "AddResourcePermissions", path: "/api/v1/resources/{ResourceId}/permissions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a new comment to the specified document version.
    public func createComment(_ input: CreateCommentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCommentResponse {
        return try await self.client.execute(operation: "CreateComment", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds one or more custom properties to the specified resource (a folder, document, or version).
    public func createCustomMetadata(_ input: CreateCustomMetadataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomMetadataResponse {
        return try await self.client.execute(operation: "CreateCustomMetadata", path: "/api/v1/resources/{ResourceId}/customMetadata", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a folder with the specified name and parent folder.
    public func createFolder(_ input: CreateFolderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFolderResponse {
        return try await self.client.execute(operation: "CreateFolder", path: "/api/v1/folders", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds the specified list of labels to the given resource (a document or folder)
    public func createLabels(_ input: CreateLabelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLabelsResponse {
        return try await self.client.execute(operation: "CreateLabels", path: "/api/v1/resources/{ResourceId}/labels", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Configure Amazon WorkDocs to use Amazon SNS notifications. The endpoint receives a confirmation message, and must confirm the subscription. For more information, see Subscribe to Notifications in the Amazon WorkDocs Developer Guide.
    public func createNotificationSubscription(_ input: CreateNotificationSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNotificationSubscriptionResponse {
        return try await self.client.execute(operation: "CreateNotificationSubscription", path: "/api/v1/organizations/{OrganizationId}/subscriptions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a user in a Simple AD or Microsoft AD directory. The status of a newly created user is "ACTIVE". New users can access Amazon WorkDocs.
    public func createUser(_ input: CreateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserResponse {
        return try await self.client.execute(operation: "CreateUser", path: "/api/v1/users", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deactivates the specified user, which revokes the user's access to Amazon WorkDocs.
    public func deactivateUser(_ input: DeactivateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeactivateUser", path: "/api/v1/users/{UserId}/activation", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified comment from the document version.
    public func deleteComment(_ input: DeleteCommentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteComment", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes custom metadata from the specified resource.
    public func deleteCustomMetadata(_ input: DeleteCustomMetadataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCustomMetadataResponse {
        return try await self.client.execute(operation: "DeleteCustomMetadata", path: "/api/v1/resources/{ResourceId}/customMetadata", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Permanently deletes the specified document and its associated metadata.
    public func deleteDocument(_ input: DeleteDocumentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteDocument", path: "/api/v1/documents/{DocumentId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Permanently deletes the specified folder and its contents.
    public func deleteFolder(_ input: DeleteFolderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteFolder", path: "/api/v1/folders/{FolderId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the contents of the specified folder.
    public func deleteFolderContents(_ input: DeleteFolderContentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteFolderContents", path: "/api/v1/folders/{FolderId}/contents", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified list of labels from a resource.
    public func deleteLabels(_ input: DeleteLabelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLabelsResponse {
        return try await self.client.execute(operation: "DeleteLabels", path: "/api/v1/resources/{ResourceId}/labels", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified subscription from the specified organization.
    public func deleteNotificationSubscription(_ input: DeleteNotificationSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteNotificationSubscription", path: "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified user from a Simple AD or Microsoft AD directory.
    public func deleteUser(_ input: DeleteUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteUser", path: "/api/v1/users/{UserId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the user activities in a specified time period.
    public func describeActivities(_ input: DescribeActivitiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeActivitiesResponse {
        return try await self.client.execute(operation: "DescribeActivities", path: "/api/v1/activities", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all the comments for the specified document version.
    public func describeComments(_ input: DescribeCommentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCommentsResponse {
        return try await self.client.execute(operation: "DescribeComments", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the document versions for the specified document. By default, only active versions are returned.
    public func describeDocumentVersions(_ input: DescribeDocumentVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDocumentVersionsResponse {
        return try await self.client.execute(operation: "DescribeDocumentVersions", path: "/api/v1/documents/{DocumentId}/versions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the contents of the specified folder, including its documents and subfolders. By default, Amazon WorkDocs returns the first 100 active document and folder metadata items. If there are more results, the response includes a marker that you can use to request the next set of results. You can also request initialized documents.
    public func describeFolderContents(_ input: DescribeFolderContentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFolderContentsResponse {
        return try await self.client.execute(operation: "DescribeFolderContents", path: "/api/v1/folders/{FolderId}/contents", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the groups specified by the query. Groups are defined by the underlying Active Directory.
    public func describeGroups(_ input: DescribeGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupsResponse {
        return try await self.client.execute(operation: "DescribeGroups", path: "/api/v1/groups", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the specified notification subscriptions.
    public func describeNotificationSubscriptions(_ input: DescribeNotificationSubscriptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotificationSubscriptionsResponse {
        return try await self.client.execute(operation: "DescribeNotificationSubscriptions", path: "/api/v1/organizations/{OrganizationId}/subscriptions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the permissions of a specified resource.
    public func describeResourcePermissions(_ input: DescribeResourcePermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourcePermissionsResponse {
        return try await self.client.execute(operation: "DescribeResourcePermissions", path: "/api/v1/resources/{ResourceId}/permissions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the current user's special folders; the RootFolder and the RecycleBin. RootFolder is the root of user's files and folders and RecycleBin is the root of recycled items. This is not a valid action for SigV4 (administrative API) clients. This action requires an authentication token. To get an authentication token, register an application with Amazon WorkDocs. For more information, see Authentication and Access Control for User Applications in the Amazon WorkDocs Developer Guide.
    public func describeRootFolders(_ input: DescribeRootFoldersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRootFoldersResponse {
        return try await self.client.execute(operation: "DescribeRootFolders", path: "/api/v1/me/root", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified users. You can describe all users or filter the results (for example, by status or organization). By default, Amazon WorkDocs returns the first 24 active or pending users. If there are more results, the response includes a marker that you can use to request the next set of results.
    public func describeUsers(_ input: DescribeUsersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsersResponse {
        return try await self.client.execute(operation: "DescribeUsers", path: "/api/v1/users", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves details of the current user for whom the authentication token was generated. This is not a valid action for SigV4 (administrative API) clients. This action requires an authentication token. To get an authentication token, register an application with Amazon WorkDocs. For more information, see Authentication and Access Control for User Applications in the Amazon WorkDocs Developer Guide.
    public func getCurrentUser(_ input: GetCurrentUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCurrentUserResponse {
        return try await self.client.execute(operation: "GetCurrentUser", path: "/api/v1/me", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves details of a document.
    public func getDocument(_ input: GetDocumentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDocumentResponse {
        return try await self.client.execute(operation: "GetDocument", path: "/api/v1/documents/{DocumentId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the path information (the hierarchy from the root folder) for the requested document. By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested document and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the names of the parent folders.
    public func getDocumentPath(_ input: GetDocumentPathRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDocumentPathResponse {
        return try await self.client.execute(operation: "GetDocumentPath", path: "/api/v1/documents/{DocumentId}/path", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves version metadata for the specified document.
    public func getDocumentVersion(_ input: GetDocumentVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDocumentVersionResponse {
        return try await self.client.execute(operation: "GetDocumentVersion", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the metadata of the specified folder.
    public func getFolder(_ input: GetFolderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFolderResponse {
        return try await self.client.execute(operation: "GetFolder", path: "/api/v1/folders/{FolderId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the path information (the hierarchy from the root folder) for the specified folder. By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested folder and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the parent folder names.
    public func getFolderPath(_ input: GetFolderPathRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFolderPathResponse {
        return try await self.client.execute(operation: "GetFolderPath", path: "/api/v1/folders/{FolderId}/path", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a collection of resources, including folders and documents. The only CollectionType supported is SHARED_WITH_ME.
    public func getResources(_ input: GetResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResourcesResponse {
        return try await self.client.execute(operation: "GetResources", path: "/api/v1/resources", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new document object and version object. The client specifies the parent folder ID and name of the document to upload. The ID is optionally specified when creating a new version of an existing document. This is the first step to upload a document. Next, upload the document to the URL returned from the call, and then call UpdateDocumentVersion. To cancel the document upload, call AbortDocumentVersionUpload.
    public func initiateDocumentVersionUpload(_ input: InitiateDocumentVersionUploadRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InitiateDocumentVersionUploadResponse {
        return try await self.client.execute(operation: "InitiateDocumentVersionUpload", path: "/api/v1/documents", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes all the permissions from the specified resource.
    public func removeAllResourcePermissions(_ input: RemoveAllResourcePermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "RemoveAllResourcePermissions", path: "/api/v1/resources/{ResourceId}/permissions", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the permission for the specified principal from the specified resource.
    public func removeResourcePermission(_ input: RemoveResourcePermissionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "RemoveResourcePermission", path: "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified attributes of a document. The user must have access to both the document and its parent folder, if applicable.
    public func updateDocument(_ input: UpdateDocumentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateDocument", path: "/api/v1/documents/{DocumentId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the status of the document version to ACTIVE.  Amazon WorkDocs also sets its document container to ACTIVE. This is the last step in a document upload, after the client uploads the document to an S3-presigned URL returned by InitiateDocumentVersionUpload.
    public func updateDocumentVersion(_ input: UpdateDocumentVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateDocumentVersion", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified attributes of the specified folder. The user must have access to both the folder and its parent folder, if applicable.
    public func updateFolder(_ input: UpdateFolderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateFolder", path: "/api/v1/folders/{FolderId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified attributes of the specified user, and grants or revokes administrative privileges to the Amazon WorkDocs site.
    public func updateUser(_ input: UpdateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateUserResponse {
        return try await self.client.execute(operation: "UpdateUser", path: "/api/v1/users/{UserId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
