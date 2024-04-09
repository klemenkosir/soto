//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2023 the Soto project authors
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

@_exported import SotoCore

/// Service object for interacting with AWS ServiceCatalogAppRegistry service.
///
///  Amazon Web Services Service Catalog AppRegistry enables organizations to understand the application context of their Amazon Web Services resources. AppRegistry provides a repository of your applications, their resources, and the application metadata that you use within your enterprise.
public struct ServiceCatalogAppRegistry: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ServiceCatalogAppRegistry client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middleware: Middleware chain used to edit requests before they are sent and responses before they are decoded 
    ///     - timeout: Timeout value for HTTP requests
    ///     - byteBufferAllocator: Allocator for ByteBuffers
    ///     - options: Service options
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        middleware: AWSMiddlewareProtocol? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            serviceName: "ServiceCatalogAppRegistry",
            serviceIdentifier: "servicecatalog-appregistry",
            signingName: "servicecatalog",
            serviceProtocol: .restjson,
            apiVersion: "2020-06-24",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: ServiceCatalogAppRegistryErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "ca-central-1": "servicecatalog-appregistry-fips.ca-central-1.amazonaws.com",
            "us-east-1": "servicecatalog-appregistry-fips.us-east-1.amazonaws.com",
            "us-east-2": "servicecatalog-appregistry-fips.us-east-2.amazonaws.com",
            "us-gov-east-1": "servicecatalog-appregistry.us-gov-east-1.amazonaws.com",
            "us-gov-west-1": "servicecatalog-appregistry.us-gov-west-1.amazonaws.com",
            "us-west-1": "servicecatalog-appregistry-fips.us-west-1.amazonaws.com",
            "us-west-2": "servicecatalog-appregistry-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Associates an attribute group with an application to augment the application's metadata with the group's attributes. This feature enables applications to be described with user-defined details that are machine-readable, such as third-party integrations.
    @Sendable
    public func associateAttributeGroup(_ input: AssociateAttributeGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateAttributeGroupResponse {
        return try await self.client.execute(
            operation: "AssociateAttributeGroup", 
            path: "/applications/{application}/attribute-groups/{attributeGroup}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Associates a resource with an application.  The resource can be specified by its ARN or name.  The application can be specified by ARN, ID, or name.   Minimum permissions   You must have the following permissions to associate a resource using the OPTIONS parameter set to APPLY_APPLICATION_TAG.     tag:GetResources     tag:TagResources     You must also have these additional permissions if you don't use the AWSServiceCatalogAppRegistryFullAccess policy.  For more information, see AWSServiceCatalogAppRegistryFullAccess in the AppRegistry Administrator Guide.     resource-groups:AssociateResource     cloudformation:UpdateStack     cloudformation:DescribeStacks      In addition, you must have the tagging permission defined by the Amazon Web Services service that creates the resource.  For more information, see TagResources in the Resource Groups Tagging API Reference.
    @Sendable
    public func associateResource(_ input: AssociateResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateResourceResponse {
        return try await self.client.execute(
            operation: "AssociateResource", 
            path: "/applications/{application}/resources/{resourceType}/{resource}", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new application that is the top-level node in a hierarchy of related cloud resource abstractions.
    @Sendable
    public func createApplication(_ input: CreateApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateApplicationResponse {
        return try await self.client.execute(
            operation: "CreateApplication", 
            path: "/applications", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new attribute group as a container for user-defined attributes. This feature enables users to have full control over their cloud application's metadata in a rich machine-readable format to facilitate integration with automated workflows and third-party tools.
    @Sendable
    public func createAttributeGroup(_ input: CreateAttributeGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateAttributeGroupResponse {
        return try await self.client.execute(
            operation: "CreateAttributeGroup", 
            path: "/attribute-groups", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an application that is specified either by its application ID, name, or ARN. All associated attribute groups and resources must be disassociated from it before deleting an application.
    @Sendable
    public func deleteApplication(_ input: DeleteApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteApplicationResponse {
        return try await self.client.execute(
            operation: "DeleteApplication", 
            path: "/applications/{application}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an attribute group, specified either by its attribute group ID, name, or ARN.
    @Sendable
    public func deleteAttributeGroup(_ input: DeleteAttributeGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteAttributeGroupResponse {
        return try await self.client.execute(
            operation: "DeleteAttributeGroup", 
            path: "/attribute-groups/{attributeGroup}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Disassociates an attribute group from an application to remove the extra attributes contained in the attribute group from the application's metadata. This operation reverts AssociateAttributeGroup.
    @Sendable
    public func disassociateAttributeGroup(_ input: DisassociateAttributeGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateAttributeGroupResponse {
        return try await self.client.execute(
            operation: "DisassociateAttributeGroup", 
            path: "/applications/{application}/attribute-groups/{attributeGroup}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Disassociates a resource from application.  Both the resource and the application can be specified either by ID or name.   Minimum permissions   You must have the following permissions to remove a resource that's been associated with an application using the APPLY_APPLICATION_TAG option for AssociateResource.     tag:GetResources     tag:UntagResources     You must also have the following permissions if you don't use the AWSServiceCatalogAppRegistryFullAccess policy.  For more information, see AWSServiceCatalogAppRegistryFullAccess in the AppRegistry Administrator Guide.     resource-groups:DisassociateResource     cloudformation:UpdateStack     cloudformation:DescribeStacks      In addition, you must have the tagging permission defined by the Amazon Web Services service that creates the resource.  For more information, see UntagResources in the Resource Groups Tagging API Reference.
    @Sendable
    public func disassociateResource(_ input: DisassociateResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateResourceResponse {
        return try await self.client.execute(
            operation: "DisassociateResource", 
            path: "/applications/{application}/resources/{resourceType}/{resource}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Retrieves metadata information  about one  of your applications.  The application can be specified  by its ARN, ID, or name  (which is unique  within one account  in one region  at a given point  in time).  Specify  by ARN or ID  in automated workflows  if you want  to make sure  that the exact same application is returned or a ResourceNotFoundException is thrown,  avoiding the ABA addressing problem.
    @Sendable
    public func getApplication(_ input: GetApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetApplicationResponse {
        return try await self.client.execute(
            operation: "GetApplication", 
            path: "/applications/{application}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the resource associated with the application.
    @Sendable
    public func getAssociatedResource(_ input: GetAssociatedResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAssociatedResourceResponse {
        return try await self.client.execute(
            operation: "GetAssociatedResource", 
            path: "/applications/{application}/resources/{resourceType}/{resource}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Retrieves an attribute group by its ARN, ID, or name.  The attribute group can be specified  by its ARN, ID, or name.
    @Sendable
    public func getAttributeGroup(_ input: GetAttributeGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAttributeGroupResponse {
        return try await self.client.execute(
            operation: "GetAttributeGroup", 
            path: "/attribute-groups/{attributeGroup}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Retrieves a TagKey configuration from an account.
    @Sendable
    public func getConfiguration(logger: Logger = AWSClient.loggingDisabled) async throws -> GetConfigurationResponse {
        return try await self.client.execute(
            operation: "GetConfiguration", 
            path: "/configuration", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            logger: logger
        )
    }

    /// Retrieves a list of all of your applications. Results are paginated.
    @Sendable
    public func listApplications(_ input: ListApplicationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListApplicationsResponse {
        return try await self.client.execute(
            operation: "ListApplications", 
            path: "/applications", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all attribute groups that are associated with specified application.  Results are paginated.
    @Sendable
    public func listAssociatedAttributeGroups(_ input: ListAssociatedAttributeGroupsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAssociatedAttributeGroupsResponse {
        return try await self.client.execute(
            operation: "ListAssociatedAttributeGroups", 
            path: "/applications/{application}/attribute-groups", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Lists all  of the resources  that are associated  with the specified application. Results are paginated.    If you share an application,  and a consumer account associates a tag query  to the application,  all of the users  who can access the application  can also view the tag values  in all accounts  that are associated  with it  using this API.
    @Sendable
    public func listAssociatedResources(_ input: ListAssociatedResourcesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAssociatedResourcesResponse {
        return try await self.client.execute(
            operation: "ListAssociatedResources", 
            path: "/applications/{application}/resources", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all attribute groups which you have access to. Results are paginated.
    @Sendable
    public func listAttributeGroups(_ input: ListAttributeGroupsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAttributeGroupsResponse {
        return try await self.client.execute(
            operation: "ListAttributeGroups", 
            path: "/attribute-groups", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the details of all attribute groups associated with a specific application. The results display in pages.
    @Sendable
    public func listAttributeGroupsForApplication(_ input: ListAttributeGroupsForApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAttributeGroupsForApplicationResponse {
        return try await self.client.execute(
            operation: "ListAttributeGroupsForApplication", 
            path: "/applications/{application}/attribute-group-details", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all of the tags on the resource.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Associates a TagKey configuration  to an account.
    @Sendable
    public func putConfiguration(_ input: PutConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "PutConfiguration", 
            path: "/configuration", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Syncs the resource with current AppRegistry records. Specifically, the resource’s AppRegistry system tags sync with its associated application. We remove the resource's AppRegistry system tags if it does not associate with the application. The caller must have permissions to read and update the resource.
    @Sendable
    public func syncResource(_ input: SyncResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> SyncResourceResponse {
        return try await self.client.execute(
            operation: "SyncResource", 
            path: "/sync/{resourceType}/{resource}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Assigns one or more tags (key-value pairs) to the specified resource. Each tag consists of a key and an optional value. If a tag with the same key is already associated with the resource, this action updates its value. This operation returns an empty response if the call was successful.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes tags from a resource. This operation returns an empty response if the call was successful.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an existing application with new attributes.
    @Sendable
    public func updateApplication(_ input: UpdateApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateApplicationResponse {
        return try await self.client.execute(
            operation: "UpdateApplication", 
            path: "/applications/{application}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an existing attribute group with new details.
    @Sendable
    public func updateAttributeGroup(_ input: UpdateAttributeGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateAttributeGroupResponse {
        return try await self.client.execute(
            operation: "UpdateAttributeGroup", 
            path: "/attribute-groups/{attributeGroup}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension ServiceCatalogAppRegistry {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ServiceCatalogAppRegistry, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ServiceCatalogAppRegistry {
    /// Retrieves a list of all of your applications. Results are paginated.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listApplicationsPaginator(
        _ input: ListApplicationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListApplicationsRequest, ListApplicationsResponse> {
        return .init(
            input: input,
            command: self.listApplications,
            inputKey: \ListApplicationsRequest.nextToken,
            outputKey: \ListApplicationsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all attribute groups that are associated with specified application.  Results are paginated.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAssociatedAttributeGroupsPaginator(
        _ input: ListAssociatedAttributeGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAssociatedAttributeGroupsRequest, ListAssociatedAttributeGroupsResponse> {
        return .init(
            input: input,
            command: self.listAssociatedAttributeGroups,
            inputKey: \ListAssociatedAttributeGroupsRequest.nextToken,
            outputKey: \ListAssociatedAttributeGroupsResponse.nextToken,
            logger: logger
        )
    }

    ///  Lists all  of the resources  that are associated  with the specified application. Results are paginated.    If you share an application,  and a consumer account associates a tag query  to the application,  all of the users  who can access the application  can also view the tag values  in all accounts  that are associated  with it  using this API.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAssociatedResourcesPaginator(
        _ input: ListAssociatedResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAssociatedResourcesRequest, ListAssociatedResourcesResponse> {
        return .init(
            input: input,
            command: self.listAssociatedResources,
            inputKey: \ListAssociatedResourcesRequest.nextToken,
            outputKey: \ListAssociatedResourcesResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all attribute groups which you have access to. Results are paginated.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAttributeGroupsPaginator(
        _ input: ListAttributeGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAttributeGroupsRequest, ListAttributeGroupsResponse> {
        return .init(
            input: input,
            command: self.listAttributeGroups,
            inputKey: \ListAttributeGroupsRequest.nextToken,
            outputKey: \ListAttributeGroupsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists the details of all attribute groups associated with a specific application. The results display in pages.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAttributeGroupsForApplicationPaginator(
        _ input: ListAttributeGroupsForApplicationRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAttributeGroupsForApplicationRequest, ListAttributeGroupsForApplicationResponse> {
        return .init(
            input: input,
            command: self.listAttributeGroupsForApplication,
            inputKey: \ListAttributeGroupsForApplicationRequest.nextToken,
            outputKey: \ListAttributeGroupsForApplicationResponse.nextToken,
            logger: logger
        )
    }
}

extension ServiceCatalogAppRegistry.ListApplicationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalogAppRegistry.ListApplicationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ServiceCatalogAppRegistry.ListAssociatedAttributeGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalogAppRegistry.ListAssociatedAttributeGroupsRequest {
        return .init(
            application: self.application,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ServiceCatalogAppRegistry.ListAssociatedResourcesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalogAppRegistry.ListAssociatedResourcesRequest {
        return .init(
            application: self.application,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ServiceCatalogAppRegistry.ListAttributeGroupsForApplicationRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalogAppRegistry.ListAttributeGroupsForApplicationRequest {
        return .init(
            application: self.application,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ServiceCatalogAppRegistry.ListAttributeGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServiceCatalogAppRegistry.ListAttributeGroupsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
