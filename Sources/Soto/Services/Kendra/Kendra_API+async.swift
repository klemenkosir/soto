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
extension Kendra {
    // MARK: Async API Calls

    /// Grants users or groups in your Amazon Web Services SSO identity source access  to your Amazon Kendra experience. You can create an Amazon Kendra experience such as a  search application. For more information on creating a search application  experience, see Building  a search experience with no code.
    public func associateEntitiesToExperience(_ input: AssociateEntitiesToExperienceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateEntitiesToExperienceResponse {
        return try await self.client.execute(operation: "AssociateEntitiesToExperience", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Defines the specific permissions of users or groups in your Amazon Web Services SSO identity source with access to your Amazon Kendra experience. You can create an Amazon Kendra  experience such as a search application. For more information on creating a  search application experience, see Building  a search experience with no code.
    public func associatePersonasToEntities(_ input: AssociatePersonasToEntitiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociatePersonasToEntitiesResponse {
        return try await self.client.execute(operation: "AssociatePersonasToEntities", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more documents from an index. The documents must have been added with the BatchPutDocument operation. The documents are deleted asynchronously. You can see the progress of the deletion by using Amazon Web Services CloudWatch. Any error messages related to the processing of the batch are sent to you CloudWatch log.
    public func batchDeleteDocument(_ input: BatchDeleteDocumentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeleteDocumentResponse {
        return try await self.client.execute(operation: "BatchDeleteDocument", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the indexing status for one or more documents submitted with the  BatchPutDocument operation. When you use the BatchPutDocument operation, documents are indexed asynchronously. You can use the BatchGetDocumentStatus operation to get the current status of a list of documents so that you can determine if they have been successfully indexed. You can also use the BatchGetDocumentStatus operation to check the status of the  BatchDeleteDocument operation. When a document is deleted from the index, Amazon Kendra returns NOT_FOUND as the status.
    public func batchGetDocumentStatus(_ input: BatchGetDocumentStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetDocumentStatusResponse {
        return try await self.client.execute(operation: "BatchGetDocumentStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds one or more documents to an index. The BatchPutDocument operation enables you to ingest inline documents or a set of documents stored in an Amazon S3 bucket. Use this operation to ingest your text and unstructured text into an index, add custom attributes to the documents, and to attach an access control list to the documents added to the index. The documents are indexed asynchronously. You can see the progress of the batch using Amazon Web Services CloudWatch. Any error messages related to processing the batch are sent to your Amazon Web Services CloudWatch log.
    public func batchPutDocument(_ input: BatchPutDocumentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchPutDocumentResponse {
        return try await self.client.execute(operation: "BatchPutDocument", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Clears existing query suggestions from an index. This deletes existing suggestions only, not the queries  in the query log. After you clear suggestions, Amazon Kendra learns  new suggestions based on new queries added to the query log  from the time you cleared suggestions. If you do not see any  new suggestions, then please allow Amazon Kendra to collect  enough queries to learn new suggestions.  ClearQuerySuggestions is currently not supported in the  Amazon Web Services GovCloud (US-West) region.
    public func clearQuerySuggestions(_ input: ClearQuerySuggestionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "ClearQuerySuggestions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a data source that you want to use with an Amazon Kendra index.  You specify a name, data source connector type and description for your data source. You also specify configuration information for the  data source connector.  CreateDataSource is a synchronous operation. The operation returns 200 if the data source was successfully created. Otherwise, an exception is raised. Amazon S3 and custom data sources are  the only supported data sources in the Amazon Web Services GovCloud (US-West) region.
    public func createDataSource(_ input: CreateDataSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDataSourceResponse {
        return try await self.client.execute(operation: "CreateDataSource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Amazon Kendra experience such as a search application. For more information  on creating a search application experience, see Building a  search experience with no code.
    public func createExperience(_ input: CreateExperienceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateExperienceResponse {
        return try await self.client.execute(operation: "CreateExperience", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an new set of frequently asked question (FAQ) questions and answers.
    public func createFaq(_ input: CreateFaqRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFaqResponse {
        return try await self.client.execute(operation: "CreateFaq", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Amazon Kendra index. Index creation is an asynchronous operation. To determine if index creation has completed, check the Status field returned from a call to DescribeIndex. The Status field is set to ACTIVE when the index is ready to use. Once the index is active you can index your documents using the BatchPutDocument operation or using one of the supported data sources.
    public func createIndex(_ input: CreateIndexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIndexResponse {
        return try await self.client.execute(operation: "CreateIndex", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a block list to exlcude certain queries from suggestions. Any query that contains words or phrases specified in the block  list is blocked or filtered out from being shown as a suggestion. You need to provide the file location of your block list text file  in your S3 bucket. In your text file, enter each block word or phrase  on a separate line. For information on the current quota limits for block lists, see  Quotas  for Amazon Kendra.  CreateQuerySuggestionsBlockList is currently not supported in the  Amazon Web Services GovCloud (US-West) region.
    public func createQuerySuggestionsBlockList(_ input: CreateQuerySuggestionsBlockListRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateQuerySuggestionsBlockListResponse {
        return try await self.client.execute(operation: "CreateQuerySuggestionsBlockList", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a thesaurus for an index. The thesaurus contains a list of synonyms in Solr format.
    public func createThesaurus(_ input: CreateThesaurusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateThesaurusResponse {
        return try await self.client.execute(operation: "CreateThesaurus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Amazon Kendra data source. An exception is not thrown if the data source is already being deleted. While the data source is being deleted, the Status field returned by a call to the DescribeDataSource operation is set to DELETING. For more information, see Deleting Data Sources.
    public func deleteDataSource(_ input: DeleteDataSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteDataSource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes your Amazon Kendra experience such as a search application. For more information on creating a search application experience, see Building a search experience with no code.
    public func deleteExperience(_ input: DeleteExperienceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteExperienceResponse {
        return try await self.client.execute(operation: "DeleteExperience", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes an FAQ from an index.
    public func deleteFaq(_ input: DeleteFaqRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteFaq", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing Amazon Kendra index. An exception is not thrown if the index is already being deleted. While the index is being deleted, the Status field returned by a call to the DescribeIndex operation is set to DELETING.
    public func deleteIndex(_ input: DeleteIndexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteIndex", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a group so that all users and sub groups that belong to the group can  no longer access documents only available to that group. For example, after deleting the group "Summer Interns", all interns who  belonged to that group no longer see intern-only documents in their search  results. If you want to delete or replace users or sub groups of a group, you need to  use the PutPrincipalMapping operation. For example, if a user in  the group "Engineering" leaves the engineering team and another user takes  their place, you provide an updated list of users or sub groups that belong  to the "Engineering" group when calling PutPrincipalMapping. You  can update your internal list of users or sub groups and input this list  when calling PutPrincipalMapping.  DeletePrincipalMapping is currently not supported in the  Amazon Web Services GovCloud (US-West) region.
    public func deletePrincipalMapping(_ input: DeletePrincipalMappingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeletePrincipalMapping", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a block list used for query suggestions for an index. A deleted block list might not take effect right away. Amazon Kendra  needs to refresh the entire suggestions list to add back the  queries that were previously blocked.  DeleteQuerySuggestionsBlockList is currently not supported in the  Amazon Web Services GovCloud (US-West) region.
    public func deleteQuerySuggestionsBlockList(_ input: DeleteQuerySuggestionsBlockListRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteQuerySuggestionsBlockList", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing Amazon Kendra thesaurus.
    public func deleteThesaurus(_ input: DeleteThesaurusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteThesaurus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a Amazon Kendra data source.
    public func describeDataSource(_ input: DescribeDataSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataSourceResponse {
        return try await self.client.execute(operation: "DescribeDataSource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about your Amazon Kendra experience such as a search application.  For more information on creating a search application experience,  see Building  a search experience with no code.
    public func describeExperience(_ input: DescribeExperienceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExperienceResponse {
        return try await self.client.execute(operation: "DescribeExperience", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about an FAQ list.
    public func describeFaq(_ input: DescribeFaqRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFaqResponse {
        return try await self.client.execute(operation: "DescribeFaq", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an existing Amazon Kendra index
    public func describeIndex(_ input: DescribeIndexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIndexResponse {
        return try await self.client.execute(operation: "DescribeIndex", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the processing of PUT and DELETE actions  for mapping users to their groups. This includes information on the status of  actions currently processing or yet to be processed, when actions were last updated,  when actions were received by Amazon Kendra, the latest action that should process  and apply after other actions, and useful error messages if an action could  not be processed.  DescribePrincipalMapping is currently not supported in the  Amazon Web Services GovCloud (US-West) region.
    public func describePrincipalMapping(_ input: DescribePrincipalMappingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrincipalMappingResponse {
        return try await self.client.execute(operation: "DescribePrincipalMapping", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a block list used for query suggestions for an index. This is used to check the current settings that are applied to a  block list.  DescribeQuerySuggestionsBlockList is currently not supported in the  Amazon Web Services GovCloud (US-West) region.
    public func describeQuerySuggestionsBlockList(_ input: DescribeQuerySuggestionsBlockListRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQuerySuggestionsBlockListResponse {
        return try await self.client.execute(operation: "DescribeQuerySuggestionsBlockList", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the settings of query suggestions for an index. This is used to check the current settings applied  to query suggestions.  DescribeQuerySuggestionsConfig is currently not supported in the  Amazon Web Services GovCloud (US-West) region.
    public func describeQuerySuggestionsConfig(_ input: DescribeQuerySuggestionsConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQuerySuggestionsConfigResponse {
        return try await self.client.execute(operation: "DescribeQuerySuggestionsConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an existing Amazon Kendra thesaurus.
    public func describeThesaurus(_ input: DescribeThesaurusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeThesaurusResponse {
        return try await self.client.execute(operation: "DescribeThesaurus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Prevents users or groups in your Amazon Web Services SSO identity source from accessing your Amazon Kendra experience. You can create an Amazon Kendra experience  such as a search application. For more information on creating a search  application experience, see Building  a search experience with no code.
    public func disassociateEntitiesFromExperience(_ input: DisassociateEntitiesFromExperienceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateEntitiesFromExperienceResponse {
        return try await self.client.execute(operation: "DisassociateEntitiesFromExperience", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specific permissions of users or groups in your Amazon Web Services SSO  identity source with access to your Amazon Kendra experience. You can create an Amazon Kendra  experience such as a search application. For more information on creating a  search application experience, see Building a  search experience with no code.
    public func disassociatePersonasFromEntities(_ input: DisassociatePersonasFromEntitiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociatePersonasFromEntitiesResponse {
        return try await self.client.execute(operation: "DisassociatePersonasFromEntities", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Fetches the queries that are suggested to your users.  GetQuerySuggestions is currently not supported in the  Amazon Web Services GovCloud (US-West) region.
    public func getQuerySuggestions(_ input: GetQuerySuggestionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetQuerySuggestionsResponse {
        return try await self.client.execute(operation: "GetQuerySuggestions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves search metrics data. The data provides a snapshot of how your users interact with your search application and how effective the application is.
    public func getSnapshots(_ input: GetSnapshotsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSnapshotsResponse {
        return try await self.client.execute(operation: "GetSnapshots", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets statistics about synchronizing Amazon Kendra with a data source.
    public func listDataSourceSyncJobs(_ input: ListDataSourceSyncJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDataSourceSyncJobsResponse {
        return try await self.client.execute(operation: "ListDataSourceSyncJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the data sources that you have created.
    public func listDataSources(_ input: ListDataSourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDataSourcesResponse {
        return try await self.client.execute(operation: "ListDataSources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists specific permissions of users and groups with access to your  Amazon Kendra experience.
    public func listEntityPersonas(_ input: ListEntityPersonasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEntityPersonasResponse {
        return try await self.client.execute(operation: "ListEntityPersonas", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists users or groups in your Amazon Web Services SSO identity source that are  granted access to your Amazon Kendra experience. You can create an Amazon Kendra experience  such as a search application. For more information on creating a search  application experience, see Building  a search experience with no code.
    public func listExperienceEntities(_ input: ListExperienceEntitiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListExperienceEntitiesResponse {
        return try await self.client.execute(operation: "ListExperienceEntities", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists one or more Amazon Kendra experiences. You can create an Amazon Kendra experience such  as a search application. For more information on creating a search application  experience, see Building a  search experience with no code.
    public func listExperiences(_ input: ListExperiencesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListExperiencesResponse {
        return try await self.client.execute(operation: "ListExperiences", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of FAQ lists associated with an index.
    public func listFaqs(_ input: ListFaqsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFaqsResponse {
        return try await self.client.execute(operation: "ListFaqs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a list of groups that are mapped to users before a  given ordering or timestamp identifier.  ListGroupsOlderThanOrderingId is currently not supported in the  Amazon Web Services GovCloud (US-West) region.
    public func listGroupsOlderThanOrderingId(_ input: ListGroupsOlderThanOrderingIdRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListGroupsOlderThanOrderingIdResponse {
        return try await self.client.execute(operation: "ListGroupsOlderThanOrderingId", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the Amazon Kendra indexes that you have created.
    public func listIndices(_ input: ListIndicesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListIndicesResponse {
        return try await self.client.execute(operation: "ListIndices", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the block lists used for query suggestions for an index. For information on the current quota limits for block lists, see  Quotas  for Amazon Kendra.  ListQuerySuggestionsBlockLists is currently not supported in the  Amazon Web Services GovCloud (US-West) region.
    public func listQuerySuggestionsBlockLists(_ input: ListQuerySuggestionsBlockListsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListQuerySuggestionsBlockListsResponse {
        return try await self.client.execute(operation: "ListQuerySuggestionsBlockLists", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of tags associated with a specified resource. Indexes, FAQs, and data sources can have tags associated with them.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the Amazon Kendra thesauri associated with an index.
    public func listThesauri(_ input: ListThesauriRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListThesauriResponse {
        return try await self.client.execute(operation: "ListThesauri", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Maps users to their groups so that you only need to provide  the user ID when you issue the query. You can also map sub groups to groups.  For example, the group "Company Intellectual Property Teams" includes  sub groups "Research" and "Engineering". These sub groups include their own list of users or people who work in these teams. Only users who work  in research and engineering, and therefore belong in the intellectual  property group, can see top-secret company documents in their search  results. You map users to their groups when you want to filter search results  for different users based on their group’s access to documents. For more  information on filtering search results for different users, see  Filtering  on user context. If more than five PUT actions for a group are currently  processing, a validation exception is thrown.  PutPrincipalMapping is currently not supported in the  Amazon Web Services GovCloud (US-West) region.
    public func putPrincipalMapping(_ input: PutPrincipalMappingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "PutPrincipalMapping", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Searches an active index. Use this API to search your documents using query. The Query operation enables to do faceted search and to filter results based on document attributes. It also enables you to provide user context that Amazon Kendra uses to enforce document access control in the search results.  Amazon Kendra searches your index for text content and question and answer (FAQ) content. By default the response contains three types of results.   Relevant passages   Matching FAQs   Relevant documents   You can specify that the query return only one type of result using the QueryResultTypeConfig parameter. Each query returns the 100 most relevant results.
    public func query(_ input: QueryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryResult {
        return try await self.client.execute(operation: "Query", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a synchronization job for a data source. If a synchronization job is already in progress, Amazon Kendra returns a ResourceInUseException exception.
    public func startDataSourceSyncJob(_ input: StartDataSourceSyncJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartDataSourceSyncJobResponse {
        return try await self.client.execute(operation: "StartDataSourceSyncJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops a running synchronization job. You can't stop a scheduled synchronization job.
    public func stopDataSourceSyncJob(_ input: StopDataSourceSyncJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "StopDataSourceSyncJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables you to provide feedback to Amazon Kendra to improve the performance of your index.  SubmitFeedback is currently not supported in the  Amazon Web Services GovCloud (US-West) region.
    public func submitFeedback(_ input: SubmitFeedbackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "SubmitFeedback", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds the specified tag to the specified index, FAQ, or data source resource. If the tag already exists, the existing value is replaced with the new value.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a tag from an index, FAQ, or a data source.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing Amazon Kendra data source.
    public func updateDataSource(_ input: UpdateDataSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateDataSource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates your Amazon Kendra experience such as a search application. For more information on creating a search application experience, see Building a  search experience with no code.
    public func updateExperience(_ input: UpdateExperienceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateExperience", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing Amazon Kendra index.
    public func updateIndex(_ input: UpdateIndexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateIndex", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a block list used for query suggestions for an index. Updates to a block list might not take effect right away. Amazon Kendra  needs to refresh the entire suggestions list to apply any updates to the  block list. Other changes not related to the block list apply immediately. If a block list is updating, then you need to wait for the first update to  finish before submitting another update. Amazon Kendra supports partial updates, so you only need to provide the fields  you want to update.  UpdateQuerySuggestionsBlockList is currently not supported in the  Amazon Web Services GovCloud (US-West) region.
    public func updateQuerySuggestionsBlockList(_ input: UpdateQuerySuggestionsBlockListRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateQuerySuggestionsBlockList", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the settings of query suggestions for an index. Amazon Kendra supports partial updates, so you only need to provide  the fields you want to update. If an update is currently processing (i.e. 'happening'), you  need to wait for the update to finish before making another update. Updates to query suggestions settings might not take effect right away.  The time for your updated settings to take effect depends on the updates  made and the number of search queries in your index. You can still enable/disable query suggestions at any time.  UpdateQuerySuggestionsConfig is currently not supported in the  Amazon Web Services GovCloud (US-West) region.
    public func updateQuerySuggestionsConfig(_ input: UpdateQuerySuggestionsConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateQuerySuggestionsConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a thesaurus file associated with an index.
    public func updateThesaurus(_ input: UpdateThesaurusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateThesaurus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
