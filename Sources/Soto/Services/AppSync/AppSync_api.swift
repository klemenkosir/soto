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

/// Service object for interacting with AWS AppSync service.
///
/// AppSync provides API actions for creating and interacting with data sources using GraphQL from your application.
public struct AppSync: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the AppSync client
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
            serviceName: "AppSync",
            serviceIdentifier: "appsync",
            serviceProtocol: .restjson,
            apiVersion: "2017-07-25",
            endpoint: endpoint,
            errorType: AppSyncErrorType.self,
            xmlNamespace: "http://appsync.amazonaws.com",
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Maps an endpoint to your custom domain.
    @Sendable
    public func associateApi(_ input: AssociateApiRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateApiResponse {
        return try await self.client.execute(
            operation: "AssociateApi", 
            path: "/v1/domainnames/{domainName}/apiassociation", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates an association between a Merged API and source API using the source API's identifier.
    @Sendable
    public func associateMergedGraphqlApi(_ input: AssociateMergedGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateMergedGraphqlApiResponse {
        return try await self.client.execute(
            operation: "AssociateMergedGraphqlApi", 
            path: "/v1/sourceApis/{sourceApiIdentifier}/mergedApiAssociations", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates an association between a Merged API and source API using the Merged API's identifier.
    @Sendable
    public func associateSourceGraphqlApi(_ input: AssociateSourceGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateSourceGraphqlApiResponse {
        return try await self.client.execute(
            operation: "AssociateSourceGraphqlApi", 
            path: "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a cache for the GraphQL API.
    @Sendable
    public func createApiCache(_ input: CreateApiCacheRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateApiCacheResponse {
        return try await self.client.execute(
            operation: "CreateApiCache", 
            path: "/v1/apis/{apiId}/ApiCaches", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a unique key that you can distribute to clients who invoke your API.
    @Sendable
    public func createApiKey(_ input: CreateApiKeyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateApiKeyResponse {
        return try await self.client.execute(
            operation: "CreateApiKey", 
            path: "/v1/apis/{apiId}/apikeys", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a DataSource object.
    @Sendable
    public func createDataSource(_ input: CreateDataSourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateDataSourceResponse {
        return try await self.client.execute(
            operation: "CreateDataSource", 
            path: "/v1/apis/{apiId}/datasources", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a custom DomainName object.
    @Sendable
    public func createDomainName(_ input: CreateDomainNameRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateDomainNameResponse {
        return try await self.client.execute(
            operation: "CreateDomainName", 
            path: "/v1/domainnames", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a Function object. A function is a reusable entity. You can use multiple functions to compose the resolver logic.
    @Sendable
    public func createFunction(_ input: CreateFunctionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateFunctionResponse {
        return try await self.client.execute(
            operation: "CreateFunction", 
            path: "/v1/apis/{apiId}/functions", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a GraphqlApi object.
    @Sendable
    public func createGraphqlApi(_ input: CreateGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateGraphqlApiResponse {
        return try await self.client.execute(
            operation: "CreateGraphqlApi", 
            path: "/v1/apis", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a Resolver object. A resolver converts incoming requests into a format that a data source can understand, and converts the data source's responses into GraphQL.
    @Sendable
    public func createResolver(_ input: CreateResolverRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateResolverResponse {
        return try await self.client.execute(
            operation: "CreateResolver", 
            path: "/v1/apis/{apiId}/types/{typeName}/resolvers", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a Type object.
    @Sendable
    public func createType(_ input: CreateTypeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateTypeResponse {
        return try await self.client.execute(
            operation: "CreateType", 
            path: "/v1/apis/{apiId}/types", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an ApiCache object.
    @Sendable
    public func deleteApiCache(_ input: DeleteApiCacheRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteApiCacheResponse {
        return try await self.client.execute(
            operation: "DeleteApiCache", 
            path: "/v1/apis/{apiId}/ApiCaches", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an API key.
    @Sendable
    public func deleteApiKey(_ input: DeleteApiKeyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteApiKeyResponse {
        return try await self.client.execute(
            operation: "DeleteApiKey", 
            path: "/v1/apis/{apiId}/apikeys/{id}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a DataSource object.
    @Sendable
    public func deleteDataSource(_ input: DeleteDataSourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteDataSourceResponse {
        return try await self.client.execute(
            operation: "DeleteDataSource", 
            path: "/v1/apis/{apiId}/datasources/{name}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a custom DomainName object.
    @Sendable
    public func deleteDomainName(_ input: DeleteDomainNameRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteDomainNameResponse {
        return try await self.client.execute(
            operation: "DeleteDomainName", 
            path: "/v1/domainnames/{domainName}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a Function.
    @Sendable
    public func deleteFunction(_ input: DeleteFunctionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteFunctionResponse {
        return try await self.client.execute(
            operation: "DeleteFunction", 
            path: "/v1/apis/{apiId}/functions/{functionId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a GraphqlApi object.
    @Sendable
    public func deleteGraphqlApi(_ input: DeleteGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteGraphqlApiResponse {
        return try await self.client.execute(
            operation: "DeleteGraphqlApi", 
            path: "/v1/apis/{apiId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a Resolver object.
    @Sendable
    public func deleteResolver(_ input: DeleteResolverRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteResolverResponse {
        return try await self.client.execute(
            operation: "DeleteResolver", 
            path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a Type object.
    @Sendable
    public func deleteType(_ input: DeleteTypeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteTypeResponse {
        return try await self.client.execute(
            operation: "DeleteType", 
            path: "/v1/apis/{apiId}/types/{typeName}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes an ApiAssociation object from a custom domain.
    @Sendable
    public func disassociateApi(_ input: DisassociateApiRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateApiResponse {
        return try await self.client.execute(
            operation: "DisassociateApi", 
            path: "/v1/domainnames/{domainName}/apiassociation", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an association between a Merged API and source API using the source API's identifier and the association ID.
    @Sendable
    public func disassociateMergedGraphqlApi(_ input: DisassociateMergedGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateMergedGraphqlApiResponse {
        return try await self.client.execute(
            operation: "DisassociateMergedGraphqlApi", 
            path: "/v1/sourceApis/{sourceApiIdentifier}/mergedApiAssociations/{associationId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes an association between a Merged API and source API using the Merged API's identifier and the association ID.
    @Sendable
    public func disassociateSourceGraphqlApi(_ input: DisassociateSourceGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateSourceGraphqlApiResponse {
        return try await self.client.execute(
            operation: "DisassociateSourceGraphqlApi", 
            path: "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Evaluates the given code and returns the response. The code definition requirements depend on the specified runtime. For APPSYNC_JS runtimes, the code defines the request and response functions. The request function takes the incoming request after a GraphQL operation is parsed and converts it into a request configuration for the selected data source operation. The response function interprets responses from the data source and maps it to the shape of the GraphQL field output type.
    @Sendable
    public func evaluateCode(_ input: EvaluateCodeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> EvaluateCodeResponse {
        return try await self.client.execute(
            operation: "EvaluateCode", 
            path: "/v1/dataplane-evaluatecode", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Evaluates a given template and returns the response. The mapping template can be a request or response template. Request templates take the incoming request after a GraphQL operation is parsed and convert it into a request configuration for the selected data source operation. Response templates interpret responses from the data source and map it to the shape of the GraphQL field output type. Mapping templates are written in the Apache Velocity Template Language (VTL).
    @Sendable
    public func evaluateMappingTemplate(_ input: EvaluateMappingTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> EvaluateMappingTemplateResponse {
        return try await self.client.execute(
            operation: "EvaluateMappingTemplate", 
            path: "/v1/dataplane-evaluatetemplate", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Flushes an ApiCache object.
    @Sendable
    public func flushApiCache(_ input: FlushApiCacheRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> FlushApiCacheResponse {
        return try await self.client.execute(
            operation: "FlushApiCache", 
            path: "/v1/apis/{apiId}/FlushCache", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves an ApiAssociation object.
    @Sendable
    public func getApiAssociation(_ input: GetApiAssociationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetApiAssociationResponse {
        return try await self.client.execute(
            operation: "GetApiAssociation", 
            path: "/v1/domainnames/{domainName}/apiassociation", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves an ApiCache object.
    @Sendable
    public func getApiCache(_ input: GetApiCacheRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetApiCacheResponse {
        return try await self.client.execute(
            operation: "GetApiCache", 
            path: "/v1/apis/{apiId}/ApiCaches", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a DataSource object.
    @Sendable
    public func getDataSource(_ input: GetDataSourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDataSourceResponse {
        return try await self.client.execute(
            operation: "GetDataSource", 
            path: "/v1/apis/{apiId}/datasources/{name}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the record of an existing introspection. If the retrieval is successful, the result of the instrospection will also be returned. If the retrieval fails the operation, an error message will be returned instead.
    @Sendable
    public func getDataSourceIntrospection(_ input: GetDataSourceIntrospectionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDataSourceIntrospectionResponse {
        return try await self.client.execute(
            operation: "GetDataSourceIntrospection", 
            path: "/v1/datasources/introspections/{introspectionId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a custom DomainName object.
    @Sendable
    public func getDomainName(_ input: GetDomainNameRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDomainNameResponse {
        return try await self.client.execute(
            operation: "GetDomainName", 
            path: "/v1/domainnames/{domainName}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Get a Function.
    @Sendable
    public func getFunction(_ input: GetFunctionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetFunctionResponse {
        return try await self.client.execute(
            operation: "GetFunction", 
            path: "/v1/apis/{apiId}/functions/{functionId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a GraphqlApi object.
    @Sendable
    public func getGraphqlApi(_ input: GetGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetGraphqlApiResponse {
        return try await self.client.execute(
            operation: "GetGraphqlApi", 
            path: "/v1/apis/{apiId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the list of environmental variable key-value pairs associated with an API by its ID value.
    @Sendable
    public func getGraphqlApiEnvironmentVariables(_ input: GetGraphqlApiEnvironmentVariablesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetGraphqlApiEnvironmentVariablesResponse {
        return try await self.client.execute(
            operation: "GetGraphqlApiEnvironmentVariables", 
            path: "/v1/apis/{apiId}/environmentVariables", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the introspection schema for a GraphQL API.
    @Sendable
    public func getIntrospectionSchema(_ input: GetIntrospectionSchemaRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetIntrospectionSchemaResponse {
        return try await self.client.execute(
            operation: "GetIntrospectionSchema", 
            path: "/v1/apis/{apiId}/schema", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a Resolver object.
    @Sendable
    public func getResolver(_ input: GetResolverRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetResolverResponse {
        return try await self.client.execute(
            operation: "GetResolver", 
            path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the current status of a schema creation operation.
    @Sendable
    public func getSchemaCreationStatus(_ input: GetSchemaCreationStatusRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSchemaCreationStatusResponse {
        return try await self.client.execute(
            operation: "GetSchemaCreationStatus", 
            path: "/v1/apis/{apiId}/schemacreation", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a SourceApiAssociation object.
    @Sendable
    public func getSourceApiAssociation(_ input: GetSourceApiAssociationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSourceApiAssociationResponse {
        return try await self.client.execute(
            operation: "GetSourceApiAssociation", 
            path: "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a Type object.
    @Sendable
    public func getType(_ input: GetTypeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetTypeResponse {
        return try await self.client.execute(
            operation: "GetType", 
            path: "/v1/apis/{apiId}/types/{typeName}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the API keys for a given API.  API keys are deleted automatically 60 days after they expire. However, they may still be included in the response until they have actually been deleted. You can safely call DeleteApiKey to manually delete a key before it's automatically deleted.
    @Sendable
    public func listApiKeys(_ input: ListApiKeysRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListApiKeysResponse {
        return try await self.client.execute(
            operation: "ListApiKeys", 
            path: "/v1/apis/{apiId}/apikeys", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the data sources for a given API.
    @Sendable
    public func listDataSources(_ input: ListDataSourcesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDataSourcesResponse {
        return try await self.client.execute(
            operation: "ListDataSources", 
            path: "/v1/apis/{apiId}/datasources", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists multiple custom domain names.
    @Sendable
    public func listDomainNames(_ input: ListDomainNamesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDomainNamesResponse {
        return try await self.client.execute(
            operation: "ListDomainNames", 
            path: "/v1/domainnames", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// List multiple functions.
    @Sendable
    public func listFunctions(_ input: ListFunctionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListFunctionsResponse {
        return try await self.client.execute(
            operation: "ListFunctions", 
            path: "/v1/apis/{apiId}/functions", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists your GraphQL APIs.
    @Sendable
    public func listGraphqlApis(_ input: ListGraphqlApisRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListGraphqlApisResponse {
        return try await self.client.execute(
            operation: "ListGraphqlApis", 
            path: "/v1/apis", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the resolvers for a given API and type.
    @Sendable
    public func listResolvers(_ input: ListResolversRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListResolversResponse {
        return try await self.client.execute(
            operation: "ListResolvers", 
            path: "/v1/apis/{apiId}/types/{typeName}/resolvers", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// List the resolvers that are associated with a specific function.
    @Sendable
    public func listResolversByFunction(_ input: ListResolversByFunctionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListResolversByFunctionResponse {
        return try await self.client.execute(
            operation: "ListResolversByFunction", 
            path: "/v1/apis/{apiId}/functions/{functionId}/resolvers", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the SourceApiAssociationSummary data.
    @Sendable
    public func listSourceApiAssociations(_ input: ListSourceApiAssociationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSourceApiAssociationsResponse {
        return try await self.client.execute(
            operation: "ListSourceApiAssociations", 
            path: "/v1/apis/{apiId}/sourceApiAssociations", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the tags for a resource.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/v1/tags/{resourceArn}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the types for a given API.
    @Sendable
    public func listTypes(_ input: ListTypesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTypesResponse {
        return try await self.client.execute(
            operation: "ListTypes", 
            path: "/v1/apis/{apiId}/types", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists Type objects by the source API association ID.
    @Sendable
    public func listTypesByAssociation(_ input: ListTypesByAssociationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTypesByAssociationResponse {
        return try await self.client.execute(
            operation: "ListTypesByAssociation", 
            path: "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}/types", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a list of environmental variables in an API by its ID value.  When creating an environmental variable, it must follow the constraints below:   Both JavaScript and VTL templates support environmental variables.   Environmental variables are not evaluated before function invocation.   Environmental variables only support string values.   Any defined value in an environmental variable is considered a string literal and not expanded.   Variable evaluations should ideally be performed in the function code.   When creating an environmental variable key-value pair, it must follow the additional constraints below:   Keys must begin with a letter.   Keys must be at least two characters long.   Keys can only contain letters, numbers, and the underscore character (_).   Values can be up to 512 characters long.   You can configure up to 50 key-value pairs in a GraphQL API.   You can create a list of environmental variables by adding it to the environmentVariables payload as a list in the format {"key1":"value1","key2":"value2", …}. Note that each call of the PutGraphqlApiEnvironmentVariables action will result in the overwriting of the existing environmental variable list of that API. This means the existing environmental variables will be lost. To avoid this, you must include all existing and new environmental variables in the list each time you call this action.
    @Sendable
    public func putGraphqlApiEnvironmentVariables(_ input: PutGraphqlApiEnvironmentVariablesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutGraphqlApiEnvironmentVariablesResponse {
        return try await self.client.execute(
            operation: "PutGraphqlApiEnvironmentVariables", 
            path: "/v1/apis/{apiId}/environmentVariables", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a new introspection. Returns the introspectionId of the new introspection after its creation.
    @Sendable
    public func startDataSourceIntrospection(_ input: StartDataSourceIntrospectionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartDataSourceIntrospectionResponse {
        return try await self.client.execute(
            operation: "StartDataSourceIntrospection", 
            path: "/v1/datasources/introspections", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds a new schema to your GraphQL API. This operation is asynchronous. Use  to determine when it has completed.
    @Sendable
    public func startSchemaCreation(_ input: StartSchemaCreationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartSchemaCreationResponse {
        return try await self.client.execute(
            operation: "StartSchemaCreation", 
            path: "/v1/apis/{apiId}/schemacreation", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Initiates a merge operation. Returns a status that shows the result of the merge operation.
    @Sendable
    public func startSchemaMerge(_ input: StartSchemaMergeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartSchemaMergeResponse {
        return try await self.client.execute(
            operation: "StartSchemaMerge", 
            path: "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}/merge", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Tags a resource with user-supplied tags.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/v1/tags/{resourceArn}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Untags a resource.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/v1/tags/{resourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the cache for the GraphQL API.
    @Sendable
    public func updateApiCache(_ input: UpdateApiCacheRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateApiCacheResponse {
        return try await self.client.execute(
            operation: "UpdateApiCache", 
            path: "/v1/apis/{apiId}/ApiCaches/update", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates an API key. You can update the key as long as it's not deleted.
    @Sendable
    public func updateApiKey(_ input: UpdateApiKeyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateApiKeyResponse {
        return try await self.client.execute(
            operation: "UpdateApiKey", 
            path: "/v1/apis/{apiId}/apikeys/{id}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a DataSource object.
    @Sendable
    public func updateDataSource(_ input: UpdateDataSourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateDataSourceResponse {
        return try await self.client.execute(
            operation: "UpdateDataSource", 
            path: "/v1/apis/{apiId}/datasources/{name}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a custom DomainName object.
    @Sendable
    public func updateDomainName(_ input: UpdateDomainNameRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateDomainNameResponse {
        return try await self.client.execute(
            operation: "UpdateDomainName", 
            path: "/v1/domainnames/{domainName}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a Function object.
    @Sendable
    public func updateFunction(_ input: UpdateFunctionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateFunctionResponse {
        return try await self.client.execute(
            operation: "UpdateFunction", 
            path: "/v1/apis/{apiId}/functions/{functionId}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a GraphqlApi object.
    @Sendable
    public func updateGraphqlApi(_ input: UpdateGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateGraphqlApiResponse {
        return try await self.client.execute(
            operation: "UpdateGraphqlApi", 
            path: "/v1/apis/{apiId}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a Resolver object.
    @Sendable
    public func updateResolver(_ input: UpdateResolverRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateResolverResponse {
        return try await self.client.execute(
            operation: "UpdateResolver", 
            path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates some of the configuration choices of a particular source API association.
    @Sendable
    public func updateSourceApiAssociation(_ input: UpdateSourceApiAssociationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateSourceApiAssociationResponse {
        return try await self.client.execute(
            operation: "UpdateSourceApiAssociation", 
            path: "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a Type object.
    @Sendable
    public func updateType(_ input: UpdateTypeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateTypeResponse {
        return try await self.client.execute(
            operation: "UpdateType", 
            path: "/v1/apis/{apiId}/types/{typeName}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension AppSync {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: AppSync, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
