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

/// Service object for interacting with AWS Tnb service.
///
///  Amazon Web Services Telco Network Builder (TNB) is a network automation service that helps you deploy and manage telecom networks. AWS TNB helps you with the lifecycle management of your telecommunication network functions throughout planning, deployment, and post-deployment activities.
public struct Tnb: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Tnb client
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
            serviceName: "Tnb",
            serviceIdentifier: "tnb",
            serviceProtocol: .restjson,
            apiVersion: "2008-10-21",
            endpoint: endpoint,
            errorType: TnbErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Cancels a network operation. A network operation is any operation that is done to your network, such as network instance instantiation or termination.
    @Sendable
    public func cancelSolNetworkOperation(_ input: CancelSolNetworkOperationInput, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "CancelSolNetworkOperation", 
            path: "/sol/nslcm/v1/ns_lcm_op_occs/{nsLcmOpOccId}/cancel", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a function package. A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network. For more information, see Function packages in the Amazon Web Services Telco Network Builder User Guide.   Creating a function package is the first step for creating a network in AWS TNB. This request creates an empty container with an ID. The next step is to upload the actual CSAR zip file into that empty container. To upload function package content, see PutSolFunctionPackageContent.
    @Sendable
    public func createSolFunctionPackage(_ input: CreateSolFunctionPackageInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateSolFunctionPackageOutput {
        return try await self.client.execute(
            operation: "CreateSolFunctionPackage", 
            path: "/sol/vnfpkgm/v1/vnf_packages", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a network instance. A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed. Creating a network instance is the third step after creating a network package. For more information about network instances, Network instances in the Amazon Web Services Telco Network Builder User Guide. Once you create a network instance, you can instantiate it. To instantiate a network, see InstantiateSolNetworkInstance.
    @Sendable
    public func createSolNetworkInstance(_ input: CreateSolNetworkInstanceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateSolNetworkInstanceOutput {
        return try await self.client.execute(
            operation: "CreateSolNetworkInstance", 
            path: "/sol/nslcm/v1/ns_instances", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a network package. A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on. For more information, see Network instances in the Amazon Web Services Telco Network Builder User Guide.   A network package consists of a network service descriptor (NSD) file (required) and any additional files (optional), such as scripts specific to your needs. For example, if you have multiple function packages in your network package, you can use the NSD to define which network functions should run in certain VPCs, subnets, or EKS clusters. This request creates an empty network package container with an ID. Once you create a network package, you can upload the network package content using PutSolNetworkPackageContent.
    @Sendable
    public func createSolNetworkPackage(_ input: CreateSolNetworkPackageInput, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateSolNetworkPackageOutput {
        return try await self.client.execute(
            operation: "CreateSolNetworkPackage", 
            path: "/sol/nsd/v1/ns_descriptors", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a function package. A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network. To delete a function package, the package must be in a disabled state. To disable a function package, see UpdateSolFunctionPackage.
    @Sendable
    public func deleteSolFunctionPackage(_ input: DeleteSolFunctionPackageInput, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteSolFunctionPackage", 
            path: "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a network instance. A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed. To delete a network instance, the instance must be in a stopped or terminated state. To terminate a network instance, see TerminateSolNetworkInstance.
    @Sendable
    public func deleteSolNetworkInstance(_ input: DeleteSolNetworkInstanceInput, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteSolNetworkInstance", 
            path: "/sol/nslcm/v1/ns_instances/{nsInstanceId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes network package. A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on. To delete a network package, the package must be in a disable state. To disable a network package, see UpdateSolNetworkPackage.
    @Sendable
    public func deleteSolNetworkPackage(_ input: DeleteSolNetworkPackageInput, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(
            operation: "DeleteSolNetworkPackage", 
            path: "/sol/nsd/v1/ns_descriptors/{nsdInfoId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the details of a network function instance, including the instantation state and metadata from the function package descriptor in the network function package. A network function instance is a function in a function package .
    @Sendable
    public func getSolFunctionInstance(_ input: GetSolFunctionInstanceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSolFunctionInstanceOutput {
        return try await self.client.execute(
            operation: "GetSolFunctionInstance", 
            path: "/sol/vnflcm/v1/vnf_instances/{vnfInstanceId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the details of an individual function package, such as the operational state and whether the package is in use. A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network..
    @Sendable
    public func getSolFunctionPackage(_ input: GetSolFunctionPackageInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSolFunctionPackageOutput {
        return try await self.client.execute(
            operation: "GetSolFunctionPackage", 
            path: "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the contents of a function package. A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.
    @Sendable
    public func getSolFunctionPackageContent(_ input: GetSolFunctionPackageContentInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSolFunctionPackageContentOutput {
        return try await self.client.execute(
            operation: "GetSolFunctionPackageContent", 
            path: "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets a function package descriptor in a function package. A function package descriptor is a .yaml file in a function package that uses the TOSCA standard to describe how the network function in the function package should run on your network. A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.
    @Sendable
    public func getSolFunctionPackageDescriptor(_ input: GetSolFunctionPackageDescriptorInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSolFunctionPackageDescriptorOutput {
        return try await self.client.execute(
            operation: "GetSolFunctionPackageDescriptor", 
            path: "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/vnfd", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the details of the network instance. A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed.
    @Sendable
    public func getSolNetworkInstance(_ input: GetSolNetworkInstanceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSolNetworkInstanceOutput {
        return try await self.client.execute(
            operation: "GetSolNetworkInstance", 
            path: "/sol/nslcm/v1/ns_instances/{nsInstanceId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the details of a network operation, including the tasks involved in the network operation and the status of the tasks. A network operation is any operation that is done to your network, such as network instance instantiation or termination.
    @Sendable
    public func getSolNetworkOperation(_ input: GetSolNetworkOperationInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSolNetworkOperationOutput {
        return try await self.client.execute(
            operation: "GetSolNetworkOperation", 
            path: "/sol/nslcm/v1/ns_lcm_op_occs/{nsLcmOpOccId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the details of a network package. A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.
    @Sendable
    public func getSolNetworkPackage(_ input: GetSolNetworkPackageInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSolNetworkPackageOutput {
        return try await self.client.execute(
            operation: "GetSolNetworkPackage", 
            path: "/sol/nsd/v1/ns_descriptors/{nsdInfoId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the contents of a network package. A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.
    @Sendable
    public func getSolNetworkPackageContent(_ input: GetSolNetworkPackageContentInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSolNetworkPackageContentOutput {
        return try await self.client.execute(
            operation: "GetSolNetworkPackageContent", 
            path: "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd_content", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the content of the network service descriptor. A network service descriptor is a .yaml file in a network package that uses the TOSCA standard to describe the network functions you want to deploy and the Amazon Web Services infrastructure you want to deploy the network functions on.
    @Sendable
    public func getSolNetworkPackageDescriptor(_ input: GetSolNetworkPackageDescriptorInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSolNetworkPackageDescriptorOutput {
        return try await self.client.execute(
            operation: "GetSolNetworkPackageDescriptor", 
            path: "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Instantiates a network instance. A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed. Before you can instantiate a network instance, you have to create a network instance. For more information, see CreateSolNetworkInstance.
    @Sendable
    public func instantiateSolNetworkInstance(_ input: InstantiateSolNetworkInstanceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> InstantiateSolNetworkInstanceOutput {
        return try await self.client.execute(
            operation: "InstantiateSolNetworkInstance", 
            path: "/sol/nslcm/v1/ns_instances/{nsInstanceId}/instantiate", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists network function instances. A network function instance is a function in a function package .
    @Sendable
    public func listSolFunctionInstances(_ input: ListSolFunctionInstancesInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSolFunctionInstancesOutput {
        return try await self.client.execute(
            operation: "ListSolFunctionInstances", 
            path: "/sol/vnflcm/v1/vnf_instances", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists information about function packages. A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.
    @Sendable
    public func listSolFunctionPackages(_ input: ListSolFunctionPackagesInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSolFunctionPackagesOutput {
        return try await self.client.execute(
            operation: "ListSolFunctionPackages", 
            path: "/sol/vnfpkgm/v1/vnf_packages", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists your network instances. A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed.
    @Sendable
    public func listSolNetworkInstances(_ input: ListSolNetworkInstancesInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSolNetworkInstancesOutput {
        return try await self.client.execute(
            operation: "ListSolNetworkInstances", 
            path: "/sol/nslcm/v1/ns_instances", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists details for a network operation, including when the operation started and the status of the operation. A network operation is any operation that is done to your network, such as network instance instantiation or termination.
    @Sendable
    public func listSolNetworkOperations(_ input: ListSolNetworkOperationsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSolNetworkOperationsOutput {
        return try await self.client.execute(
            operation: "ListSolNetworkOperations", 
            path: "/sol/nslcm/v1/ns_lcm_op_occs", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists network packages. A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.
    @Sendable
    public func listSolNetworkPackages(_ input: ListSolNetworkPackagesInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSolNetworkPackagesOutput {
        return try await self.client.execute(
            operation: "ListSolNetworkPackages", 
            path: "/sol/nsd/v1/ns_descriptors", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists tags for AWS TNB resources.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceOutput {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Uploads the contents of a function package. A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.
    @Sendable
    public func putSolFunctionPackageContent(_ input: PutSolFunctionPackageContentInput, logger: Logger = AWSClient.loggingDisabled) async throws -> PutSolFunctionPackageContentOutput {
        return try await self.client.execute(
            operation: "PutSolFunctionPackageContent", 
            path: "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Uploads the contents of a network package. A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.
    @Sendable
    public func putSolNetworkPackageContent(_ input: PutSolNetworkPackageContentInput, logger: Logger = AWSClient.loggingDisabled) async throws -> PutSolNetworkPackageContentOutput {
        return try await self.client.execute(
            operation: "PutSolNetworkPackageContent", 
            path: "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd_content", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Tags an AWS TNB resource. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.
    @Sendable
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceOutput {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Terminates a network instance. A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed. You must terminate a network instance before you can delete it.
    @Sendable
    public func terminateSolNetworkInstance(_ input: TerminateSolNetworkInstanceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> TerminateSolNetworkInstanceOutput {
        return try await self.client.execute(
            operation: "TerminateSolNetworkInstance", 
            path: "/sol/nslcm/v1/ns_instances/{nsInstanceId}/terminate", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Untags an AWS TNB resource. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value. You can use tags to search and filter your resources or track your Amazon Web Services costs.
    @Sendable
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceOutput {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the operational state of function package. A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.
    @Sendable
    public func updateSolFunctionPackage(_ input: UpdateSolFunctionPackageInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateSolFunctionPackageOutput {
        return try await self.client.execute(
            operation: "UpdateSolFunctionPackage", 
            path: "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Update a network instance. A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed.
    @Sendable
    public func updateSolNetworkInstance(_ input: UpdateSolNetworkInstanceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateSolNetworkInstanceOutput {
        return try await self.client.execute(
            operation: "UpdateSolNetworkInstance", 
            path: "/sol/nslcm/v1/ns_instances/{nsInstanceId}/update", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates the operational state of a network package. A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on. A network service descriptor is a .yaml file in a network package that uses the TOSCA standard to describe the network functions you want to deploy and the Amazon Web Services infrastructure you want to deploy the network functions on.
    @Sendable
    public func updateSolNetworkPackage(_ input: UpdateSolNetworkPackageInput, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateSolNetworkPackageOutput {
        return try await self.client.execute(
            operation: "UpdateSolNetworkPackage", 
            path: "/sol/nsd/v1/ns_descriptors/{nsdInfoId}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Validates function package content. This can be used as a dry run before uploading function package content with PutSolFunctionPackageContent. A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.
    @Sendable
    public func validateSolFunctionPackageContent(_ input: ValidateSolFunctionPackageContentInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ValidateSolFunctionPackageContentOutput {
        return try await self.client.execute(
            operation: "ValidateSolFunctionPackageContent", 
            path: "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content/validate", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Validates network package content. This can be used as a dry run before uploading network package content with PutSolNetworkPackageContent. A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.
    @Sendable
    public func validateSolNetworkPackageContent(_ input: ValidateSolNetworkPackageContentInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ValidateSolNetworkPackageContentOutput {
        return try await self.client.execute(
            operation: "ValidateSolNetworkPackageContent", 
            path: "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd_content/validate", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension Tnb {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Tnb, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Tnb {
    /// Lists network function instances. A network function instance is a function in a function package .
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSolFunctionInstancesPaginator(
        _ input: ListSolFunctionInstancesInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSolFunctionInstancesInput, ListSolFunctionInstancesOutput> {
        return .init(
            input: input,
            command: self.listSolFunctionInstances,
            inputKey: \ListSolFunctionInstancesInput.nextToken,
            outputKey: \ListSolFunctionInstancesOutput.nextToken,
            logger: logger
        )
    }

    /// Lists information about function packages. A function package is a .zip file in CSAR (Cloud Service Archive) format that contains a network function (an ETSI standard telecommunication application) and function package descriptor that uses the TOSCA standard to describe how the network functions should run on your network.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSolFunctionPackagesPaginator(
        _ input: ListSolFunctionPackagesInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSolFunctionPackagesInput, ListSolFunctionPackagesOutput> {
        return .init(
            input: input,
            command: self.listSolFunctionPackages,
            inputKey: \ListSolFunctionPackagesInput.nextToken,
            outputKey: \ListSolFunctionPackagesOutput.nextToken,
            logger: logger
        )
    }

    /// Lists your network instances. A network instance is a single network created in Amazon Web Services TNB that can be deployed and on which life-cycle operations (like terminate, update, and delete) can be performed.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSolNetworkInstancesPaginator(
        _ input: ListSolNetworkInstancesInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSolNetworkInstancesInput, ListSolNetworkInstancesOutput> {
        return .init(
            input: input,
            command: self.listSolNetworkInstances,
            inputKey: \ListSolNetworkInstancesInput.nextToken,
            outputKey: \ListSolNetworkInstancesOutput.nextToken,
            logger: logger
        )
    }

    /// Lists details for a network operation, including when the operation started and the status of the operation. A network operation is any operation that is done to your network, such as network instance instantiation or termination.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSolNetworkOperationsPaginator(
        _ input: ListSolNetworkOperationsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSolNetworkOperationsInput, ListSolNetworkOperationsOutput> {
        return .init(
            input: input,
            command: self.listSolNetworkOperations,
            inputKey: \ListSolNetworkOperationsInput.nextToken,
            outputKey: \ListSolNetworkOperationsOutput.nextToken,
            logger: logger
        )
    }

    /// Lists network packages. A network package is a .zip file in CSAR (Cloud Service Archive) format defines the function packages you want to deploy and the Amazon Web Services infrastructure you want to deploy them on.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSolNetworkPackagesPaginator(
        _ input: ListSolNetworkPackagesInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSolNetworkPackagesInput, ListSolNetworkPackagesOutput> {
        return .init(
            input: input,
            command: self.listSolNetworkPackages,
            inputKey: \ListSolNetworkPackagesInput.nextToken,
            outputKey: \ListSolNetworkPackagesOutput.nextToken,
            logger: logger
        )
    }
}

extension Tnb.ListSolFunctionInstancesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Tnb.ListSolFunctionInstancesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Tnb.ListSolFunctionPackagesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Tnb.ListSolFunctionPackagesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Tnb.ListSolNetworkInstancesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Tnb.ListSolNetworkInstancesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Tnb.ListSolNetworkOperationsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Tnb.ListSolNetworkOperationsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Tnb.ListSolNetworkPackagesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Tnb.ListSolNetworkPackagesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
