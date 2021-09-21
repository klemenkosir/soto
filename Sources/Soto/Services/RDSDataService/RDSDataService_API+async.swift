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
extension RDSDataService {
    // MARK: Async API Calls

    /// Runs a batch SQL statement over an array of data. You can run bulk update and insert operations for multiple records using a DML statement with different parameter sets. Bulk operations can provide a significant performance improvement over individual insert and update operations.  If a call isn't part of a transaction because it doesn't include the transactionID parameter, changes that result from the call are committed automatically.
    public func batchExecuteStatement(_ input: BatchExecuteStatementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchExecuteStatementResponse {
        return try await self.client.execute(operation: "BatchExecuteStatement", path: "/BatchExecute", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a SQL transaction.  &lt;important&gt; &lt;p&gt;A transaction can run for a maximum of 24 hours. A transaction is terminated and rolled back automatically after 24 hours.&lt;/p&gt; &lt;p&gt;A transaction times out if no calls use its transaction ID in three minutes. If a transaction times out before it's committed, it's rolled back automatically.&lt;/p&gt; &lt;p&gt;DDL statements inside a transaction cause an implicit commit. We recommend that you run each DDL statement in a separate &lt;code&gt;ExecuteStatement&lt;/code&gt; call with &lt;code&gt;continueAfterTimeout&lt;/code&gt; enabled.&lt;/p&gt; &lt;/important&gt;
    public func beginTransaction(_ input: BeginTransactionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BeginTransactionResponse {
        return try await self.client.execute(operation: "BeginTransaction", path: "/BeginTransaction", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Ends a SQL transaction started with the BeginTransaction operation and commits the changes.
    public func commitTransaction(_ input: CommitTransactionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CommitTransactionResponse {
        return try await self.client.execute(operation: "CommitTransaction", path: "/CommitTransaction", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Runs one or more SQL statements.  This operation is deprecated. Use the BatchExecuteStatement or ExecuteStatement operation.
    @available(*, deprecated, message: "The ExecuteSql API is deprecated, please use the ExecuteStatement API.")
    public func executeSql(_ input: ExecuteSqlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteSqlResponse {
        return try await self.client.execute(operation: "ExecuteSql", path: "/ExecuteSql", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Runs a SQL statement against a database.  If a call isn't part of a transaction because it doesn't include the transactionID parameter, changes that result from the call are committed automatically.  The response size limit is 1 MB. If the call returns more than 1 MB of response data, the call is terminated.
    public func executeStatement(_ input: ExecuteStatementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteStatementResponse {
        return try await self.client.execute(operation: "ExecuteStatement", path: "/Execute", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Performs a rollback of a transaction. Rolling back a transaction cancels its changes.
    public func rollbackTransaction(_ input: RollbackTransactionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RollbackTransactionResponse {
        return try await self.client.execute(operation: "RollbackTransaction", path: "/RollbackTransaction", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5)
