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
extension DocDB {
    // MARK: Async API Calls

    /// Adds a source identifier to an existing event notification  subscription.
    public func addSourceIdentifierToSubscription(_ input: AddSourceIdentifierToSubscriptionMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddSourceIdentifierToSubscriptionResult {
        return try await self.client.execute(operation: "AddSourceIdentifierToSubscription", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds metadata tags to an Amazon DocumentDB resource. You can use these tags  with cost allocation reporting to track costs that are associated  with Amazon DocumentDB resources or in a Condition statement in  an Identity and Access Management (IAM) policy for Amazon DocumentDB.
    public func addTagsToResource(_ input: AddTagsToResourceMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "AddTagsToResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Applies a pending maintenance action to a resource (for example,  to an Amazon DocumentDB instance).
    public func applyPendingMaintenanceAction(_ input: ApplyPendingMaintenanceActionMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyPendingMaintenanceActionResult {
        return try await self.client.execute(operation: "ApplyPendingMaintenanceAction", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Copies the specified cluster parameter group.
    public func copyDBClusterParameterGroup(_ input: CopyDBClusterParameterGroupMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyDBClusterParameterGroupResult {
        return try await self.client.execute(operation: "CopyDBClusterParameterGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Copies a snapshot of a cluster.  To copy a cluster snapshot from a shared manual cluster snapshot, SourceDBClusterSnapshotIdentifier must be the Amazon  Resource Name (ARN) of the shared cluster snapshot. You can only  copy a shared DB cluster snapshot, whether encrypted or not, in the  same Amazon Web Services Region.  To cancel the copy operation after it is in progress, delete the  target cluster snapshot identified by  TargetDBClusterSnapshotIdentifier while that cluster  snapshot is in the copying status.
    public func copyDBClusterSnapshot(_ input: CopyDBClusterSnapshotMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyDBClusterSnapshotResult {
        return try await self.client.execute(operation: "CopyDBClusterSnapshot", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Amazon DocumentDB cluster.
    public func createDBCluster(_ input: CreateDBClusterMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBClusterResult {
        return try await self.client.execute(operation: "CreateDBCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new cluster parameter group. Parameters in a cluster parameter group apply to all of the  instances in a cluster. A cluster parameter group is initially created with the default  parameters for the database engine used by instances in the cluster. In Amazon DocumentDB, you cannot make modifications directly to the  default.docdb3.6 cluster parameter group. If your  Amazon DocumentDB cluster is using the default cluster parameter group and you want to modify a value in it, you must first  create a new parameter group or  copy an existing parameter group, modify it, and then apply the modified parameter group to your  cluster. For the new cluster parameter group and associated settings to take effect, you must then reboot the instances in the cluster  without failover. For more information, see  Modifying Amazon DocumentDB Cluster Parameter Groups.
    public func createDBClusterParameterGroup(_ input: CreateDBClusterParameterGroupMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBClusterParameterGroupResult {
        return try await self.client.execute(operation: "CreateDBClusterParameterGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a snapshot of a cluster.
    public func createDBClusterSnapshot(_ input: CreateDBClusterSnapshotMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBClusterSnapshotResult {
        return try await self.client.execute(operation: "CreateDBClusterSnapshot", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new instance.
    public func createDBInstance(_ input: CreateDBInstanceMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBInstanceResult {
        return try await self.client.execute(operation: "CreateDBInstance", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new subnet group. subnet groups must contain at least one subnet in at least two Availability Zones in the Amazon Web Services Region.
    public func createDBSubnetGroup(_ input: CreateDBSubnetGroupMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBSubnetGroupResult {
        return try await self.client.execute(operation: "CreateDBSubnetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Amazon DocumentDB event notification subscription. This action requires a topic Amazon Resource Name (ARN) created by using the Amazon DocumentDB console, the Amazon SNS console, or the Amazon SNS API. To obtain an ARN with Amazon SNS, you must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in the Amazon SNS console. You can specify the type of source (SourceType) that you want to be notified of. You can also provide a list of Amazon DocumentDB sources (SourceIds) that trigger the events, and you can provide a list of event categories (EventCategories) for events that you want to be notified of. For example, you can specify SourceType = db-instance, SourceIds = mydbinstance1, mydbinstance2 and EventCategories = Availability, Backup. If you specify both the SourceType and SourceIds (such as SourceType = db-instance and SourceIdentifier = myDBInstance1), you are notified of all the db-instance events for the specified source. If you specify a SourceType but do not specify a SourceIdentifier, you receive notice of the events for that source type for all your Amazon DocumentDB sources. If you do not specify either the SourceType or the SourceIdentifier, you are notified of events generated from all Amazon DocumentDB sources belonging to your customer account.
    public func createEventSubscription(_ input: CreateEventSubscriptionMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEventSubscriptionResult {
        return try await self.client.execute(operation: "CreateEventSubscription", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Amazon DocumentDB global cluster that can span multiple multiple Amazon Web Services Regions. The global cluster contains one primary cluster with read-write capability, and up-to give read-only secondary clusters. Global clusters uses storage-based fast replication across regions with latencies less than one second, using dedicated infrastructure with no impact to your workload’s performance.  You can create a global cluster that is initially empty, and then add a primary and a secondary to it. Or you can specify an existing cluster during the create operation, and this cluster becomes the primary of the global cluster.   This action only applies to Amazon DocumentDB clusters.
    public func createGlobalCluster(_ input: CreateGlobalClusterMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGlobalClusterResult {
        return try await self.client.execute(operation: "CreateGlobalCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a previously provisioned cluster. When you delete a cluster, all automated backups for that cluster are deleted and can't be recovered. Manual DB cluster snapshots of the specified cluster are not deleted.
    public func deleteDBCluster(_ input: DeleteDBClusterMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDBClusterResult {
        return try await self.client.execute(operation: "DeleteDBCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a specified cluster parameter group. The cluster parameter group to be deleted can't be associated with any clusters.
    public func deleteDBClusterParameterGroup(_ input: DeleteDBClusterParameterGroupMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteDBClusterParameterGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a cluster snapshot. If the snapshot is being copied, the copy operation is terminated.  The cluster snapshot must be in the available state to be deleted.
    public func deleteDBClusterSnapshot(_ input: DeleteDBClusterSnapshotMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDBClusterSnapshotResult {
        return try await self.client.execute(operation: "DeleteDBClusterSnapshot", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a previously provisioned instance.
    public func deleteDBInstance(_ input: DeleteDBInstanceMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDBInstanceResult {
        return try await self.client.execute(operation: "DeleteDBInstance", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a subnet group.  The specified database subnet group must not be associated with any DB instances.
    public func deleteDBSubnetGroup(_ input: DeleteDBSubnetGroupMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteDBSubnetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Amazon DocumentDB event notification subscription.
    public func deleteEventSubscription(_ input: DeleteEventSubscriptionMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEventSubscriptionResult {
        return try await self.client.execute(operation: "DeleteEventSubscription", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a global cluster. The primary and secondary clusters must already be detached or deleted before attempting to delete a global cluster.  This action only applies to Amazon DocumentDB clusters.
    public func deleteGlobalCluster(_ input: DeleteGlobalClusterMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGlobalClusterResult {
        return try await self.client.execute(operation: "DeleteGlobalCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of certificate authority (CA) certificates provided by Amazon DocumentDB for this Amazon Web Services account.
    public func describeCertificates(_ input: DescribeCertificatesMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CertificateMessage {
        return try await self.client.execute(operation: "DescribeCertificates", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of DBClusterParameterGroup descriptions. If a DBClusterParameterGroupName parameter is specified, the list contains only the description of the specified cluster parameter group.
    public func describeDBClusterParameterGroups(_ input: DescribeDBClusterParameterGroupsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DBClusterParameterGroupsMessage {
        return try await self.client.execute(operation: "DescribeDBClusterParameterGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the detailed parameter list for a particular cluster parameter group.
    public func describeDBClusterParameters(_ input: DescribeDBClusterParametersMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DBClusterParameterGroupDetails {
        return try await self.client.execute(operation: "DescribeDBClusterParameters", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of cluster snapshot attribute names and values for a manual DB cluster snapshot. When you share snapshots with other Amazon Web Services accounts, DescribeDBClusterSnapshotAttributes returns the restore attribute and a list of IDs for the Amazon Web Services accounts that are authorized to copy or restore the manual cluster snapshot. If all is included in the list of values for the restore attribute, then the manual cluster snapshot is public and can be copied or restored by all Amazon Web Services accounts.
    public func describeDBClusterSnapshotAttributes(_ input: DescribeDBClusterSnapshotAttributesMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBClusterSnapshotAttributesResult {
        return try await self.client.execute(operation: "DescribeDBClusterSnapshotAttributes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about cluster snapshots. This API operation supports pagination.
    public func describeDBClusterSnapshots(_ input: DescribeDBClusterSnapshotsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DBClusterSnapshotMessage {
        return try await self.client.execute(operation: "DescribeDBClusterSnapshots", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about provisioned Amazon DocumentDB clusters. This API  operation supports pagination. For certain management features such as cluster and instance lifecycle management, Amazon DocumentDB leverages operational technology that is shared with Amazon RDS and Amazon  Neptune. Use the filterName=engine,Values=docdb filter  parameter to return only Amazon DocumentDB clusters.
    public func describeDBClusters(_ input: DescribeDBClustersMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DBClusterMessage {
        return try await self.client.execute(operation: "DescribeDBClusters", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the available engines.
    public func describeDBEngineVersions(_ input: DescribeDBEngineVersionsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DBEngineVersionMessage {
        return try await self.client.execute(operation: "DescribeDBEngineVersions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about provisioned Amazon DocumentDB instances. This API supports pagination.
    public func describeDBInstances(_ input: DescribeDBInstancesMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DBInstanceMessage {
        return try await self.client.execute(operation: "DescribeDBInstances", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the list will contain only the descriptions of the specified DBSubnetGroup.
    public func describeDBSubnetGroups(_ input: DescribeDBSubnetGroupsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DBSubnetGroupMessage {
        return try await self.client.execute(operation: "DescribeDBSubnetGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the default engine and system parameter information for the cluster database engine.
    public func describeEngineDefaultClusterParameters(_ input: DescribeEngineDefaultClusterParametersMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEngineDefaultClusterParametersResult {
        return try await self.client.execute(operation: "DescribeEngineDefaultClusterParameters", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Displays a list of categories for all event source types, or, if specified, for a specified source type.
    public func describeEventCategories(_ input: DescribeEventCategoriesMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EventCategoriesMessage {
        return try await self.client.execute(operation: "DescribeEventCategories", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the subscription descriptions for a customer account. The description for a subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID, CreationTime, and Status. If you specify a SubscriptionName, lists the description for that subscription.
    public func describeEventSubscriptions(_ input: DescribeEventSubscriptionsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EventSubscriptionsMessage {
        return try await self.client.execute(operation: "DescribeEventSubscriptions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns events related to instances, security groups, snapshots, and DB parameter groups for the past 14 days. You can obtain events specific to a particular DB instance, security group, snapshot, or parameter group by providing the name as a parameter. By default, the events of the past hour are returned.
    public func describeEvents(_ input: DescribeEventsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EventsMessage {
        return try await self.client.execute(operation: "DescribeEvents", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about Amazon DocumentDB global  clusters. This API supports pagination.  This action only applies to Amazon DocumentDB clusters.
    public func describeGlobalClusters(_ input: DescribeGlobalClustersMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GlobalClustersMessage {
        return try await self.client.execute(operation: "DescribeGlobalClusters", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of orderable instance options for the specified engine.
    public func describeOrderableDBInstanceOptions(_ input: DescribeOrderableDBInstanceOptionsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OrderableDBInstanceOptionsMessage {
        return try await self.client.execute(operation: "DescribeOrderableDBInstanceOptions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of resources (for example, instances) that have at least one pending maintenance action.
    public func describePendingMaintenanceActions(_ input: DescribePendingMaintenanceActionsMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PendingMaintenanceActionsMessage {
        return try await self.client.execute(operation: "DescribePendingMaintenanceActions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Forces a failover for a cluster. A failover for a cluster promotes one of the Amazon DocumentDB replicas (read-only instances) in the cluster to be the primary instance (the cluster writer). If the primary instance fails, Amazon DocumentDB automatically fails over to an Amazon DocumentDB replica, if one exists. You can force a failover when you want to simulate a failure of a primary instance for testing.
    public func failoverDBCluster(_ input: FailoverDBClusterMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FailoverDBClusterResult {
        return try await self.client.execute(operation: "FailoverDBCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all tags on an Amazon DocumentDB resource.
    public func listTagsForResource(_ input: ListTagsForResourceMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagListMessage {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies a setting for an Amazon DocumentDB cluster. You can change one or more database configuration parameters by specifying these parameters and the new values in the request.
    public func modifyDBCluster(_ input: ModifyDBClusterMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBClusterResult {
        return try await self.client.execute(operation: "ModifyDBCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Modifies the parameters of a cluster parameter group. To modify more than one parameter, submit a list of the following: ParameterName, ParameterValue, and ApplyMethod. A maximum of 20 parameters can be modified in a single request.   Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot or maintenance window  before the change can take effect.   After you create a cluster parameter group, you should wait at least 5 minutes before creating your first cluster that uses that cluster parameter group as the default parameter group. This allows Amazon DocumentDB to fully complete the create action before the parameter group is used as the default for a new cluster. This step is especially important for parameters that are critical when creating the default database for a cluster, such as the character set for the default database defined by the character_set_database parameter.
    public func modifyDBClusterParameterGroup(_ input: ModifyDBClusterParameterGroupMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DBClusterParameterGroupNameMessage {
        return try await self.client.execute(operation: "ModifyDBClusterParameterGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds an attribute and values to, or removes an attribute and values from, a manual cluster snapshot. To share a manual cluster snapshot with other Amazon Web Services accounts, specify restore as the AttributeName, and use the ValuesToAdd parameter to add a list of IDs of the Amazon Web Services accounts that are authorized to restore the manual cluster snapshot. Use the value all to make the manual cluster snapshot public, which means that it can be copied or restored by all Amazon Web Services accounts. Do not add the all value for any manual cluster snapshots that contain private information that you don't want available to all Amazon Web Services accounts. If a manual cluster snapshot is encrypted, it can be shared, but only by specifying a list of authorized Amazon Web Services account IDs for the ValuesToAdd parameter. You can't use all as a value for that parameter in this case.
    public func modifyDBClusterSnapshotAttribute(_ input: ModifyDBClusterSnapshotAttributeMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBClusterSnapshotAttributeResult {
        return try await self.client.execute(operation: "ModifyDBClusterSnapshotAttribute", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies settings for an instance. You can change one or more database configuration parameters by specifying these parameters and the new values in the request.
    public func modifyDBInstance(_ input: ModifyDBInstanceMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceResult {
        return try await self.client.execute(operation: "ModifyDBInstance", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies an existing subnet group. subnet groups must contain at least one subnet in at least two Availability Zones in the Amazon Web Services Region.
    public func modifyDBSubnetGroup(_ input: ModifyDBSubnetGroupMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBSubnetGroupResult {
        return try await self.client.execute(operation: "ModifyDBSubnetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies an existing Amazon DocumentDB event notification subscription.
    public func modifyEventSubscription(_ input: ModifyEventSubscriptionMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEventSubscriptionResult {
        return try await self.client.execute(operation: "ModifyEventSubscription", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modify a setting for an Amazon DocumentDB global cluster. You can change one or more configuration parameters (for example: deletion protection), or the global cluster identifier by specifying these parameters and the new values in the request.  This action only applies to Amazon DocumentDB clusters.
    public func modifyGlobalCluster(_ input: ModifyGlobalClusterMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGlobalClusterResult {
        return try await self.client.execute(operation: "ModifyGlobalCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// You might need to reboot your instance, usually for maintenance reasons. For example, if you make certain changes, or if you change the cluster parameter group that is associated with the instance, you must reboot the instance for the changes to take effect.  Rebooting an instance restarts the database engine service. Rebooting an instance results in a momentary outage, during which the instance status is set to rebooting.
    public func rebootDBInstance(_ input: RebootDBInstanceMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RebootDBInstanceResult {
        return try await self.client.execute(operation: "RebootDBInstance", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Detaches an Amazon DocumentDB secondary cluster from a global cluster. The cluster becomes a standalone cluster with read-write capability instead of being read-only and receiving data from a primary in a different region.   This action only applies to Amazon DocumentDB clusters.
    public func removeFromGlobalCluster(_ input: RemoveFromGlobalClusterMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveFromGlobalClusterResult {
        return try await self.client.execute(operation: "RemoveFromGlobalCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a source identifier from an existing Amazon DocumentDB event notification subscription.
    public func removeSourceIdentifierFromSubscription(_ input: RemoveSourceIdentifierFromSubscriptionMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveSourceIdentifierFromSubscriptionResult {
        return try await self.client.execute(operation: "RemoveSourceIdentifierFromSubscription", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes metadata tags from an Amazon DocumentDB resource.
    public func removeTagsFromResource(_ input: RemoveTagsFromResourceMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "RemoveTagsFromResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Modifies the parameters of a cluster parameter group to the default value. To reset specific parameters, submit a list of the following: ParameterName and ApplyMethod. To reset the entire cluster parameter group, specify the DBClusterParameterGroupName and ResetAllParameters parameters.  When you reset the entire group, dynamic parameters are updated immediately and static parameters are set to pending-reboot to take effect on the next DB instance reboot.
    public func resetDBClusterParameterGroup(_ input: ResetDBClusterParameterGroupMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DBClusterParameterGroupNameMessage {
        return try await self.client.execute(operation: "ResetDBClusterParameterGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new cluster from a snapshot or cluster snapshot. If a snapshot is specified, the target cluster is created from the source DB snapshot with a default configuration and default security group. If a cluster snapshot is specified, the target cluster is created from the source cluster restore point with the same configuration as the original source DB cluster, except that the new cluster is created with the default security group.
    public func restoreDBClusterFromSnapshot(_ input: RestoreDBClusterFromSnapshotMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestoreDBClusterFromSnapshotResult {
        return try await self.client.execute(operation: "RestoreDBClusterFromSnapshot", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Restores a cluster to an arbitrary point in time. Users can restore to any point in time before LatestRestorableTime for up to BackupRetentionPeriod days. The target cluster is created from the source cluster with the same configuration as the original cluster, except that the new cluster is created with the default security group.
    public func restoreDBClusterToPointInTime(_ input: RestoreDBClusterToPointInTimeMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestoreDBClusterToPointInTimeResult {
        return try await self.client.execute(operation: "RestoreDBClusterToPointInTime", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Restarts the stopped cluster that is specified by DBClusterIdentifier. For more information, see Stopping and Starting an Amazon DocumentDB Cluster.
    public func startDBCluster(_ input: StartDBClusterMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartDBClusterResult {
        return try await self.client.execute(operation: "StartDBCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops the running cluster that is specified by DBClusterIdentifier. The cluster must be in the available state. For more information, see Stopping and Starting an Amazon DocumentDB Cluster.
    public func stopDBCluster(_ input: StopDBClusterMessage, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopDBClusterResult {
        return try await self.client.execute(operation: "StopDBCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
