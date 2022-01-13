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

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Athena {
    ///  Streams the results of a single query execution specified by QueryExecutionId from the Athena query results location in Amazon S3. For more information, see Query Results in the Amazon Athena User Guide. This request does not execute the query but returns results. Use StartQueryExecution to run a query. To stream query results successfully, the IAM principal with permission to call GetQueryResults also must have permissions to the Amazon S3 GetObject action for the Athena query results location.  IAM principals with permission to the Amazon S3 GetObject action for the query results location are able to retrieve query results from Amazon S3 even if permission to the GetQueryResults action is denied. To restrict user or role access, ensure that Amazon S3 permissions to the Athena query location are denied.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getQueryResultsPaginator(
        _ input: GetQueryResultsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetQueryResultsInput, GetQueryResultsOutput> {
        return .init(
            input: input,
            command: getQueryResults,
            inputKey: \GetQueryResultsInput.nextToken,
            outputKey: \GetQueryResultsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the data catalogs in the current Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDataCatalogsPaginator(
        _ input: ListDataCatalogsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDataCatalogsInput, ListDataCatalogsOutput> {
        return .init(
            input: input,
            command: listDataCatalogs,
            inputKey: \ListDataCatalogsInput.nextToken,
            outputKey: \ListDataCatalogsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the databases in the specified data catalog.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDatabasesPaginator(
        _ input: ListDatabasesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDatabasesInput, ListDatabasesOutput> {
        return .init(
            input: input,
            command: listDatabases,
            inputKey: \ListDatabasesInput.nextToken,
            outputKey: \ListDatabasesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides a list of available query IDs only for queries saved in the specified workgroup. Requires that you have access to the specified workgroup. If a workgroup is not specified, lists the saved queries for the primary workgroup. For code samples using the Amazon Web Services SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listNamedQueriesPaginator(
        _ input: ListNamedQueriesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListNamedQueriesInput, ListNamedQueriesOutput> {
        return .init(
            input: input,
            command: listNamedQueries,
            inputKey: \ListNamedQueriesInput.nextToken,
            outputKey: \ListNamedQueriesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the prepared statements in the specfied workgroup.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPreparedStatementsPaginator(
        _ input: ListPreparedStatementsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPreparedStatementsInput, ListPreparedStatementsOutput> {
        return .init(
            input: input,
            command: listPreparedStatements,
            inputKey: \ListPreparedStatementsInput.nextToken,
            outputKey: \ListPreparedStatementsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides a list of available query execution IDs for the queries in the specified workgroup. If a workgroup is not specified, returns a list of query execution IDs for the primary workgroup. Requires you to have access to the workgroup in which the queries ran. For code samples using the Amazon Web Services SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listQueryExecutionsPaginator(
        _ input: ListQueryExecutionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListQueryExecutionsInput, ListQueryExecutionsOutput> {
        return .init(
            input: input,
            command: listQueryExecutions,
            inputKey: \ListQueryExecutionsInput.nextToken,
            outputKey: \ListQueryExecutionsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the metadata for the tables in the specified data catalog database.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTableMetadataPaginator(
        _ input: ListTableMetadataInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTableMetadataInput, ListTableMetadataOutput> {
        return .init(
            input: input,
            command: listTableMetadata,
            inputKey: \ListTableMetadataInput.nextToken,
            outputKey: \ListTableMetadataOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the tags associated with an Athena workgroup or data catalog resource.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutput> {
        return .init(
            input: input,
            command: listTagsForResource,
            inputKey: \ListTagsForResourceInput.nextToken,
            outputKey: \ListTagsForResourceOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists available workgroups for the account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listWorkGroupsPaginator(
        _ input: ListWorkGroupsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListWorkGroupsInput, ListWorkGroupsOutput> {
        return .init(
            input: input,
            command: listWorkGroups,
            inputKey: \ListWorkGroupsInput.nextToken,
            outputKey: \ListWorkGroupsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
