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
extension ServiceDiscovery {
    // MARK: Async API Calls

    /// Creates an HTTP namespace. Service instances registered using an HTTP namespace can be discovered using a DiscoverInstances request but can't be discovered using DNS. For the current quota on the number of namespaces that you can create using the same account, see Cloud Map quotas in the Cloud Map Developer Guide.
    public func createHttpNamespace(_ input: CreateHttpNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHttpNamespaceResponse {
        return try await self.client.execute(operation: "CreateHttpNamespace", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a private namespace based on DNS, which is visible only inside a specified Amazon VPC. The namespace defines your service naming scheme. For example, if you name your namespace example.com and name your service backend, the resulting DNS name for the service is backend.example.com. Service instances that are registered using a private DNS namespace can be discovered using either a DiscoverInstances request or using DNS. For the current quota on the number of namespaces that you can create using the same account, see Cloud Map quotas in the Cloud Map Developer Guide.
    public func createPrivateDnsNamespace(_ input: CreatePrivateDnsNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrivateDnsNamespaceResponse {
        return try await self.client.execute(operation: "CreatePrivateDnsNamespace", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a public namespace based on DNS, which is visible on the internet. The namespace defines your service naming scheme. For example, if you name your namespace example.com and name your service backend, the resulting DNS name for the service is backend.example.com. You can discover instances that were registered with a public DNS namespace by using either a DiscoverInstances request or using DNS. For the current quota on the number of namespaces that you can create using the same account, see Cloud Map quotas in the Cloud Map Developer Guide.
    public func createPublicDnsNamespace(_ input: CreatePublicDnsNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePublicDnsNamespaceResponse {
        return try await self.client.execute(operation: "CreatePublicDnsNamespace", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a service. This action defines the configuration for the following entities:   For public and private DNS namespaces, one of the following combinations of DNS records in Amazon Route 53:    A     AAAA     A and AAAA     SRV     CNAME      Optionally, a health check   After you create the service, you can submit a RegisterInstance request, and Cloud Map uses the values in the configuration to create the specified entities. For the current quota on the number of instances that you can register using the same namespace and using the same service, see Cloud Map quotas in the Cloud Map Developer Guide.
    public func createService(_ input: CreateServiceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateServiceResponse {
        return try await self.client.execute(operation: "CreateService", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a namespace from the current account. If the namespace still contains one or more services, the request fails.
    public func deleteNamespace(_ input: DeleteNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNamespaceResponse {
        return try await self.client.execute(operation: "DeleteNamespace", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a specified service. If the service still contains one or more registered instances, the request fails.
    public func deleteService(_ input: DeleteServiceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteServiceResponse {
        return try await self.client.execute(operation: "DeleteService", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the Amazon Route 53 DNS records and health check, if any, that Cloud Map created for the specified instance.
    public func deregisterInstance(_ input: DeregisterInstanceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeregisterInstanceResponse {
        return try await self.client.execute(operation: "DeregisterInstance", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Discovers registered instances for a specified namespace and service. You can use DiscoverInstances to discover instances for any type of namespace. For public and private DNS namespaces, you can also use DNS queries to discover instances.
    public func discoverInstances(_ input: DiscoverInstancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DiscoverInstancesResponse {
        return try await self.client.execute(operation: "DiscoverInstances", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "data-", logger: logger, on: eventLoop)
    }

    /// Gets information about a specified instance.
    public func getInstance(_ input: GetInstanceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetInstanceResponse {
        return try await self.client.execute(operation: "GetInstance", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the current health status (Healthy, Unhealthy, or Unknown) of one or more instances that are associated with a specified service.  There's a brief delay between when you register an instance and when the health status for the instance is available.
    public func getInstancesHealthStatus(_ input: GetInstancesHealthStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetInstancesHealthStatusResponse {
        return try await self.client.execute(operation: "GetInstancesHealthStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a namespace.
    public func getNamespace(_ input: GetNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetNamespaceResponse {
        return try await self.client.execute(operation: "GetNamespace", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about any operation that returns an operation ID in the response, such as a CreateService request.  To get a list of operations that match specified criteria, see ListOperations.
    public func getOperation(_ input: GetOperationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetOperationResponse {
        return try await self.client.execute(operation: "GetOperation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the settings for a specified service.
    public func getService(_ input: GetServiceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetServiceResponse {
        return try await self.client.execute(operation: "GetService", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists summary information about the instances that you registered by using a specified service.
    public func listInstances(_ input: ListInstancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInstancesResponse {
        return try await self.client.execute(operation: "ListInstances", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists summary information about the namespaces that were created by the current account.
    public func listNamespaces(_ input: ListNamespacesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListNamespacesResponse {
        return try await self.client.execute(operation: "ListNamespaces", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists operations that match the criteria that you specify.
    public func listOperations(_ input: ListOperationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOperationsResponse {
        return try await self.client.execute(operation: "ListOperations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists summary information for all the services that are associated with one or more specified namespaces.
    public func listServices(_ input: ListServicesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListServicesResponse {
        return try await self.client.execute(operation: "ListServices", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or updates one or more records and, optionally, creates a health check based on the settings in a specified service. When you submit a RegisterInstance request, the following occurs:   For each DNS record that you define in the service that's specified by ServiceId, a record is created or updated in the hosted zone that's associated with the corresponding namespace.   If the service includes HealthCheckConfig, a health check is created based on the settings in the health check configuration.   The health check, if any, is associated with each of the new or updated records.    One RegisterInstance request must complete before you can submit another request and specify the same service ID and instance ID.  For more information, see CreateService. When Cloud Map receives a DNS query for the specified DNS name, it returns the applicable value:    If the health check is healthy: returns all the records    If the health check is unhealthy: returns the applicable value for the last healthy instance    If you didn't specify a health check configuration: returns all the records   For the current quota on the number of instances that you can register using the same namespace and using the same service, see Cloud Map quotas in the Cloud Map Developer Guide.
    public func registerInstance(_ input: RegisterInstanceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterInstanceResponse {
        return try await self.client.execute(operation: "RegisterInstance", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds one or more tags to the specified resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an HTTP namespace.
    public func updateHttpNamespace(_ input: UpdateHttpNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateHttpNamespaceResponse {
        return try await self.client.execute(operation: "UpdateHttpNamespace", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Submits a request to change the health status of a custom health check to healthy or unhealthy. You can use UpdateInstanceCustomHealthStatus to change the status only for custom health checks, which you define using HealthCheckCustomConfig when you create a service. You can't use it to change the status for Route 53 health checks, which you define using HealthCheckConfig. For more information, see HealthCheckCustomConfig.
    public func updateInstanceCustomHealthStatus(_ input: UpdateInstanceCustomHealthStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateInstanceCustomHealthStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a private DNS namespace.
    public func updatePrivateDnsNamespace(_ input: UpdatePrivateDnsNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePrivateDnsNamespaceResponse {
        return try await self.client.execute(operation: "UpdatePrivateDnsNamespace", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a public DNS namespace.
    public func updatePublicDnsNamespace(_ input: UpdatePublicDnsNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePublicDnsNamespaceResponse {
        return try await self.client.execute(operation: "UpdatePublicDnsNamespace", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Submits a request to perform the following operations:   Update the TTL setting for existing DnsRecords configurations   Add, update, or delete HealthCheckConfig for a specified service  You can't add, update, or delete a HealthCheckCustomConfig configuration.    For public and private DNS namespaces, note the following:   If you omit any existing DnsRecords or HealthCheckConfig configurations from an UpdateService request, the configurations are deleted from the service.   If you omit an existing HealthCheckCustomConfig configuration from an UpdateService request, the configuration isn't deleted from the service.   When you update settings for a service, Cloud Map also updates the corresponding settings in all the records and health checks that were created by using the specified service.
    public func updateService(_ input: UpdateServiceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateServiceResponse {
        return try await self.client.execute(operation: "UpdateService", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5)
