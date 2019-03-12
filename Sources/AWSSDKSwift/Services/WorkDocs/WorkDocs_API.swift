// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
The WorkDocs API is designed for the following use cases:   File Migration: File migration applications are supported for users who want to migrate their files from an on-premises or off-premises file system or service. Users can insert files into a user directory structure, as well as allow for basic metadata changes, such as modifications to the permissions of files.   Security: Support security applications are supported for users who have additional security needs, such as antivirus or data loss prevention. The API actions, along with AWS CloudTrail, allow these applications to detect when changes occur in Amazon WorkDocs. Then, the application can take the necessary actions and replace the target file. If the target file violates the policy, the application can also choose to email the user.   eDiscovery/Analytics: General administrative applications are supported, such as eDiscovery and analytics. These applications can choose to mimic or record the actions in an Amazon WorkDocs site, along with AWS CloudTrail, to replicate data for eDiscovery, backup, or analytical applications.   All Amazon WorkDocs API actions are Amazon authenticated and certificate-signed. They not only require the use of the AWS SDK, but also allow for the exclusive use of IAM users and roles to help facilitate access, trust, and permission policies. By creating a role and allowing an IAM user to access the Amazon WorkDocs site, the IAM user gains full administrative visibility into the entire Amazon WorkDocs site (or as set in the IAM policy). This includes, but is not limited to, the ability to modify file permissions and upload any file to any user. This allows developers to perform the three use cases above, as well as give users the ability to grant access on a selective basis using the IAM model.
*/
public struct WorkDocs {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "workdocs",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2016-05-01",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [WorkDocsErrorType.self]
        )
    }

    ///  Describes the user activities in a specified time period.
    public func describeActivities(_ input: DescribeActivitiesRequest) throws -> DescribeActivitiesResponse {
        return try client.send(operation: "DescribeActivities", path: "/api/v1/activities", httpMethod: "GET", input: input)
    }

    ///  Permanently deletes the specified document and its associated metadata.
    public func deleteDocument(_ input: DeleteDocumentRequest) throws {
        _ = try client.send(operation: "DeleteDocument", path: "/api/v1/documents/{DocumentId}", httpMethod: "DELETE", input: input)
    }

    ///  Activates the specified user. Only active users can access Amazon WorkDocs.
    public func activateUser(_ input: ActivateUserRequest) throws -> ActivateUserResponse {
        return try client.send(operation: "ActivateUser", path: "/api/v1/users/{UserId}/activation", httpMethod: "POST", input: input)
    }

    ///  Retrieves the document versions for the specified document. By default, only active versions are returned.
    public func describeDocumentVersions(_ input: DescribeDocumentVersionsRequest) throws -> DescribeDocumentVersionsResponse {
        return try client.send(operation: "DescribeDocumentVersions", path: "/api/v1/documents/{DocumentId}/versions", httpMethod: "GET", input: input)
    }

    ///  Deletes the contents of the specified folder.
    public func deleteFolderContents(_ input: DeleteFolderContentsRequest) throws {
        _ = try client.send(operation: "DeleteFolderContents", path: "/api/v1/folders/{FolderId}/contents", httpMethod: "DELETE", input: input)
    }

    ///  Deletes custom metadata from the specified resource.
    public func deleteCustomMetadata(_ input: DeleteCustomMetadataRequest) throws -> DeleteCustomMetadataResponse {
        return try client.send(operation: "DeleteCustomMetadata", path: "/api/v1/resources/{ResourceId}/customMetadata", httpMethod: "DELETE", input: input)
    }

    ///  Describes the groups specified by the query. Groups are defined by the underlying Active Directory.
    public func describeGroups(_ input: DescribeGroupsRequest) throws -> DescribeGroupsResponse {
        return try client.send(operation: "DescribeGroups", path: "/api/v1/groups", httpMethod: "GET", input: input)
    }

    ///  Removes the permission for the specified principal from the specified resource.
    public func removeResourcePermission(_ input: RemoveResourcePermissionRequest) throws {
        _ = try client.send(operation: "RemoveResourcePermission", path: "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}", httpMethod: "DELETE", input: input)
    }

    ///  List all the comments for the specified document version.
    public func describeComments(_ input: DescribeCommentsRequest) throws -> DescribeCommentsResponse {
        return try client.send(operation: "DescribeComments", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments", httpMethod: "GET", input: input)
    }

    ///  Describes the contents of the specified folder, including its documents and subfolders. By default, Amazon WorkDocs returns the first 100 active document and folder metadata items. If there are more results, the response includes a marker that you can use to request the next set of results. You can also request initialized documents.
    public func describeFolderContents(_ input: DescribeFolderContentsRequest) throws -> DescribeFolderContentsResponse {
        return try client.send(operation: "DescribeFolderContents", path: "/api/v1/folders/{FolderId}/contents", httpMethod: "GET", input: input)
    }

    ///  Describes the current user's special folders; the RootFolder and the RecycleBin. RootFolder is the root of user's files and folders and RecycleBin is the root of recycled items. This is not a valid action for SigV4 (administrative API) clients. This action requires an authentication token. To get an authentication token, register an application with Amazon WorkDocs. For more information, see Authentication and Access Control for User Applications in the Amazon WorkDocs Developer Guide.
    public func describeRootFolders(_ input: DescribeRootFoldersRequest) throws -> DescribeRootFoldersResponse {
        return try client.send(operation: "DescribeRootFolders", path: "/api/v1/me/root", httpMethod: "GET", input: input)
    }

    ///  Retrieves the path information (the hierarchy from the root folder) for the specified folder. By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested folder and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the parent folder names.
    public func getFolderPath(_ input: GetFolderPathRequest) throws -> GetFolderPathResponse {
        return try client.send(operation: "GetFolderPath", path: "/api/v1/folders/{FolderId}/path", httpMethod: "GET", input: input)
    }

    ///  Updates the specified attributes of a document. The user must have access to both the document and its parent folder, if applicable.
    public func updateDocument(_ input: UpdateDocumentRequest) throws {
        _ = try client.send(operation: "UpdateDocument", path: "/api/v1/documents/{DocumentId}", httpMethod: "PATCH", input: input)
    }

    ///  Retrieves details of the current user for whom the authentication token was generated. This is not a valid action for SigV4 (administrative API) clients.
    public func getCurrentUser(_ input: GetCurrentUserRequest) throws -> GetCurrentUserResponse {
        return try client.send(operation: "GetCurrentUser", path: "/api/v1/me", httpMethod: "GET", input: input)
    }

    ///  Adds the specified list of labels to the given resource (a document or folder)
    public func createLabels(_ input: CreateLabelsRequest) throws -> CreateLabelsResponse {
        return try client.send(operation: "CreateLabels", path: "/api/v1/resources/{ResourceId}/labels", httpMethod: "PUT", input: input)
    }

    ///  Creates a set of permissions for the specified folder or document. The resource permissions are overwritten if the principals already have different permissions.
    public func addResourcePermissions(_ input: AddResourcePermissionsRequest) throws -> AddResourcePermissionsResponse {
        return try client.send(operation: "AddResourcePermissions", path: "/api/v1/resources/{ResourceId}/permissions", httpMethod: "POST", input: input)
    }

    ///  Lists the specified notification subscriptions.
    public func describeNotificationSubscriptions(_ input: DescribeNotificationSubscriptionsRequest) throws -> DescribeNotificationSubscriptionsResponse {
        return try client.send(operation: "DescribeNotificationSubscriptions", path: "/api/v1/organizations/{OrganizationId}/subscriptions", httpMethod: "GET", input: input)
    }

    ///  Creates a user in a Simple AD or Microsoft AD directory. The status of a newly created user is "ACTIVE". New users can access Amazon WorkDocs.
    public func createUser(_ input: CreateUserRequest) throws -> CreateUserResponse {
        return try client.send(operation: "CreateUser", path: "/api/v1/users", httpMethod: "POST", input: input)
    }

    ///  Removes all the permissions from the specified resource.
    public func removeAllResourcePermissions(_ input: RemoveAllResourcePermissionsRequest) throws {
        _ = try client.send(operation: "RemoveAllResourcePermissions", path: "/api/v1/resources/{ResourceId}/permissions", httpMethod: "DELETE", input: input)
    }

    ///  Aborts the upload of the specified document version that was previously initiated by InitiateDocumentVersionUpload. The client should make this call only when it no longer intends to upload the document version, or fails to do so.
    public func abortDocumentVersionUpload(_ input: AbortDocumentVersionUploadRequest) throws {
        _ = try client.send(operation: "AbortDocumentVersionUpload", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}", httpMethod: "DELETE", input: input)
    }

    ///  Deactivates the specified user, which revokes the user's access to Amazon WorkDocs.
    public func deactivateUser(_ input: DeactivateUserRequest) throws {
        _ = try client.send(operation: "DeactivateUser", path: "/api/v1/users/{UserId}/activation", httpMethod: "DELETE", input: input)
    }

    ///  Changes the status of the document version to ACTIVE.  Amazon WorkDocs also sets its document container to ACTIVE. This is the last step in a document upload, after the client uploads the document to an S3-presigned URL returned by InitiateDocumentVersionUpload. 
    public func updateDocumentVersion(_ input: UpdateDocumentVersionRequest) throws {
        _ = try client.send(operation: "UpdateDocumentVersion", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}", httpMethod: "PATCH", input: input)
    }

    ///  Describes the specified users. You can describe all users or filter the results (for example, by status or organization). By default, Amazon WorkDocs returns the first 24 active or pending users. If there are more results, the response includes a marker that you can use to request the next set of results.
    public func describeUsers(_ input: DescribeUsersRequest) throws -> DescribeUsersResponse {
        return try client.send(operation: "DescribeUsers", path: "/api/v1/users", httpMethod: "GET", input: input)
    }

    ///  Retrieves details of a document.
    public func getDocument(_ input: GetDocumentRequest) throws -> GetDocumentResponse {
        return try client.send(operation: "GetDocument", path: "/api/v1/documents/{DocumentId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves the metadata of the specified folder.
    public func getFolder(_ input: GetFolderRequest) throws -> GetFolderResponse {
        return try client.send(operation: "GetFolder", path: "/api/v1/folders/{FolderId}", httpMethod: "GET", input: input)
    }

    ///  Adds a new comment to the specified document version.
    public func createComment(_ input: CreateCommentRequest) throws -> CreateCommentResponse {
        return try client.send(operation: "CreateComment", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment", httpMethod: "POST", input: input)
    }

    ///  Retrieves a collection of resources, including folders and documents. The only CollectionType supported is SHARED_WITH_ME.
    public func getResources(_ input: GetResourcesRequest) throws -> GetResourcesResponse {
        return try client.send(operation: "GetResources", path: "/api/v1/resources", httpMethod: "GET", input: input)
    }

    ///  Deletes the specified subscription from the specified organization.
    public func deleteNotificationSubscription(_ input: DeleteNotificationSubscriptionRequest) throws {
        _ = try client.send(operation: "DeleteNotificationSubscription", path: "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the specified list of labels from a resource.
    public func deleteLabels(_ input: DeleteLabelsRequest) throws -> DeleteLabelsResponse {
        return try client.send(operation: "DeleteLabels", path: "/api/v1/resources/{ResourceId}/labels", httpMethod: "DELETE", input: input)
    }

    ///  Updates the specified attributes of the specified folder. The user must have access to both the folder and its parent folder, if applicable.
    public func updateFolder(_ input: UpdateFolderRequest) throws {
        _ = try client.send(operation: "UpdateFolder", path: "/api/v1/folders/{FolderId}", httpMethod: "PATCH", input: input)
    }

    ///  Permanently deletes the specified folder and its contents.
    public func deleteFolder(_ input: DeleteFolderRequest) throws {
        _ = try client.send(operation: "DeleteFolder", path: "/api/v1/folders/{FolderId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the specified comment from the document version.
    public func deleteComment(_ input: DeleteCommentRequest) throws {
        _ = try client.send(operation: "DeleteComment", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}", httpMethod: "DELETE", input: input)
    }

    ///  Retrieves version metadata for the specified document.
    public func getDocumentVersion(_ input: GetDocumentVersionRequest) throws -> GetDocumentVersionResponse {
        return try client.send(operation: "GetDocumentVersion", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}", httpMethod: "GET", input: input)
    }

    ///  Adds one or more custom properties to the specified resource (a folder, document, or version).
    public func createCustomMetadata(_ input: CreateCustomMetadataRequest) throws -> CreateCustomMetadataResponse {
        return try client.send(operation: "CreateCustomMetadata", path: "/api/v1/resources/{ResourceId}/customMetadata", httpMethod: "PUT", input: input)
    }

    ///  Retrieves the path information (the hierarchy from the root folder) for the requested document. By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested document and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the names of the parent folders.
    public func getDocumentPath(_ input: GetDocumentPathRequest) throws -> GetDocumentPathResponse {
        return try client.send(operation: "GetDocumentPath", path: "/api/v1/documents/{DocumentId}/path", httpMethod: "GET", input: input)
    }

    ///  Creates a folder with the specified name and parent folder.
    public func createFolder(_ input: CreateFolderRequest) throws -> CreateFolderResponse {
        return try client.send(operation: "CreateFolder", path: "/api/v1/folders", httpMethod: "POST", input: input)
    }

    ///  Describes the permissions of a specified resource.
    public func describeResourcePermissions(_ input: DescribeResourcePermissionsRequest) throws -> DescribeResourcePermissionsResponse {
        return try client.send(operation: "DescribeResourcePermissions", path: "/api/v1/resources/{ResourceId}/permissions", httpMethod: "GET", input: input)
    }

    ///  Configure Amazon WorkDocs to use Amazon SNS notifications. The endpoint receives a confirmation message, and must confirm the subscription. For more information, see Subscribe to Notifications in the Amazon WorkDocs Developer Guide.
    public func createNotificationSubscription(_ input: CreateNotificationSubscriptionRequest) throws -> CreateNotificationSubscriptionResponse {
        return try client.send(operation: "CreateNotificationSubscription", path: "/api/v1/organizations/{OrganizationId}/subscriptions", httpMethod: "POST", input: input)
    }

    ///  Creates a new document object and version object. The client specifies the parent folder ID and name of the document to upload. The ID is optionally specified when creating a new version of an existing document. This is the first step to upload a document. Next, upload the document to the URL returned from the call, and then call UpdateDocumentVersion. To cancel the document upload, call AbortDocumentVersionUpload.
    public func initiateDocumentVersionUpload(_ input: InitiateDocumentVersionUploadRequest) throws -> InitiateDocumentVersionUploadResponse {
        return try client.send(operation: "InitiateDocumentVersionUpload", path: "/api/v1/documents", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified user from a Simple AD or Microsoft AD directory.
    public func deleteUser(_ input: DeleteUserRequest) throws {
        _ = try client.send(operation: "DeleteUser", path: "/api/v1/users/{UserId}", httpMethod: "DELETE", input: input)
    }

    ///  Updates the specified attributes of the specified user, and grants or revokes administrative privileges to the Amazon WorkDocs site.
    public func updateUser(_ input: UpdateUserRequest) throws -> UpdateUserResponse {
        return try client.send(operation: "UpdateUser", path: "/api/v1/users/{UserId}", httpMethod: "PATCH", input: input)
    }


}