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

/// Service object for interacting with AWS VerifiedPermissions service.
///
/// Amazon Verified Permissions is a permissions management service from Amazon Web Services. You can use Verified Permissions to manage permissions for your application, and authorize user access based on those permissions. Using Verified Permissions, application developers can grant access based on information about the users, resources, and requested actions. You can also evaluate additional information like group membership, attributes of the resources, and session context, such as time of request and IP addresses. Verified Permissions manages these permissions by letting you create and store authorization policies for your applications, such as consumer-facing web sites and enterprise business systems. Verified Permissions uses Cedar as the policy language to express your permission requirements. Cedar supports both role-based access control (RBAC) and attribute-based access control (ABAC) authorization models. For more information about configuring, administering, and using Amazon Verified Permissions in your applications, see the Amazon Verified Permissions User Guide. For more information about the Cedar policy language, see the Cedar Policy Language Guide.  When you write Cedar policies that reference principals, resources and actions, you can define the unique identifiers used for each of those elements. We strongly recommend that you follow these best practices:    Use values like universally unique identifiers (UUIDs) for all principal and resource identifiers.  For example, if user jane leaves the company, and you later let someone else use the name jane, then that new user automatically gets access to everything granted by policies that still reference User::"jane". Cedar can’t distinguish between the new user and the old. This applies to both principal and resource identifiers. Always use identifiers that are guaranteed unique and never reused to ensure that you don’t unintentionally grant access because of the presence of an old identifier in a policy. Where you use a UUID for an entity, we recommend that you follow it with the // comment specifier and the ‘friendly’ name of your entity. This helps to make your policies easier to understand. For example: principal == User::"a1b2c3d4-e5f6-a1b2-c3d4-EXAMPLE11111", // alice    Do not include personally identifying, confidential, or sensitive information as part of the unique identifier for your principals or resources. These identifiers are included in log entries shared in CloudTrail trails.    Several operations return structures that appear similar, but have different purposes. As new functionality is added to the product, the structure used in a parameter of one operation might need to change in a way that wouldn't make sense for the same parameter in a different operation. To help you understand the purpose of each, the following naming convention is used for the structures:   Parameter type structures that end in Detail are used in Get operations.   Parameter type structures that end in Item are used in List operations.   Parameter type structures that use neither suffix are used in the mutating (create and update) operations.
public struct VerifiedPermissions: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the VerifiedPermissions client
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
            amzTarget: "VerifiedPermissions",
            serviceName: "VerifiedPermissions",
            serviceIdentifier: "verifiedpermissions",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2021-12-01",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: VerifiedPermissionsErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "ca-central-1": "verifiedpermissions-fips.ca-central-1.amazonaws.com",
            "us-east-1": "verifiedpermissions-fips.us-east-1.amazonaws.com",
            "us-east-2": "verifiedpermissions-fips.us-east-2.amazonaws.com",
            "us-west-1": "verifiedpermissions-fips.us-west-1.amazonaws.com",
            "us-west-2": "verifiedpermissions-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Makes a series of decisions about multiple authorization requests for one principal or resource. Each request contains the equivalent content of an IsAuthorized request: principal, action, resource, and context. Either the principal or the resource parameter must be identical across all requests. For example, Verified Permissions won't evaluate a pair of requests where bob views photo1 and alice views photo2. Authorization of bob to view photo1 and photo2, or bob and alice to view photo1, are valid batches.  The request is evaluated against all policies in the specified policy store that match the entities that you declare. The result of the decisions is a series of Allow or Deny responses, along with the IDs of the policies that produced each decision. The entities of a BatchIsAuthorized API request can contain up to 100 principals and up to 100 resources. The requests of a BatchIsAuthorized API request can contain up to 30 requests.  The BatchIsAuthorized operation doesn't have its own IAM permission. To authorize this operation for Amazon Web Services principals, include the permission verifiedpermissions:IsAuthorized in their IAM policies.
    @Sendable
    public func batchIsAuthorized(_ input: BatchIsAuthorizedInput, logger: Logger = AWSClient.loggingDisabled) async throws -> BatchIsAuthorizedOutput {
        return try await self.client.execute(
            operation: "BatchIsAuthorized", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Makes a series of decisions about multiple authorization requests for one token. The principal in this request comes from an external identity source in the form of an identity or access token, formatted as a JSON web token (JWT). The information in the parameters can also define additional context that Verified Permissions can include in the evaluations. The request is evaluated against all policies in the specified policy store that match the entities that you provide in the entities declaration and in the token. The result of the decisions is a series of Allow or Deny responses, along with the IDs of the policies that produced each decision. The entities of a BatchIsAuthorizedWithToken API request can contain up to 100 resources and up to 99 user groups. The requests of a BatchIsAuthorizedWithToken API request can contain up to 30 requests.  The BatchIsAuthorizedWithToken operation doesn't have its own IAM permission. To authorize this operation for Amazon Web Services principals, include the permission verifiedpermissions:IsAuthorizedWithToken in their IAM policies.
    @Sendable
    public func batchIsAuthorizedWithToken(_ input: BatchIsAuthorizedWithTokenInput, logger: Logger = AWSClient.loggingDisabled) async throws -> BatchIsAuthorizedWithTokenOutput {
        return try await self.client.execute(
            operation: "BatchIsAuthorizedWithToken", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a reference to an Amazon Cognito user pool as an external identity provider (IdP).  After you create an identity source, you can use the identities provided by the IdP as proxies for the principal in authorization queries that use the IsAuthorizedWithToken operation. These identities take the form of tokens that contain claims about the user, such as IDs, attributes and group memberships. Amazon Cognito provides both identity tokens and access tokens, and Verified Permissions can use either or both. Any combination of identity and access tokens results in the same Cedar principal. Verified Permissions automatically translates the information about the identities into the standard Cedar attributes that can be evaluated by your policies. Because the Amazon Cognito identity and access tokens can contain different information, the tokens you choose to use determine which principal attributes are available to access when evaluating Cedar policies.  If you delete a Amazon Cognito user pool or user, tokens from that deleted pool or that deleted user continue to be usable until they expire.   To reference a user from this identity source in your Cedar policies, use the following syntax.  IdentityType::"&lt;CognitoUserPoolIdentifier&gt;|&lt;CognitoClientId&gt;  Where IdentityType is the string that you provide to the PrincipalEntityType parameter for this operation. The CognitoUserPoolId and CognitoClientId are defined by the Amazon Cognito user pool.   Verified Permissions is  eventually consistent . It can take a few seconds for a new or changed element to propagate through the service and be visible in the results of other Verified Permissions operations.
    @Sendable
    public func createIdentitySource(_ input: CreateIdentitySourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateIdentitySourceOutput {
        return try await self.client.execute(
            operation: "CreateIdentitySource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a Cedar policy and saves it in the specified policy store. You can create either a static policy or a policy linked to a policy template.   To create a static policy, provide the Cedar policy text in the StaticPolicy section of the PolicyDefinition.   To create a policy that is dynamically linked to a policy template, specify the policy template ID and the principal and resource to associate with this policy in the templateLinked section of the PolicyDefinition. If the policy template is ever updated, any policies linked to the policy template automatically use the updated template.    Creating a policy causes it to be validated against the schema in the policy store. If the policy doesn't pass validation, the operation fails and the policy isn't stored.   Verified Permissions is  eventually consistent . It can take a few seconds for a new or changed element to propagate through the service and be visible in the results of other Verified Permissions operations.
    @Sendable
    public func createPolicy(_ input: CreatePolicyInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreatePolicyOutput {
        return try await self.client.execute(
            operation: "CreatePolicy", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a policy store. A policy store is a container for policy resources.  Although Cedar supports multiple namespaces, Verified Permissions currently supports only one namespace per policy store.   Verified Permissions is  eventually consistent . It can take a few seconds for a new or changed element to propagate through the service and be visible in the results of other Verified Permissions operations.
    @Sendable
    public func createPolicyStore(_ input: CreatePolicyStoreInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreatePolicyStoreOutput {
        return try await self.client.execute(
            operation: "CreatePolicyStore", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a policy template. A template can use placeholders for the principal and resource. A template must be instantiated into a policy by associating it with specific principals and resources to use for the placeholders. That instantiated policy can then be considered in authorization decisions. The instantiated policy works identically to any other policy, except that it is dynamically linked to the template. If the template changes, then any policies that are linked to that template are immediately updated as well.  Verified Permissions is  eventually consistent . It can take a few seconds for a new or changed element to propagate through the service and be visible in the results of other Verified Permissions operations.
    @Sendable
    public func createPolicyTemplate(_ input: CreatePolicyTemplateInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreatePolicyTemplateOutput {
        return try await self.client.execute(
            operation: "CreatePolicyTemplate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an identity source that references an identity provider (IdP) such as Amazon Cognito. After you delete the identity source, you can no longer use tokens for identities from that identity source to represent principals in authorization queries made using IsAuthorizedWithToken. operations.
    @Sendable
    public func deleteIdentitySource(_ input: DeleteIdentitySourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteIdentitySourceOutput {
        return try await self.client.execute(
            operation: "DeleteIdentitySource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified policy from the policy store. This operation is idempotent; if you specify a policy that doesn't  exist, the request response returns a successful HTTP 200 status code.
    @Sendable
    public func deletePolicy(_ input: DeletePolicyInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeletePolicyOutput {
        return try await self.client.execute(
            operation: "DeletePolicy", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified policy store. This operation is idempotent. If you specify a policy store that does not exist, the request response will still return a successful HTTP 200 status code.
    @Sendable
    public func deletePolicyStore(_ input: DeletePolicyStoreInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeletePolicyStoreOutput {
        return try await self.client.execute(
            operation: "DeletePolicyStore", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the specified policy template from the policy store.  This operation also deletes any policies that were created from the specified policy template. Those policies are immediately removed from all future API responses, and are asynchronously deleted from the policy store.
    @Sendable
    public func deletePolicyTemplate(_ input: DeletePolicyTemplateInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DeletePolicyTemplateOutput {
        return try await self.client.execute(
            operation: "DeletePolicyTemplate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the details about the specified identity source.
    @Sendable
    public func getIdentitySource(_ input: GetIdentitySourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetIdentitySourceOutput {
        return try await self.client.execute(
            operation: "GetIdentitySource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves information about the specified policy.
    @Sendable
    public func getPolicy(_ input: GetPolicyInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetPolicyOutput {
        return try await self.client.execute(
            operation: "GetPolicy", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves details about a policy store.
    @Sendable
    public func getPolicyStore(_ input: GetPolicyStoreInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetPolicyStoreOutput {
        return try await self.client.execute(
            operation: "GetPolicyStore", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve the details for the specified policy template in the specified policy store.
    @Sendable
    public func getPolicyTemplate(_ input: GetPolicyTemplateInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetPolicyTemplateOutput {
        return try await self.client.execute(
            operation: "GetPolicyTemplate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve the details for the specified schema in the specified policy store.
    @Sendable
    public func getSchema(_ input: GetSchemaInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSchemaOutput {
        return try await self.client.execute(
            operation: "GetSchema", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Makes an authorization decision about a service request described in the parameters. The information in the parameters can also define additional context that Verified Permissions can include in the evaluation. The request is evaluated against all matching policies in the specified policy store. The result of the decision is either Allow or Deny, along with a list of the policies that resulted in the decision.
    @Sendable
    public func isAuthorized(_ input: IsAuthorizedInput, logger: Logger = AWSClient.loggingDisabled) async throws -> IsAuthorizedOutput {
        return try await self.client.execute(
            operation: "IsAuthorized", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Makes an authorization decision about a service request described in the parameters. The principal in this request comes from an external identity source in the form of an identity token formatted as a JSON web token (JWT). The information in the parameters can also define additional context that Verified Permissions can include in the evaluation. The request is evaluated against all matching policies in the specified policy store. The result of the decision is either Allow or Deny, along with a list of the policies that resulted in the decision. At this time, Verified Permissions accepts tokens from only Amazon Cognito. Verified Permissions validates each token that is specified in a request by checking its expiration date and its signature.  If you delete a Amazon Cognito user pool or user, tokens from that deleted pool or that deleted user continue to be usable until they expire.
    @Sendable
    public func isAuthorizedWithToken(_ input: IsAuthorizedWithTokenInput, logger: Logger = AWSClient.loggingDisabled) async throws -> IsAuthorizedWithTokenOutput {
        return try await self.client.execute(
            operation: "IsAuthorizedWithToken", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a paginated list of all of the identity sources defined in the specified policy store.
    @Sendable
    public func listIdentitySources(_ input: ListIdentitySourcesInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListIdentitySourcesOutput {
        return try await self.client.execute(
            operation: "ListIdentitySources", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a paginated list of all policies stored in the specified policy store.
    @Sendable
    public func listPolicies(_ input: ListPoliciesInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPoliciesOutput {
        return try await self.client.execute(
            operation: "ListPolicies", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a paginated list of all policy stores in the calling Amazon Web Services account.
    @Sendable
    public func listPolicyStores(_ input: ListPolicyStoresInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPolicyStoresOutput {
        return try await self.client.execute(
            operation: "ListPolicyStores", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a paginated list of all policy templates in the specified policy store.
    @Sendable
    public func listPolicyTemplates(_ input: ListPolicyTemplatesInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPolicyTemplatesOutput {
        return try await self.client.execute(
            operation: "ListPolicyTemplates", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates or updates the policy schema in the specified policy store. The schema is used to validate any Cedar policies and policy templates submitted to the policy store. Any changes to the schema validate only policies and templates submitted after the schema change. Existing policies and templates are not re-evaluated against the changed schema. If you later update a policy, then it is evaluated against the new schema at that time.  Verified Permissions is  eventually consistent . It can take a few seconds for a new or changed element to propagate through the service and be visible in the results of other Verified Permissions operations.
    @Sendable
    public func putSchema(_ input: PutSchemaInput, logger: Logger = AWSClient.loggingDisabled) async throws -> PutSchemaOutput {
        return try await self.client.execute(
            operation: "PutSchema", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the specified identity source to use a new identity provider (IdP) source, or to change the mapping of identities from the IdP to a different principal entity type.  Verified Permissions is  eventually consistent . It can take a few seconds for a new or changed element to propagate through the service and be visible in the results of other Verified Permissions operations.
    @Sendable
    public func updateIdentitySource(_ input: UpdateIdentitySourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateIdentitySourceOutput {
        return try await self.client.execute(
            operation: "UpdateIdentitySource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Modifies a Cedar static policy in the specified policy store. You can change only certain elements of the UpdatePolicyDefinition parameter. You can directly update only static policies. To change a template-linked policy, you must update the template instead, using UpdatePolicyTemplate.    If policy validation is enabled in the policy store, then updating a static policy causes Verified Permissions to validate the policy against the schema in the policy store. If the updated static policy doesn't pass validation, the operation fails and the update isn't stored.   When you edit a static policy, you can change only certain elements of a static policy:   The action referenced by the policy.    A condition clause, such as when and unless.    You can't change these elements of a static policy:    Changing a policy from a static policy to a template-linked policy.    Changing the effect of a static policy from permit or forbid.    The principal referenced by a static policy.    The resource referenced by a static policy.      To update a template-linked policy, you must update the template instead.      Verified Permissions is  eventually consistent . It can take a few seconds for a new or changed element to propagate through the service and be visible in the results of other Verified Permissions operations.
    @Sendable
    public func updatePolicy(_ input: UpdatePolicyInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdatePolicyOutput {
        return try await self.client.execute(
            operation: "UpdatePolicy", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Modifies the validation setting for a policy store.  Verified Permissions is  eventually consistent . It can take a few seconds for a new or changed element to propagate through the service and be visible in the results of other Verified Permissions operations.
    @Sendable
    public func updatePolicyStore(_ input: UpdatePolicyStoreInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdatePolicyStoreOutput {
        return try await self.client.execute(
            operation: "UpdatePolicyStore", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the specified policy template. You can update only the description and the some elements of the policyBody.   Changes you make to the policy template content are immediately (within the constraints of eventual consistency) reflected in authorization decisions that involve all template-linked policies instantiated from this template.   Verified Permissions is  eventually consistent . It can take a few seconds for a new or changed element to propagate through the service and be visible in the results of other Verified Permissions operations.
    @Sendable
    public func updatePolicyTemplate(_ input: UpdatePolicyTemplateInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdatePolicyTemplateOutput {
        return try await self.client.execute(
            operation: "UpdatePolicyTemplate", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension VerifiedPermissions {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: VerifiedPermissions, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension VerifiedPermissions {
    /// Returns a paginated list of all of the identity sources defined in the specified policy store.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listIdentitySourcesPaginator(
        _ input: ListIdentitySourcesInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListIdentitySourcesInput, ListIdentitySourcesOutput> {
        return .init(
            input: input,
            command: self.listIdentitySources,
            inputKey: \ListIdentitySourcesInput.nextToken,
            outputKey: \ListIdentitySourcesOutput.nextToken,
            logger: logger
        )
    }

    /// Returns a paginated list of all policies stored in the specified policy store.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPoliciesPaginator(
        _ input: ListPoliciesInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPoliciesInput, ListPoliciesOutput> {
        return .init(
            input: input,
            command: self.listPolicies,
            inputKey: \ListPoliciesInput.nextToken,
            outputKey: \ListPoliciesOutput.nextToken,
            logger: logger
        )
    }

    /// Returns a paginated list of all policy stores in the calling Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPolicyStoresPaginator(
        _ input: ListPolicyStoresInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPolicyStoresInput, ListPolicyStoresOutput> {
        return .init(
            input: input,
            command: self.listPolicyStores,
            inputKey: \ListPolicyStoresInput.nextToken,
            outputKey: \ListPolicyStoresOutput.nextToken,
            logger: logger
        )
    }

    /// Returns a paginated list of all policy templates in the specified policy store.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPolicyTemplatesPaginator(
        _ input: ListPolicyTemplatesInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPolicyTemplatesInput, ListPolicyTemplatesOutput> {
        return .init(
            input: input,
            command: self.listPolicyTemplates,
            inputKey: \ListPolicyTemplatesInput.nextToken,
            outputKey: \ListPolicyTemplatesOutput.nextToken,
            logger: logger
        )
    }
}

extension VerifiedPermissions.ListIdentitySourcesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> VerifiedPermissions.ListIdentitySourcesInput {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            policyStoreId: self.policyStoreId
        )
    }
}

extension VerifiedPermissions.ListPoliciesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> VerifiedPermissions.ListPoliciesInput {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            policyStoreId: self.policyStoreId
        )
    }
}

extension VerifiedPermissions.ListPolicyStoresInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> VerifiedPermissions.ListPolicyStoresInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension VerifiedPermissions.ListPolicyTemplatesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> VerifiedPermissions.ListPolicyTemplatesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            policyStoreId: self.policyStoreId
        )
    }
}
